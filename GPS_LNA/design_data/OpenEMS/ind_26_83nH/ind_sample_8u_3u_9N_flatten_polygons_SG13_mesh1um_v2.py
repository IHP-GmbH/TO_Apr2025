# Copyright 2023 IHP PDK Authors
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    https://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import os
from pylab import *

from CSXCAD  import ContinuousStructure
from openEMS import openEMS
from openEMS.physical_constants import *

# preview model/mesh only?
# postprocess existing data without re-running simulation?
preview_only = False
postprocess_only = False

# get *.py model path and put simulation files in data directory below
model_path = os.path.normcase(os.path.dirname(__file__))
model_basename = os.path.basename(__file__).replace('.py','')
common_data_path = os.path.join(model_path, 'data')
sim_path = os.path.join(common_data_path,  model_basename)

print('Model path:', model_path)
print('Model basename:', model_basename)
print('Simulation data path:', sim_path, '\n')

# create data directory if it does not exist
if not os.path.exists(sim_path):
    os.makedirs(sim_path)

# change to data directory
os.chdir(sim_path)

############ simulation settings ############
 
unit = 1e-6 # specify everything in um

refined_cellsize = 1  # mesh resolution in area with polygons from GDSII

fstart = 1e9
fstop  = 3e9
targetfreq = 1.3e9
numfreq = 401  # number of frequency points (has no effect on simulation time!)

energy_limit = -50    # end criteria for residual energy
Boundaries   = ['PEC', 'PEC', 'PEC', 'PEC', 'PEC', 'PEC']  # xmin xmax ymin ymax zmin zmax

eps_max = 11.9 # maximum permittivity in model, used for calculating max cellsize

lim = exp(energy_limit/10 * log(10))
FDTD = openEMS(EndCriteria=lim)
FDTD.SetGaussExcite( (fstart+fstop)/2, (fstop-fstart)/2 )
FDTD.SetBoundaryCond( Boundaries )

wavelength_air = (3e8/unit)/fstop
max_cellsize = wavelength_air/(sqrt(eps_max)*20) # max cellsize is lambda/20 in medium
 

############ Geometry setup ############
CSX = ContinuousStructure()
FDTD.SetCSX(CSX)
mesh = CSX.GetGrid()
mesh.SetDeltaUnit(unit)


# silicon substrate
Sub = CSX.AddMaterial('Sub', epsilon=11.9, kappa=2)
Sub_thick = 280
Sub_zmin = 0
Sub_zmax = Sub_zmin + Sub_thick

# EPI
EPI = CSX.AddMaterial('EPI', epsilon=11.9, kappa=5)
EPI_thick = 3.75
EPI_zmin = Sub_zmax
EPI_zmax = EPI_zmin + EPI_thick

# SiO2
SiO2 = CSX.AddMaterial('SiO2', epsilon=4.1)
SiO2_thick = 17.73
SiO2_zmin = EPI_zmax
SiO2_zmax = SiO2_zmin + SiO2_thick

# Passivation
# this stackup version does NOT include passivation, it has little effect and slows down simulation
# because it enforces a small timestep (thin and high epsilon)

# Air above is background material, no need to place box, just add mesh line
Air_thick = 300
Air_zmin = SiO2_zmax;
Air_zmax = SiO2_zmax + Air_thick

# Boxes for substrate, oxide etc that are not part of GDSII layout
# must be created in main model file
# That bounding box is NOT known upfront when materials are defined!


# TopMetal2
TopMetal2_sigma = 3.0300E7
TopMetal2_thick = 3
TopMetal2_zmin  = SiO2_zmin + 11.23
TopMetal2_zmax  = TopMetal2_zmin + TopMetal2_thick
TopMetal2 = CSX.AddMaterial('TopMetal2', kappa=TopMetal2_sigma)

# TopMetal1
TopMetal1_sigma = 2.7800E7
TopMetal1_thick = 2
TopMetal1_zmin  = SiO2_zmin + 6.43
TopMetal1_zmax  = TopMetal1_zmin + TopMetal1_thick
TopMetal1 = CSX.AddMaterial('TopMetal1', kappa=TopMetal1_sigma)

# Metal5
Metal5_sigma = 2.3190E7
Metal5_thick = 0.49
Metal5_zmin  = SiO2_zmin + 5.09
Metal5_zmax  = Metal5_zmin + Metal5_thick
Metal5 = CSX.AddMaterial('Metal5', kappa=Metal5_sigma)

# Metal4
Metal4_sigma = 2.3190E7
Metal4_thick = 0.49
Metal4_zmin  = SiO2_zmin + 4.06
Metal4_zmax  = Metal4_zmin + Metal4_thick
Metal4 = CSX.AddMaterial('Metal4', kappa=Metal4_sigma)

# Metal3
Metal3_sigma = 2.3190E7
Metal3_thick = 0.49
Metal3_zmin  = SiO2_zmin + 3.03
Metal3_zmax  = Metal3_zmin + Metal3_thick
Metal3 = CSX.AddMaterial('Metal3', kappa=Metal3_sigma)

# Metal2
Metal2_sigma = 2.3190E7
Metal2_thick = 0.49
Metal2_zmin  = SiO2_zmin + 2.0
Metal2_zmax  = Metal2_zmin + Metal2_thick
Metal2 = CSX.AddMaterial('Metal2', kappa=Metal2_sigma)

# Metal1
Metal1_sigma = 2.1640E7
Metal1_thick = 0.42
Metal1_zmin  = SiO2_zmin + 1.04
Metal1_zmax  = Metal1_zmin + Metal1_thick
Metal1 = CSX.AddMaterial('Metal1', kappa=Metal1_sigma)

# TopVia2
TopVia2_sigma = 3.1430E6
TopVia2_zmin  = TopMetal1_zmax
TopVia2_zmax  = TopMetal2_zmin
TopVia2_thick = TopVia2_zmax-TopVia2_zmin
TopVia2 = CSX.AddMaterial('TopVia2', kappa=TopVia2_sigma)

# TopVia1
TopVia1_sigma = 2.1910E6
TopVia1_zmin  = Metal5_zmax
TopVia1_zmax  = TopMetal1_zmin
TopVia1_thick = TopVia1_zmax-TopVia1_zmin
TopVia1 = CSX.AddMaterial('TopVia1', kappa=TopVia1_sigma)

# Via4
Via4_sigma = 1.6600E6
Via4_zmin  = Metal4_zmax
Via4_zmax  = Metal5_zmin
Via4_thick = Via4_zmax-Via4_zmin
Via4 = CSX.AddMaterial('Via4', kappa=Via4_sigma)

# Via3
Via3_sigma = 1.6600E6
Via3_zmin  = Metal3_zmax
Via3_zmax  = Metal4_zmin
Via3_thick = Via3_zmax-Via3_zmin
Via3 = CSX.AddMaterial('Via3', kappa=Via3_sigma)

# Via2
Via2_sigma = 1.6600E6
Via2_zmin  = Metal2_zmax
Via2_zmax  = Metal3_zmin
Via2_thick = Via2_zmax-Via2_zmin
Via2 = CSX.AddMaterial('Via2', kappa=Via2_sigma)

# Via1
Via1_sigma = 1.6600E6
Via1_zmin  = Metal1_zmax
Via1_zmax  = Metal2_zmin
Via1_thick = Via1_zmax-Via1_zmin
Via1 = CSX.AddMaterial('Via1', kappa=Via1_sigma)

# Cont
Cont_sigma = 2.3900E6
Cont_zmin  = EPI_zmax
Cont_zmax  = Metal1_zmin
Cont_thick = Cont_zmax-Cont_zmin
Cont = CSX.AddMaterial('Cont', kappa=Cont_sigma)



############# begin layout geometries ###########
# Cell ("TOP", 323 polygons, 2 paths, 5 labels, 0 references)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 3.865]
pts_y = r_[pts_y, 258.270]
pts_x = r_[pts_x, -7.155]
pts_y = r_[pts_y, 269.290]
pts_x = r_[pts_x, -16.415]
pts_y = r_[pts_y, 269.290]
pts_x = r_[pts_x, -16.415]
pts_y = r_[pts_y, 277.290]
pts_x = r_[pts_x, -3.865]
pts_y = r_[pts_y, 277.290]
pts_x = r_[pts_x, 7.155]
pts_y = r_[pts_y, 266.270]
pts_x = r_[pts_x, 16.415]
pts_y = r_[pts_y, 266.270]
pts_x = r_[pts_x, 16.415]
pts_y = r_[pts_y, 258.270]
pts = np.array([pts_x, pts_y])
TopMetal1.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal1_zmin, length=TopMetal1_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 3.865]
pts_y = r_[pts_y, 280.310]
pts_x = r_[pts_x, -7.155]
pts_y = r_[pts_y, 291.330]
pts_x = r_[pts_x, -16.415]
pts_y = r_[pts_y, 291.330]
pts_x = r_[pts_x, -16.415]
pts_y = r_[pts_y, 299.330]
pts_x = r_[pts_x, -3.865]
pts_y = r_[pts_y, 299.330]
pts_x = r_[pts_x, 7.155]
pts_y = r_[pts_y, 288.310]
pts_x = r_[pts_x, 16.415]
pts_y = r_[pts_y, 288.310]
pts_x = r_[pts_x, 16.415]
pts_y = r_[pts_y, 280.310]
pts = np.array([pts_x, pts_y])
TopMetal1.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal1_zmin, length=TopMetal1_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -16.415]
pts_y = r_[pts_y, 96.000]
pts_x = r_[pts_x, -16.415]
pts_y = r_[pts_y, 104.000]
pts_x = r_[pts_x, -7.165]
pts_y = r_[pts_y, 104.000]
pts_x = r_[pts_x, 3.835]
pts_y = r_[pts_y, 115.000]
pts_x = r_[pts_x, 16.425]
pts_y = r_[pts_y, 115.000]
pts_x = r_[pts_x, 16.425]
pts_y = r_[pts_y, 107.000]
pts_x = r_[pts_x, 7.155]
pts_y = r_[pts_y, 107.000]
pts_x = r_[pts_x, -3.845]
pts_y = r_[pts_y, 96.000]
pts = np.array([pts_x, pts_y])
TopMetal1.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal1_zmin, length=TopMetal1_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 3.865]
pts_y = r_[pts_y, 302.350]
pts_x = r_[pts_x, -7.155]
pts_y = r_[pts_y, 313.370]
pts_x = r_[pts_x, -16.415]
pts_y = r_[pts_y, 313.370]
pts_x = r_[pts_x, -16.415]
pts_y = r_[pts_y, 321.370]
pts_x = r_[pts_x, -3.865]
pts_y = r_[pts_y, 321.370]
pts_x = r_[pts_x, 7.155]
pts_y = r_[pts_y, 310.350]
pts_x = r_[pts_x, 16.415]
pts_y = r_[pts_y, 310.350]
pts_x = r_[pts_x, 16.415]
pts_y = r_[pts_y, 302.350]
pts = np.array([pts_x, pts_y])
TopMetal1.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal1_zmin, length=TopMetal1_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -16.415]
pts_y = r_[pts_y, 74.000]
pts_x = r_[pts_x, -16.415]
pts_y = r_[pts_y, 82.000]
pts_x = r_[pts_x, -7.165]
pts_y = r_[pts_y, 82.000]
pts_x = r_[pts_x, 3.835]
pts_y = r_[pts_y, 93.000]
pts_x = r_[pts_x, 16.425]
pts_y = r_[pts_y, 93.000]
pts_x = r_[pts_x, 16.425]
pts_y = r_[pts_y, 85.000]
pts_x = r_[pts_x, 7.155]
pts_y = r_[pts_y, 85.000]
pts_x = r_[pts_x, -3.845]
pts_y = r_[pts_y, 74.000]
pts = np.array([pts_x, pts_y])
TopMetal1.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal1_zmin, length=TopMetal1_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 3.865]
pts_y = r_[pts_y, 324.390]
pts_x = r_[pts_x, -7.155]
pts_y = r_[pts_y, 335.410]
pts_x = r_[pts_x, -16.415]
pts_y = r_[pts_y, 335.410]
pts_x = r_[pts_x, -16.415]
pts_y = r_[pts_y, 343.410]
pts_x = r_[pts_x, -3.865]
pts_y = r_[pts_y, 343.410]
pts_x = r_[pts_x, 7.155]
pts_y = r_[pts_y, 332.390]
pts_x = r_[pts_x, 16.415]
pts_y = r_[pts_y, 332.390]
pts_x = r_[pts_x, 16.415]
pts_y = r_[pts_y, 324.390]
pts = np.array([pts_x, pts_y])
TopMetal1.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal1_zmin, length=TopMetal1_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -16.415]
pts_y = r_[pts_y, 52.000]
pts_x = r_[pts_x, -16.415]
pts_y = r_[pts_y, 60.000]
pts_x = r_[pts_x, -7.165]
pts_y = r_[pts_y, 60.000]
pts_x = r_[pts_x, 3.835]
pts_y = r_[pts_y, 71.000]
pts_x = r_[pts_x, 16.425]
pts_y = r_[pts_y, 71.000]
pts_x = r_[pts_x, 16.425]
pts_y = r_[pts_y, 63.000]
pts_x = r_[pts_x, 7.155]
pts_y = r_[pts_y, 63.000]
pts_x = r_[pts_x, -3.845]
pts_y = r_[pts_y, 52.000]
pts = np.array([pts_x, pts_y])
TopMetal1.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal1_zmin, length=TopMetal1_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -16.415]
pts_y = r_[pts_y, 30.000]
pts_x = r_[pts_x, -16.415]
pts_y = r_[pts_y, 38.000]
pts_x = r_[pts_x, -7.165]
pts_y = r_[pts_y, 38.000]
pts_x = r_[pts_x, 3.835]
pts_y = r_[pts_y, 49.000]
pts_x = r_[pts_x, 16.425]
pts_y = r_[pts_y, 49.000]
pts_x = r_[pts_x, 16.425]
pts_y = r_[pts_y, 41.000]
pts_x = r_[pts_x, 7.155]
pts_y = r_[pts_y, 41.000]
pts_x = r_[pts_x, -3.845]
pts_y = r_[pts_y, 30.000]
pts = np.array([pts_x, pts_y])
TopMetal1.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal1_zmin, length=TopMetal1_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 27.415]
pts_y = r_[pts_y, -1.000]
pts_x = r_[pts_x, 19.415]
pts_y = r_[pts_y, -1.000]
pts_x = r_[pts_x, 19.415]
pts_y = r_[pts_y, 126.000]
pts_x = r_[pts_x, 27.415]
pts_y = r_[pts_y, 126.000]
pts = np.array([pts_x, pts_y])
TopMetal1.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal1_zmin, length=TopMetal1_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -19.415]
pts_y = r_[pts_y, -1.000]
pts_x = r_[pts_x, -27.415]
pts_y = r_[pts_y, -1.000]
pts_x = r_[pts_x, -27.415]
pts_y = r_[pts_y, 126.000]
pts_x = r_[pts_x, -19.415]
pts_y = r_[pts_y, 126.000]
pts = np.array([pts_x, pts_y])
TopMetal1.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal1_zmin, length=TopMetal1_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 19.415]
pts_y = r_[pts_y, 118.000]
pts_x = r_[pts_x, 19.415]
pts_y = r_[pts_y, 126.000]
pts_x = r_[pts_x, 27.390]
pts_y = r_[pts_y, 126.000]
pts_x = r_[pts_x, 66.135]
pts_y = r_[pts_y, 164.745]
pts_x = r_[pts_x, 66.135]
pts_y = r_[pts_y, 219.525]
pts_x = r_[pts_x, 27.390]
pts_y = r_[pts_y, 258.270]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 258.270]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 266.270]
pts_x = r_[pts_x, 30.710]
pts_y = r_[pts_y, 266.270]
pts_x = r_[pts_x, 74.135]
pts_y = r_[pts_y, 222.845]
pts_x = r_[pts_x, 74.135]
pts_y = r_[pts_y, 161.425]
pts_x = r_[pts_x, 30.710]
pts_y = r_[pts_y, 118.000]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -30.710]
pts_y = r_[pts_y, 118.000]
pts_x = r_[pts_x, -74.135]
pts_y = r_[pts_y, 161.425]
pts_x = r_[pts_x, -74.135]
pts_y = r_[pts_y, 222.845]
pts_x = r_[pts_x, -30.710]
pts_y = r_[pts_y, 266.270]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 266.270]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 258.270]
pts_x = r_[pts_x, -27.390]
pts_y = r_[pts_y, 258.270]
pts_x = r_[pts_x, -66.135]
pts_y = r_[pts_y, 219.525]
pts_x = r_[pts_x, -66.135]
pts_y = r_[pts_y, 164.745]
pts_x = r_[pts_x, -27.390]
pts_y = r_[pts_y, 126.000]
pts_x = r_[pts_x, -19.415]
pts_y = r_[pts_y, 126.000]
pts_x = r_[pts_x, -19.415]
pts_y = r_[pts_y, 118.000]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 258.270]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 266.270]
pts_x = r_[pts_x, -7.155]
pts_y = r_[pts_y, 266.270]
pts_x = r_[pts_x, 3.865]
pts_y = r_[pts_y, 277.290]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 277.290]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 269.290]
pts_x = r_[pts_x, 7.185]
pts_y = r_[pts_y, 269.290]
pts_x = r_[pts_x, -3.835]
pts_y = r_[pts_y, 258.270]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 107.000]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 115.000]
pts_x = r_[pts_x, 31.950]
pts_y = r_[pts_y, 115.000]
pts_x = r_[pts_x, 77.145]
pts_y = r_[pts_y, 160.195]
pts_x = r_[pts_x, 77.145]
pts_y = r_[pts_y, 224.095]
pts_x = r_[pts_x, 31.950]
pts_y = r_[pts_y, 269.290]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 269.290]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 277.290]
pts_x = r_[pts_x, 35.270]
pts_y = r_[pts_y, 277.290]
pts_x = r_[pts_x, 85.145]
pts_y = r_[pts_y, 227.415]
pts_x = r_[pts_x, 85.145]
pts_y = r_[pts_y, 156.875]
pts_x = r_[pts_x, 35.270]
pts_y = r_[pts_y, 107.000]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -35.270]
pts_y = r_[pts_y, 107.000]
pts_x = r_[pts_x, -85.145]
pts_y = r_[pts_y, 156.875]
pts_x = r_[pts_x, -85.145]
pts_y = r_[pts_y, 227.415]
pts_x = r_[pts_x, -35.270]
pts_y = r_[pts_y, 277.290]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 277.290]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 269.290]
pts_x = r_[pts_x, -31.950]
pts_y = r_[pts_y, 269.290]
pts_x = r_[pts_x, -77.145]
pts_y = r_[pts_y, 224.095]
pts_x = r_[pts_x, -77.145]
pts_y = r_[pts_y, 160.195]
pts_x = r_[pts_x, -31.950]
pts_y = r_[pts_y, 115.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 115.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 107.000]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 96.000]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 104.000]
pts_x = r_[pts_x, 36.515]
pts_y = r_[pts_y, 104.000]
pts_x = r_[pts_x, 88.155]
pts_y = r_[pts_y, 155.640]
pts_x = r_[pts_x, 88.155]
pts_y = r_[pts_y, 228.670]
pts_x = r_[pts_x, 36.515]
pts_y = r_[pts_y, 280.310]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 280.310]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 288.310]
pts_x = r_[pts_x, 39.835]
pts_y = r_[pts_y, 288.310]
pts_x = r_[pts_x, 96.155]
pts_y = r_[pts_y, 231.990]
pts_x = r_[pts_x, 96.155]
pts_y = r_[pts_y, 152.320]
pts_x = r_[pts_x, 39.835]
pts_y = r_[pts_y, 96.000]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -39.835]
pts_y = r_[pts_y, 96.000]
pts_x = r_[pts_x, -96.155]
pts_y = r_[pts_y, 152.320]
pts_x = r_[pts_x, -96.155]
pts_y = r_[pts_y, 231.990]
pts_x = r_[pts_x, -39.835]
pts_y = r_[pts_y, 288.310]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 288.310]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 280.310]
pts_x = r_[pts_x, -36.515]
pts_y = r_[pts_y, 280.310]
pts_x = r_[pts_x, -88.155]
pts_y = r_[pts_y, 228.670]
pts_x = r_[pts_x, -88.155]
pts_y = r_[pts_y, 155.640]
pts_x = r_[pts_x, -36.515]
pts_y = r_[pts_y, 104.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 104.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 96.000]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 280.310]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 288.310]
pts_x = r_[pts_x, -7.155]
pts_y = r_[pts_y, 288.310]
pts_x = r_[pts_x, 3.865]
pts_y = r_[pts_y, 299.330]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 299.330]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 291.330]
pts_x = r_[pts_x, 7.185]
pts_y = r_[pts_y, 291.330]
pts_x = r_[pts_x, -3.835]
pts_y = r_[pts_y, 280.310]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 3.845]
pts_y = r_[pts_y, 96.000]
pts_x = r_[pts_x, -7.155]
pts_y = r_[pts_y, 107.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 107.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 115.000]
pts_x = r_[pts_x, -3.835]
pts_y = r_[pts_y, 115.000]
pts_x = r_[pts_x, 7.165]
pts_y = r_[pts_y, 104.000]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 104.000]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 96.000]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 85.000]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 93.000]
pts_x = r_[pts_x, 41.075]
pts_y = r_[pts_y, 93.000]
pts_x = r_[pts_x, 99.165]
pts_y = r_[pts_y, 151.090]
pts_x = r_[pts_x, 99.165]
pts_y = r_[pts_y, 233.240]
pts_x = r_[pts_x, 41.075]
pts_y = r_[pts_y, 291.330]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 291.330]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 299.330]
pts_x = r_[pts_x, 44.395]
pts_y = r_[pts_y, 299.330]
pts_x = r_[pts_x, 107.165]
pts_y = r_[pts_y, 236.560]
pts_x = r_[pts_x, 107.165]
pts_y = r_[pts_y, 147.770]
pts_x = r_[pts_x, 44.395]
pts_y = r_[pts_y, 85.000]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -44.395]
pts_y = r_[pts_y, 85.000]
pts_x = r_[pts_x, -107.165]
pts_y = r_[pts_y, 147.770]
pts_x = r_[pts_x, -107.165]
pts_y = r_[pts_y, 236.560]
pts_x = r_[pts_x, -44.395]
pts_y = r_[pts_y, 299.330]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 299.330]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 291.330]
pts_x = r_[pts_x, -41.075]
pts_y = r_[pts_y, 291.330]
pts_x = r_[pts_x, -99.165]
pts_y = r_[pts_y, 233.240]
pts_x = r_[pts_x, -99.165]
pts_y = r_[pts_y, 151.090]
pts_x = r_[pts_x, -41.075]
pts_y = r_[pts_y, 93.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 93.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 85.000]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 74.000]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 82.000]
pts_x = r_[pts_x, 45.635]
pts_y = r_[pts_y, 82.000]
pts_x = r_[pts_x, 110.175]
pts_y = r_[pts_y, 146.540]
pts_x = r_[pts_x, 110.175]
pts_y = r_[pts_y, 237.810]
pts_x = r_[pts_x, 45.635]
pts_y = r_[pts_y, 302.350]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 302.350]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 310.350]
pts_x = r_[pts_x, 48.955]
pts_y = r_[pts_y, 310.350]
pts_x = r_[pts_x, 118.175]
pts_y = r_[pts_y, 241.130]
pts_x = r_[pts_x, 118.175]
pts_y = r_[pts_y, 143.220]
pts_x = r_[pts_x, 48.955]
pts_y = r_[pts_y, 74.000]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -48.955]
pts_y = r_[pts_y, 74.000]
pts_x = r_[pts_x, -118.175]
pts_y = r_[pts_y, 143.220]
pts_x = r_[pts_x, -118.175]
pts_y = r_[pts_y, 241.130]
pts_x = r_[pts_x, -48.955]
pts_y = r_[pts_y, 310.350]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 310.350]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 302.350]
pts_x = r_[pts_x, -45.635]
pts_y = r_[pts_y, 302.350]
pts_x = r_[pts_x, -110.175]
pts_y = r_[pts_y, 237.810]
pts_x = r_[pts_x, -110.175]
pts_y = r_[pts_y, 146.540]
pts_x = r_[pts_x, -45.635]
pts_y = r_[pts_y, 82.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 82.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 74.000]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 302.350]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 310.350]
pts_x = r_[pts_x, -7.155]
pts_y = r_[pts_y, 310.350]
pts_x = r_[pts_x, 3.865]
pts_y = r_[pts_y, 321.370]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 321.370]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 313.370]
pts_x = r_[pts_x, 7.185]
pts_y = r_[pts_y, 313.370]
pts_x = r_[pts_x, -3.835]
pts_y = r_[pts_y, 302.350]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 3.845]
pts_y = r_[pts_y, 74.000]
pts_x = r_[pts_x, -7.155]
pts_y = r_[pts_y, 85.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 85.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 93.000]
pts_x = r_[pts_x, -3.835]
pts_y = r_[pts_y, 93.000]
pts_x = r_[pts_x, 7.165]
pts_y = r_[pts_y, 82.000]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 82.000]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 74.000]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 63.000]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 71.000]
pts_x = r_[pts_x, 50.195]
pts_y = r_[pts_y, 71.000]
pts_x = r_[pts_x, 121.185]
pts_y = r_[pts_y, 141.990]
pts_x = r_[pts_x, 121.185]
pts_y = r_[pts_y, 242.380]
pts_x = r_[pts_x, 50.195]
pts_y = r_[pts_y, 313.370]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 313.370]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 321.370]
pts_x = r_[pts_x, 53.515]
pts_y = r_[pts_y, 321.370]
pts_x = r_[pts_x, 129.185]
pts_y = r_[pts_y, 245.700]
pts_x = r_[pts_x, 129.185]
pts_y = r_[pts_y, 138.670]
pts_x = r_[pts_x, 53.515]
pts_y = r_[pts_y, 63.000]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -53.515]
pts_y = r_[pts_y, 63.000]
pts_x = r_[pts_x, -129.185]
pts_y = r_[pts_y, 138.670]
pts_x = r_[pts_x, -129.185]
pts_y = r_[pts_y, 245.700]
pts_x = r_[pts_x, -53.515]
pts_y = r_[pts_y, 321.370]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 321.370]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 313.370]
pts_x = r_[pts_x, -50.195]
pts_y = r_[pts_y, 313.370]
pts_x = r_[pts_x, -121.185]
pts_y = r_[pts_y, 242.380]
pts_x = r_[pts_x, -121.185]
pts_y = r_[pts_y, 141.990]
pts_x = r_[pts_x, -50.195]
pts_y = r_[pts_y, 71.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 71.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 63.000]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 52.000]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 60.000]
pts_x = r_[pts_x, 54.755]
pts_y = r_[pts_y, 60.000]
pts_x = r_[pts_x, 132.195]
pts_y = r_[pts_y, 137.440]
pts_x = r_[pts_x, 132.195]
pts_y = r_[pts_y, 246.950]
pts_x = r_[pts_x, 54.755]
pts_y = r_[pts_y, 324.390]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 324.390]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 332.390]
pts_x = r_[pts_x, 58.075]
pts_y = r_[pts_y, 332.390]
pts_x = r_[pts_x, 140.195]
pts_y = r_[pts_y, 250.270]
pts_x = r_[pts_x, 140.195]
pts_y = r_[pts_y, 134.120]
pts_x = r_[pts_x, 58.075]
pts_y = r_[pts_y, 52.000]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -58.075]
pts_y = r_[pts_y, 52.000]
pts_x = r_[pts_x, -140.195]
pts_y = r_[pts_y, 134.120]
pts_x = r_[pts_x, -140.195]
pts_y = r_[pts_y, 250.270]
pts_x = r_[pts_x, -58.075]
pts_y = r_[pts_y, 332.390]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 332.390]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 324.390]
pts_x = r_[pts_x, -54.755]
pts_y = r_[pts_y, 324.390]
pts_x = r_[pts_x, -132.195]
pts_y = r_[pts_y, 246.950]
pts_x = r_[pts_x, -132.195]
pts_y = r_[pts_y, 137.440]
pts_x = r_[pts_x, -54.755]
pts_y = r_[pts_y, 60.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 60.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 52.000]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 324.390]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 332.390]
pts_x = r_[pts_x, -7.155]
pts_y = r_[pts_y, 332.390]
pts_x = r_[pts_x, 3.865]
pts_y = r_[pts_y, 343.410]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 343.410]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 335.410]
pts_x = r_[pts_x, 7.185]
pts_y = r_[pts_y, 335.410]
pts_x = r_[pts_x, -3.835]
pts_y = r_[pts_y, 324.390]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 3.845]
pts_y = r_[pts_y, 52.000]
pts_x = r_[pts_x, -7.155]
pts_y = r_[pts_y, 63.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 63.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 71.000]
pts_x = r_[pts_x, -3.835]
pts_y = r_[pts_y, 71.000]
pts_x = r_[pts_x, 7.165]
pts_y = r_[pts_y, 60.000]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 60.000]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 52.000]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 41.000]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 49.000]
pts_x = r_[pts_x, 59.315]
pts_y = r_[pts_y, 49.000]
pts_x = r_[pts_x, 143.205]
pts_y = r_[pts_y, 132.890]
pts_x = r_[pts_x, 143.205]
pts_y = r_[pts_y, 251.520]
pts_x = r_[pts_x, 59.315]
pts_y = r_[pts_y, 335.410]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 335.410]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 343.410]
pts_x = r_[pts_x, 62.635]
pts_y = r_[pts_y, 343.410]
pts_x = r_[pts_x, 151.205]
pts_y = r_[pts_y, 254.840]
pts_x = r_[pts_x, 151.205]
pts_y = r_[pts_y, 129.570]
pts_x = r_[pts_x, 62.635]
pts_y = r_[pts_y, 41.000]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -62.635]
pts_y = r_[pts_y, 41.000]
pts_x = r_[pts_x, -151.205]
pts_y = r_[pts_y, 129.570]
pts_x = r_[pts_x, -151.205]
pts_y = r_[pts_y, 254.840]
pts_x = r_[pts_x, -62.635]
pts_y = r_[pts_y, 343.410]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 343.410]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 335.410]
pts_x = r_[pts_x, -59.315]
pts_y = r_[pts_y, 335.410]
pts_x = r_[pts_x, -143.205]
pts_y = r_[pts_y, 251.520]
pts_x = r_[pts_x, -143.205]
pts_y = r_[pts_y, 132.890]
pts_x = r_[pts_x, -59.315]
pts_y = r_[pts_y, 49.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 49.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 41.000]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 30.000]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 38.000]
pts_x = r_[pts_x, 63.875]
pts_y = r_[pts_y, 38.000]
pts_x = r_[pts_x, 154.215]
pts_y = r_[pts_y, 128.340]
pts_x = r_[pts_x, 154.215]
pts_y = r_[pts_y, 256.090]
pts_x = r_[pts_x, 63.875]
pts_y = r_[pts_y, 346.430]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 346.430]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 354.430]
pts_x = r_[pts_x, 67.195]
pts_y = r_[pts_y, 354.430]
pts_x = r_[pts_x, 162.215]
pts_y = r_[pts_y, 259.410]
pts_x = r_[pts_x, 162.215]
pts_y = r_[pts_y, 125.020]
pts_x = r_[pts_x, 67.195]
pts_y = r_[pts_y, 30.000]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -67.195]
pts_y = r_[pts_y, 30.000]
pts_x = r_[pts_x, -162.215]
pts_y = r_[pts_y, 125.020]
pts_x = r_[pts_x, -162.215]
pts_y = r_[pts_y, 259.410]
pts_x = r_[pts_x, -67.195]
pts_y = r_[pts_y, 354.430]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 354.430]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 346.430]
pts_x = r_[pts_x, -63.875]
pts_y = r_[pts_y, 346.430]
pts_x = r_[pts_x, -154.215]
pts_y = r_[pts_y, 256.090]
pts_x = r_[pts_x, -154.215]
pts_y = r_[pts_y, 128.340]
pts_x = r_[pts_x, -63.875]
pts_y = r_[pts_y, 38.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 38.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 30.000]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 346.430]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 354.430]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 354.430]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 346.430]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 3.845]
pts_y = r_[pts_y, 30.000]
pts_x = r_[pts_x, -7.155]
pts_y = r_[pts_y, 41.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 41.000]
pts_x = r_[pts_x, -8.415]
pts_y = r_[pts_y, 49.000]
pts_x = r_[pts_x, -3.835]
pts_y = r_[pts_y, 49.000]
pts_x = r_[pts_x, 7.165]
pts_y = r_[pts_y, 38.000]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 38.000]
pts_x = r_[pts_x, 8.415]
pts_y = r_[pts_y, 30.000]
pts = np.array([pts_x, pts_y])
TopMetal2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopMetal2_zmin, length=TopMetal2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 264.760]
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 265.660]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 265.660]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 264.760]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 264.760]
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 265.660]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 265.660]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 264.760]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 264.760]
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 265.660]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 265.660]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 264.760]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 264.760]
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 265.660]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 265.660]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 264.760]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 280.920]
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 281.820]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 281.820]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 280.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 280.920]
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 281.820]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 281.820]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 280.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 280.920]
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 281.820]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 281.820]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 280.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 280.920]
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 281.820]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 281.820]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 280.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 282.880]
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 283.780]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 283.780]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 282.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 282.880]
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 283.780]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 283.780]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 282.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 282.880]
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 283.780]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 283.780]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 282.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 282.880]
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 283.780]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 283.780]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 282.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 284.840]
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 285.740]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 285.740]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 284.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 284.840]
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 285.740]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 285.740]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 284.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 284.840]
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 285.740]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 285.740]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 284.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 284.840]
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 285.740]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 285.740]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 284.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 286.800]
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 287.700]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 287.700]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 286.800]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 286.800]
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 287.700]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 287.700]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 286.800]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 286.800]
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 287.700]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 287.700]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 286.800]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 286.800]
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 287.700]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 287.700]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 286.800]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 302.960]
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 303.860]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 303.860]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 302.960]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 302.960]
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 303.860]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 303.860]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 302.960]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 302.960]
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 303.860]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 303.860]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 302.960]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 302.960]
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 303.860]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 303.860]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 302.960]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 304.920]
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 305.820]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 305.820]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 304.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 304.920]
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 305.820]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 305.820]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 304.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 304.920]
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 305.820]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 305.820]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 304.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 304.920]
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 305.820]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 305.820]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 304.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 306.880]
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 307.780]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 307.780]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 306.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 306.880]
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 307.780]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 307.780]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 306.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 306.880]
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 307.780]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 307.780]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 306.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 306.880]
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 307.780]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 307.780]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 306.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 308.840]
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 309.740]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 309.740]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 308.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 308.840]
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 309.740]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 309.740]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 308.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 308.840]
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 309.740]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 309.740]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 308.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 308.840]
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 309.740]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 309.740]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 308.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 325.000]
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 325.900]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 325.900]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 325.000]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 325.000]
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 325.900]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 325.900]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 325.000]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 325.000]
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 325.900]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 325.900]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 325.000]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 325.000]
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 325.900]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 325.900]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 325.000]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 326.960]
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 327.860]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 327.860]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 326.960]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 326.960]
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 327.860]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 327.860]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 326.960]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 326.960]
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 327.860]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 327.860]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 326.960]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 326.960]
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 327.860]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 327.860]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 326.960]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 328.920]
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 329.820]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 329.820]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 328.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 328.920]
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 329.820]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 329.820]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 328.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 328.920]
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 329.820]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 329.820]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 328.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 328.920]
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 329.820]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 329.820]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 328.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 330.880]
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 331.780]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 331.780]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 330.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 330.880]
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 331.780]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 331.780]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 330.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 330.880]
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 331.780]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 331.780]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 330.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 330.880]
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 331.780]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 331.780]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 330.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 271.840]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 272.740]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 272.740]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 271.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 313.960]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 314.860]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 314.860]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 313.960]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 291.920]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 292.820]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 292.820]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 291.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 313.960]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 314.860]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 314.860]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 313.960]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 271.840]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 272.740]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 272.740]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 271.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 313.960]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 314.860]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 314.860]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 313.960]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 291.920]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 292.820]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 292.820]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 291.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 313.960]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 314.860]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 314.860]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 313.960]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 271.840]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 272.740]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 272.740]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 271.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 315.920]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 316.820]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 316.820]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 315.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 291.920]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 292.820]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 292.820]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 291.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 315.920]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 316.820]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 316.820]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 315.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 271.840]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 272.740]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 272.740]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 271.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 315.920]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 316.820]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 316.820]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 315.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 291.920]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 292.820]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 292.820]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 291.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 315.920]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 316.820]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 316.820]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 315.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 273.800]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 274.700]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 274.700]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 273.800]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 317.880]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 318.780]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 318.780]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 317.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 293.880]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 294.780]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 294.780]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 293.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 317.880]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 318.780]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 318.780]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 317.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 273.800]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 274.700]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 274.700]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 273.800]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 317.880]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 318.780]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 318.780]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 317.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 293.880]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 294.780]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 294.780]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 293.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 317.880]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 318.780]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 318.780]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 317.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 273.800]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 274.700]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 274.700]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 273.800]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 319.840]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 320.740]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 320.740]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 319.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 293.880]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 294.780]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 294.780]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 293.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 319.840]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 320.740]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 320.740]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 319.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 273.800]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 274.700]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 274.700]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 273.800]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 319.840]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 320.740]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 320.740]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 319.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 293.880]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 294.780]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 294.780]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 293.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 319.840]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 320.740]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 320.740]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 319.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 269.880]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 270.780]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 270.780]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 269.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 336.000]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 336.900]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 336.900]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 336.000]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 295.840]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 296.740]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 296.740]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 295.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 336.000]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 336.900]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 336.900]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 336.000]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 275.760]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 276.660]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 276.660]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 275.760]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 336.000]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 336.900]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 336.900]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 336.000]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 295.840]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 296.740]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 296.740]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 295.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 336.000]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 336.900]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 336.900]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 336.000]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 269.880]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 270.780]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 270.780]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 269.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 337.960]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 338.860]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 338.860]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 337.960]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 295.840]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 296.740]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 296.740]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 295.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 337.960]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 338.860]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 338.860]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 337.960]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 275.760]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 276.660]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 276.660]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 275.760]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 337.960]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 338.860]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 338.860]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 337.960]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 295.840]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 296.740]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 296.740]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 295.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 337.960]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 338.860]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 338.860]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 337.960]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 269.880]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 270.780]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 270.780]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 269.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 339.920]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 340.820]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 340.820]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 339.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 297.800]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 298.700]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 298.700]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 297.800]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 339.920]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 340.820]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 340.820]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 339.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 275.760]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 276.660]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 276.660]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 275.760]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 339.920]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 340.820]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 340.820]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 339.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 297.800]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 298.700]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 298.700]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 297.800]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 339.920]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 340.820]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 340.820]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 339.920]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 269.880]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 270.780]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 270.780]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 269.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 341.880]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 342.780]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 342.780]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 341.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 297.800]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 298.700]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 298.700]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 297.800]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 341.880]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 342.780]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 342.780]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 341.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 275.760]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 276.660]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 276.660]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 275.760]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 341.880]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 342.780]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 342.780]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 341.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 297.800]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 298.700]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 298.700]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 297.800]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 341.880]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 342.780]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 342.780]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 341.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 262.800]
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 263.700]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 263.700]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 262.800]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 260.840]
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 261.740]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 261.740]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 260.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 262.800]
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 263.700]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 263.700]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 262.800]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 258.880]
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 259.780]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 259.780]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 258.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 260.840]
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 261.740]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 261.740]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 260.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 258.880]
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 259.780]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 259.780]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 258.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 260.840]
pts_x = r_[pts_x, 14.905]
pts_y = r_[pts_y, 261.740]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 261.740]
pts_x = r_[pts_x, 15.805]
pts_y = r_[pts_y, 260.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 258.880]
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 259.780]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 259.780]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 258.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 262.800]
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 263.700]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 263.700]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 262.800]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 260.840]
pts_x = r_[pts_x, 9.025]
pts_y = r_[pts_y, 261.740]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 261.740]
pts_x = r_[pts_x, 9.925]
pts_y = r_[pts_y, 260.840]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 262.800]
pts_x = r_[pts_x, 10.985]
pts_y = r_[pts_y, 263.700]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 263.700]
pts_x = r_[pts_x, 11.885]
pts_y = r_[pts_y, 262.800]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 258.880]
pts_x = r_[pts_x, 12.945]
pts_y = r_[pts_y, 259.780]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 259.780]
pts_x = r_[pts_x, 13.845]
pts_y = r_[pts_y, 258.880]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 20.025]
pts_y = r_[pts_y, 118.610]
pts_x = r_[pts_x, 20.025]
pts_y = r_[pts_y, 119.510]
pts_x = r_[pts_x, 20.925]
pts_y = r_[pts_y, 119.510]
pts_x = r_[pts_x, 20.925]
pts_y = r_[pts_y, 118.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 21.985]
pts_y = r_[pts_y, 118.610]
pts_x = r_[pts_x, 21.985]
pts_y = r_[pts_y, 119.510]
pts_x = r_[pts_x, 22.885]
pts_y = r_[pts_y, 119.510]
pts_x = r_[pts_x, 22.885]
pts_y = r_[pts_y, 118.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 23.945]
pts_y = r_[pts_y, 118.610]
pts_x = r_[pts_x, 23.945]
pts_y = r_[pts_y, 119.510]
pts_x = r_[pts_x, 24.845]
pts_y = r_[pts_y, 119.510]
pts_x = r_[pts_x, 24.845]
pts_y = r_[pts_y, 118.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 25.905]
pts_y = r_[pts_y, 118.610]
pts_x = r_[pts_x, 25.905]
pts_y = r_[pts_y, 119.510]
pts_x = r_[pts_x, 26.805]
pts_y = r_[pts_y, 119.510]
pts_x = r_[pts_x, 26.805]
pts_y = r_[pts_y, 118.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 20.025]
pts_y = r_[pts_y, 120.570]
pts_x = r_[pts_x, 20.025]
pts_y = r_[pts_y, 121.470]
pts_x = r_[pts_x, 20.925]
pts_y = r_[pts_y, 121.470]
pts_x = r_[pts_x, 20.925]
pts_y = r_[pts_y, 120.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 21.985]
pts_y = r_[pts_y, 120.570]
pts_x = r_[pts_x, 21.985]
pts_y = r_[pts_y, 121.470]
pts_x = r_[pts_x, 22.885]
pts_y = r_[pts_y, 121.470]
pts_x = r_[pts_x, 22.885]
pts_y = r_[pts_y, 120.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 23.945]
pts_y = r_[pts_y, 120.570]
pts_x = r_[pts_x, 23.945]
pts_y = r_[pts_y, 121.470]
pts_x = r_[pts_x, 24.845]
pts_y = r_[pts_y, 121.470]
pts_x = r_[pts_x, 24.845]
pts_y = r_[pts_y, 120.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 25.905]
pts_y = r_[pts_y, 120.570]
pts_x = r_[pts_x, 25.905]
pts_y = r_[pts_y, 121.470]
pts_x = r_[pts_x, 26.805]
pts_y = r_[pts_y, 121.470]
pts_x = r_[pts_x, 26.805]
pts_y = r_[pts_y, 120.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 20.025]
pts_y = r_[pts_y, 122.530]
pts_x = r_[pts_x, 20.025]
pts_y = r_[pts_y, 123.430]
pts_x = r_[pts_x, 20.925]
pts_y = r_[pts_y, 123.430]
pts_x = r_[pts_x, 20.925]
pts_y = r_[pts_y, 122.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 21.985]
pts_y = r_[pts_y, 122.530]
pts_x = r_[pts_x, 21.985]
pts_y = r_[pts_y, 123.430]
pts_x = r_[pts_x, 22.885]
pts_y = r_[pts_y, 123.430]
pts_x = r_[pts_x, 22.885]
pts_y = r_[pts_y, 122.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 23.945]
pts_y = r_[pts_y, 122.530]
pts_x = r_[pts_x, 23.945]
pts_y = r_[pts_y, 123.430]
pts_x = r_[pts_x, 24.845]
pts_y = r_[pts_y, 123.430]
pts_x = r_[pts_x, 24.845]
pts_y = r_[pts_y, 122.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 25.905]
pts_y = r_[pts_y, 122.530]
pts_x = r_[pts_x, 25.905]
pts_y = r_[pts_y, 123.430]
pts_x = r_[pts_x, 26.805]
pts_y = r_[pts_y, 123.430]
pts_x = r_[pts_x, 26.805]
pts_y = r_[pts_y, 122.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 20.025]
pts_y = r_[pts_y, 124.490]
pts_x = r_[pts_x, 20.025]
pts_y = r_[pts_y, 125.390]
pts_x = r_[pts_x, 20.925]
pts_y = r_[pts_y, 125.390]
pts_x = r_[pts_x, 20.925]
pts_y = r_[pts_y, 124.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 21.985]
pts_y = r_[pts_y, 124.490]
pts_x = r_[pts_x, 21.985]
pts_y = r_[pts_y, 125.390]
pts_x = r_[pts_x, 22.885]
pts_y = r_[pts_y, 125.390]
pts_x = r_[pts_x, 22.885]
pts_y = r_[pts_y, 124.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 23.945]
pts_y = r_[pts_y, 124.490]
pts_x = r_[pts_x, 23.945]
pts_y = r_[pts_y, 125.390]
pts_x = r_[pts_x, 24.845]
pts_y = r_[pts_y, 125.390]
pts_x = r_[pts_x, 24.845]
pts_y = r_[pts_y, 124.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 25.905]
pts_y = r_[pts_y, 124.490]
pts_x = r_[pts_x, 25.905]
pts_y = r_[pts_y, 125.390]
pts_x = r_[pts_x, 26.805]
pts_y = r_[pts_y, 125.390]
pts_x = r_[pts_x, 26.805]
pts_y = r_[pts_y, 124.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 109.570]
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 110.470]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 110.470]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 109.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 109.570]
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 110.470]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 110.470]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 109.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 109.570]
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 110.470]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 110.470]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 109.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 109.570]
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 110.470]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 110.470]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 109.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 111.530]
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 112.430]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 112.430]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 111.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 111.530]
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 112.430]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 112.430]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 111.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 111.530]
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 112.430]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 112.430]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 111.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 111.530]
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 112.430]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 112.430]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 111.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 113.490]
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 114.390]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 114.390]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 113.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 113.490]
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 114.390]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 114.390]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 113.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 113.490]
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 114.390]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 114.390]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 113.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 113.490]
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 114.390]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 114.390]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 113.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -26.805]
pts_y = r_[pts_y, 118.610]
pts_x = r_[pts_x, -26.805]
pts_y = r_[pts_y, 119.510]
pts_x = r_[pts_x, -25.905]
pts_y = r_[pts_y, 119.510]
pts_x = r_[pts_x, -25.905]
pts_y = r_[pts_y, 118.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -24.845]
pts_y = r_[pts_y, 124.490]
pts_x = r_[pts_x, -24.845]
pts_y = r_[pts_y, 125.390]
pts_x = r_[pts_x, -23.945]
pts_y = r_[pts_y, 125.390]
pts_x = r_[pts_x, -23.945]
pts_y = r_[pts_y, 124.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -26.805]
pts_y = r_[pts_y, 120.570]
pts_x = r_[pts_x, -26.805]
pts_y = r_[pts_y, 121.470]
pts_x = r_[pts_x, -25.905]
pts_y = r_[pts_y, 121.470]
pts_x = r_[pts_x, -25.905]
pts_y = r_[pts_y, 120.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -26.805]
pts_y = r_[pts_y, 124.490]
pts_x = r_[pts_x, -26.805]
pts_y = r_[pts_y, 125.390]
pts_x = r_[pts_x, -25.905]
pts_y = r_[pts_y, 125.390]
pts_x = r_[pts_x, -25.905]
pts_y = r_[pts_y, 124.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -20.925]
pts_y = r_[pts_y, 118.610]
pts_x = r_[pts_x, -20.925]
pts_y = r_[pts_y, 119.510]
pts_x = r_[pts_x, -20.025]
pts_y = r_[pts_y, 119.510]
pts_x = r_[pts_x, -20.025]
pts_y = r_[pts_y, 118.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -20.925]
pts_y = r_[pts_y, 122.530]
pts_x = r_[pts_x, -20.925]
pts_y = r_[pts_y, 123.430]
pts_x = r_[pts_x, -20.025]
pts_y = r_[pts_y, 123.430]
pts_x = r_[pts_x, -20.025]
pts_y = r_[pts_y, 122.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -20.925]
pts_y = r_[pts_y, 120.570]
pts_x = r_[pts_x, -20.925]
pts_y = r_[pts_y, 121.470]
pts_x = r_[pts_x, -20.025]
pts_y = r_[pts_y, 121.470]
pts_x = r_[pts_x, -20.025]
pts_y = r_[pts_y, 120.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -22.885]
pts_y = r_[pts_y, 122.530]
pts_x = r_[pts_x, -22.885]
pts_y = r_[pts_y, 123.430]
pts_x = r_[pts_x, -21.985]
pts_y = r_[pts_y, 123.430]
pts_x = r_[pts_x, -21.985]
pts_y = r_[pts_y, 122.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -24.845]
pts_y = r_[pts_y, 118.610]
pts_x = r_[pts_x, -24.845]
pts_y = r_[pts_y, 119.510]
pts_x = r_[pts_x, -23.945]
pts_y = r_[pts_y, 119.510]
pts_x = r_[pts_x, -23.945]
pts_y = r_[pts_y, 118.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -24.845]
pts_y = r_[pts_y, 122.530]
pts_x = r_[pts_x, -24.845]
pts_y = r_[pts_y, 123.430]
pts_x = r_[pts_x, -23.945]
pts_y = r_[pts_y, 123.430]
pts_x = r_[pts_x, -23.945]
pts_y = r_[pts_y, 122.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -22.885]
pts_y = r_[pts_y, 120.570]
pts_x = r_[pts_x, -22.885]
pts_y = r_[pts_y, 121.470]
pts_x = r_[pts_x, -21.985]
pts_y = r_[pts_y, 121.470]
pts_x = r_[pts_x, -21.985]
pts_y = r_[pts_y, 120.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -26.805]
pts_y = r_[pts_y, 122.530]
pts_x = r_[pts_x, -26.805]
pts_y = r_[pts_y, 123.430]
pts_x = r_[pts_x, -25.905]
pts_y = r_[pts_y, 123.430]
pts_x = r_[pts_x, -25.905]
pts_y = r_[pts_y, 122.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -22.885]
pts_y = r_[pts_y, 118.610]
pts_x = r_[pts_x, -22.885]
pts_y = r_[pts_y, 119.510]
pts_x = r_[pts_x, -21.985]
pts_y = r_[pts_y, 119.510]
pts_x = r_[pts_x, -21.985]
pts_y = r_[pts_y, 118.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -20.925]
pts_y = r_[pts_y, 124.490]
pts_x = r_[pts_x, -20.925]
pts_y = r_[pts_y, 125.390]
pts_x = r_[pts_x, -20.025]
pts_y = r_[pts_y, 125.390]
pts_x = r_[pts_x, -20.025]
pts_y = r_[pts_y, 124.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -24.845]
pts_y = r_[pts_y, 120.570]
pts_x = r_[pts_x, -24.845]
pts_y = r_[pts_y, 121.470]
pts_x = r_[pts_x, -23.945]
pts_y = r_[pts_y, 121.470]
pts_x = r_[pts_x, -23.945]
pts_y = r_[pts_y, 120.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -22.885]
pts_y = r_[pts_y, 124.490]
pts_x = r_[pts_x, -22.885]
pts_y = r_[pts_y, 125.390]
pts_x = r_[pts_x, -21.985]
pts_y = r_[pts_y, 125.390]
pts_x = r_[pts_x, -21.985]
pts_y = r_[pts_y, 124.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 80.490]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 81.390]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 81.390]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 80.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 80.490]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 81.390]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 81.390]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 80.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 80.490]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 81.390]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 81.390]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 80.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 80.490]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 81.390]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 81.390]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 80.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 96.610]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 97.510]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 97.510]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 96.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 96.610]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 97.510]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 97.510]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 96.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 96.610]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 97.510]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 97.510]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 96.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 96.610]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 97.510]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 97.510]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 96.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 74.610]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 75.510]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 75.510]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 74.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 98.570]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 99.470]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 99.470]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 98.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 74.610]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 75.510]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 75.510]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 74.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 98.570]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 99.470]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 99.470]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 98.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 74.610]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 75.510]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 75.510]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 74.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 98.570]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 99.470]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 99.470]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 98.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 74.610]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 75.510]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 75.510]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 74.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 98.570]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 99.470]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 99.470]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 98.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 76.570]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 77.470]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 77.470]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 76.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 100.530]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 101.430]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 101.430]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 100.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 76.570]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 77.470]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 77.470]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 76.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 100.530]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 101.430]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 101.430]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 100.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 76.570]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 77.470]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 77.470]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 76.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 100.530]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 101.430]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 101.430]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 100.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 76.570]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 77.470]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 77.470]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 76.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 100.530]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 101.430]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 101.430]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 100.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 78.530]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 79.430]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 79.430]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 78.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 102.490]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 103.390]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 103.390]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 102.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 78.530]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 79.430]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 79.430]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 78.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 102.490]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 103.390]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 103.390]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 102.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 78.530]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 79.430]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 79.430]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 78.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 102.490]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 103.390]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 103.390]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 102.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 78.530]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 79.430]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 79.430]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 78.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 102.490]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 103.390]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 103.390]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 102.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 52.610]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 53.510]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 53.510]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 52.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 52.610]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 53.510]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 53.510]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 52.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 52.610]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 53.510]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 53.510]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 52.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 52.610]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 53.510]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 53.510]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 52.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 54.570]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 55.470]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 55.470]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 54.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 54.570]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 55.470]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 55.470]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 54.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 54.570]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 55.470]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 55.470]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 54.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 54.570]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 55.470]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 55.470]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 54.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 56.530]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 57.430]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 57.430]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 56.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 56.530]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 57.430]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 57.430]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 56.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 56.530]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 57.430]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 57.430]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 56.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 56.530]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 57.430]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 57.430]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 56.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 58.490]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 59.390]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 59.390]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 58.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 58.490]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 59.390]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 59.390]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 58.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 58.490]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 59.390]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 59.390]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 58.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 58.490]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 59.390]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 59.390]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 58.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 30.610]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 31.510]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 31.510]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 30.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 30.610]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 31.510]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 31.510]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 30.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 30.610]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 31.510]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 31.510]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 30.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 30.610]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 31.510]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 31.510]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 30.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 32.570]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 33.470]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 33.470]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 32.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 32.570]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 33.470]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 33.470]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 32.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 32.570]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 33.470]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 33.470]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 32.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 32.570]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 33.470]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 33.470]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 32.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 34.530]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 35.430]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 35.430]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 34.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 34.530]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 35.430]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 35.430]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 34.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 34.530]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 35.430]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 35.430]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 34.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 34.530]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 35.430]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 35.430]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 34.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 36.490]
pts_x = r_[pts_x, -9.925]
pts_y = r_[pts_y, 37.390]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 37.390]
pts_x = r_[pts_x, -9.025]
pts_y = r_[pts_y, 36.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 36.490]
pts_x = r_[pts_x, -11.885]
pts_y = r_[pts_y, 37.390]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 37.390]
pts_x = r_[pts_x, -10.985]
pts_y = r_[pts_y, 36.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 36.490]
pts_x = r_[pts_x, -13.845]
pts_y = r_[pts_y, 37.390]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 37.390]
pts_x = r_[pts_x, -12.945]
pts_y = r_[pts_y, 36.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 36.490]
pts_x = r_[pts_x, -15.805]
pts_y = r_[pts_y, 37.390]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 37.390]
pts_x = r_[pts_x, -14.905]
pts_y = r_[pts_y, 36.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 65.570]
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 66.470]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 66.470]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 65.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 91.490]
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 92.390]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 92.390]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 91.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 65.570]
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 66.470]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 66.470]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 65.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 85.610]
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 86.510]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 86.510]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 85.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 67.530]
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 68.430]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 68.430]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 67.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 107.610]
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 108.510]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 108.510]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 107.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 67.530]
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 68.430]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 68.430]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 67.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 89.530]
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 90.430]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 90.430]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 89.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 67.530]
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 68.430]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 68.430]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 67.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 107.610]
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 108.510]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 108.510]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 107.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 67.530]
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 68.430]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 68.430]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 67.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 87.570]
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 88.470]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 88.470]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 87.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 69.490]
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 70.390]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 70.390]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 69.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 107.610]
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 108.510]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 108.510]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 107.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 69.490]
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 70.390]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 70.390]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 69.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 89.530]
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 90.430]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 90.430]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 89.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 69.490]
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 70.390]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 70.390]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 69.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 107.610]
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 108.510]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 108.510]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 107.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 69.490]
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 70.390]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 70.390]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 69.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 85.610]
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 86.510]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 86.510]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 85.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 41.610]
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 42.510]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 42.510]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 41.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 89.530]
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 90.430]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 90.430]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 89.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 41.610]
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 42.510]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 42.510]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 41.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 87.570]
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 88.470]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 88.470]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 87.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 41.610]
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 42.510]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 42.510]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 41.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 89.530]
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 90.430]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 90.430]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 89.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 41.610]
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 42.510]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 42.510]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 41.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 85.610]
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 86.510]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 86.510]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 85.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 43.570]
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 44.470]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 44.470]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 43.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 63.610]
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 64.510]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 64.510]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 63.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 43.570]
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 44.470]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 44.470]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 43.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 91.490]
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 92.390]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 92.390]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 91.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 43.570]
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 44.470]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 44.470]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 43.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 63.610]
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 64.510]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 64.510]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 63.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 43.570]
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 44.470]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 44.470]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 43.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 87.570]
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 88.470]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 88.470]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 87.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 45.530]
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 46.430]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 46.430]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 45.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 63.610]
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 64.510]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 64.510]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 63.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 45.530]
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 46.430]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 46.430]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 45.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 91.490]
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 92.390]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 92.390]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 91.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 45.530]
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 46.430]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 46.430]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 45.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 63.610]
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 64.510]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 64.510]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 63.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 45.530]
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 46.430]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 46.430]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 45.530]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 85.610]
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 86.510]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 86.510]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 85.610]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 47.490]
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 48.390]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 48.390]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 47.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 65.570]
pts_x = r_[pts_x, 9.035]
pts_y = r_[pts_y, 66.470]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 66.470]
pts_x = r_[pts_x, 9.935]
pts_y = r_[pts_y, 65.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 47.490]
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 48.390]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 48.390]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 47.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 91.490]
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 92.390]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 92.390]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 91.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 47.490]
pts_x = r_[pts_x, 12.955]
pts_y = r_[pts_y, 48.390]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 48.390]
pts_x = r_[pts_x, 13.855]
pts_y = r_[pts_y, 47.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 65.570]
pts_x = r_[pts_x, 10.995]
pts_y = r_[pts_y, 66.470]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 66.470]
pts_x = r_[pts_x, 11.895]
pts_y = r_[pts_y, 65.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 47.490]
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 48.390]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 48.390]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 47.490]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

pts_x = np.array([])
pts_y = np.array([])
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 87.570]
pts_x = r_[pts_x, 14.915]
pts_y = r_[pts_y, 88.470]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 88.470]
pts_x = r_[pts_x, 15.815]
pts_y = r_[pts_y, 87.570]
pts = np.array([pts_x, pts_y])
TopVia2.AddLinPoly(priority=200, points=pts, norm_dir ='z', elevation=TopVia2_zmin, length=TopVia2_thick)

# Bounding box of geometry
geometry_xmin= -162.215
geometry_xmax= 162.215
geometry_ymin= -1.000
geometry_ymax= 354.430



############# end layout geometries ##########

############ ports created manually ##########

# port in x direction, 50 Ohm reference impedance
port = FDTD.AddLumpedPort(1, 50, [-24.0, 0, TopMetal1_zmin], [24.0, 10, TopMetal1_zmax], 'x', 1.0, priority=150)


#################  end ports  ################

geometry_width = geometry_xmax - geometry_xmin
geometry_height = geometry_ymax - geometry_ymin

# for inductors, add margin of one inductor diameter on each side, so that metal walls have no effect
box_xmin = geometry_xmin - 1.0 * geometry_width
box_xmax = geometry_xmax + 1.0 * geometry_width
box_ymin = geometry_ymin - 1.0 * geometry_height
box_ymax = geometry_ymax + 1.0 * geometry_height

# create boxes for substrate, oxide etc that are not drawn in GDSII layout
Sub.AddBox(priority=10, start=[box_xmin, box_ymin, Sub_zmin], stop=[box_xmax, box_ymax, Sub_zmax])
EPI.AddBox(priority=10, start=[box_xmin, box_ymin, EPI_zmin], stop=[box_xmax, box_ymax, EPI_zmax])
SiO2.AddBox(priority=10, start=[box_xmin, box_ymin, SiO2_zmin], stop=[box_xmax, box_ymax, SiO2_zmax])

############# create vertical mesh  #############

def add_equal_meshlines (axis, start, stop, number):
    global mesh
    mesh.AddLine(axis, linspace(start,stop,number))

def add_graded_meshlines (axis, start, stop, stepstart, factor, maxstep):
    global mesh
    mesh.AddLine(axis, start)
    value = start
    step = stepstart
    finished = False

    while not finished:
        value = value + step
        mesh.AddLine(axis, value)
        step = step * factor

        if (step/maxstep > 1):
            step = maxstep

        if  start<stop:
            finished = (value+step) > stop
        else:
            finished = (value+step) < stop

    if (value!=stop):
        mesh.AddLine(axis, stop)



# Sub: fill DOWNWARDS with increasing mesh size
add_graded_meshlines ('z', Sub_zmax, Sub_zmin, -1.5*refined_cellsize, 1.3, -max_cellsize)

# EPI: fill equal mesh size
add_equal_meshlines('z', EPI_zmin,EPI_zmax, int(ceil(EPI_thick/refined_cellsize)+1))

# SiO2: Fill down to TopMetal2 only because metals inside SiO2 have their own mesh lines
add_equal_meshlines('z', TopMetal2_zmax,SiO2_zmax, int(ceil((SiO2_zmax-TopMetal2_zmax)/refined_cellsize)+1))

# Passivation: not included in this stackup version

# Air above: fill UPWARDS with increasing mesh size
add_graded_meshlines ('z', Air_zmin, Air_zmax, 1.5, 1.3, max_cellsize)


# Metals
# For thick top metal, place multiple few mesh lines based on refined_cellsize
# For thin metal layers, create top AND bottom mesh line only if metal is actually used, otherwise only top
add_equal_meshlines('z',TopMetal2_zmin, TopMetal2_zmax, int(ceil(TopMetal2_thick/refined_cellsize)+1))
add_equal_meshlines('z',TopMetal1_zmin, TopMetal1_zmax, int(ceil(TopMetal1_thick/refined_cellsize)+1))

mesh.AddLine('z',Metal5_zmax)
if (Metal5.GetQtyPrimitives() > 0): mesh.AddLine('z',Metal5_zmin)
    
mesh.AddLine('z',Metal4_zmax)
if (Metal4.GetQtyPrimitives() > 0): mesh.AddLine('z',Metal4_zmin)

mesh.AddLine('z',Metal3_zmax)
if (Metal3.GetQtyPrimitives() > 0): mesh.AddLine('z',Metal3_zmin)

mesh.AddLine('z',Metal2_zmax)
if (Metal2.GetQtyPrimitives() > 0): mesh.AddLine('z',Metal2_zmin)

mesh.AddLine('z',Metal1_zmax)
if (Metal1.GetQtyPrimitives() > 0): mesh.AddLine('z',Metal1_zmin)


# Vias, except for short vias between thin metals
add_equal_meshlines('z',TopVia2_zmin, TopVia2_zmax, int(ceil(TopVia2_thick/refined_cellsize)+1))
if (TopVia1.GetQtyPrimitives() > 0): add_equal_meshlines('z',TopVia1_zmin,TopVia1_zmax, int(ceil(TopVia1_thick/refined_cellsize)+1))
if (Cont.GetQtyPrimitives() > 0): add_equal_meshlines('z',Cont_zmin,Cont_zmax, int(ceil(Cont_thick/refined_cellsize)+1))


############ build final mesh ##########
mesh.AddLine('x', box_xmin)
mesh.AddLine('x', box_xmax)

mesh.AddLine('y', box_ymin)
mesh.AddLine('y', box_ymax)

# refine mesh in conductor regions
add_equal_meshlines('x', geometry_xmin, geometry_xmax, round(geometry_width/refined_cellsize))
add_equal_meshlines('y', geometry_ymin, geometry_ymax, round(geometry_height/refined_cellsize))

mesh.SmoothMeshLines('x', max_cellsize, 1.3)
mesh.SmoothMeshLines('y', max_cellsize, 1.3)
# don't smooth mesh in z-direction, that is already final!


#################### write model file and view in AppCSXCAD ################
CSX_file = os.path.join(sim_path, model_basename + '.xml')
CSX.Write2XML(CSX_file)

if not postprocess_only: # skip model preview and simulation
  from CSXCAD import AppCSXCAD_BIN
  os.system(AppCSXCAD_BIN + ' "{}"'.format(CSX_file))

if not preview_only:  # start simulation 
    if not postprocess_only:
        print("Running simulation ...")
        FDTD.Run(sim_path, verbose=1)
    
    ### Post-processing and plotting ###
    f = np.linspace(fstart,fstop,numfreq)
    port.CalcPort(sim_path, f)

    s11 = port.uf_ref/port.uf_inc
    s11_dB = 20.0*np.log10(np.abs(s11))
    s11_phase = angle(s11, deg=True) 

    Zin = port.uf_tot / port.if_tot

   
    # S11 dB
    #figure()
    #plot(f/1e9, s11_dB, 'k-', linewidth=2, label='$S_{11}$')
    #grid()
    #legend()
    #ylabel('S11 (dB)')
    #xlabel('Frequency (GHz)')

    # S11 phase
    #figure()
    #plot(f/1e9, s11_phase, 'k-', linewidth=2, label='$S_{11}$')
    #grid()
    #legend()
    #ylabel('S11 (degree)')
    #xlabel('Frequency (GHz)')
        
    # Rseries
    Rseries = real(Zin)
    figure()
    plot(f/1e9, Rseries, 'k-', linewidth=2, label='Rseries')
    ylim(0, 10)
    xlim(0, fstop/1e9)
    grid()
    legend()
    ylabel('Rseries (Ohm)')
    xlabel('Frequency (GHz)')

    # ignore warning when dividing by zero frequency in L calculation
    import warnings
    warnings.filterwarnings('ignore')

    # Lseries
    omega = 2*pi*f
    Lseries = imag(Zin)/omega
    figure()
    plot(f/1e9, Lseries*1e9, 'k-', linewidth=2, label='Lseries')
    ylim(0, 10)
    xlim(0, fstop/1e9)
    grid()
    legend()
    ylabel('Lseries (nH)')
    xlabel('Frequency (GHz)')

    # Q factor
    Q = imag(Zin)/real(Zin)
    figure()
    plot(f/1e9, Q, 'k-', linewidth=2, label='Q')
    ylim(0, 30)
    xlim(0, fstop/1e9)
    grid()
    legend()
    ylabel('Q factor')
    xlabel('Frequency (GHz)')

    # print some inductor data
    # get series L and series R at frequency of interest
    findex = where (f>=targetfreq)[0]
    findex = findex.item(0)

    print('Frequency [GHz]:', str(f[findex]/1e9))
    print('Series L  [nH] :', str(Lseries[findex]*1e9))
    print('Series R  [Ohm]:', str(Rseries[findex]))
    print('Q factor       :', str(Q[findex]))
    print('----------------')
    print('L_DC      [nH] :', str(Lseries[1]*1e9))
    print('R_DC      [Ohm]:', str(Rseries[0]))
    print('Peak Q         :', str(max(Q)))


    # create Touchstone S1P output file in simulation data path
    s1p_name = os.path.join(sim_path, model_basename + '.s1p')
    s1p_file = open(s1p_name, 'w')
    s1p_file.write('#   Hz   S  RI   R   50\n')
    s1p_file.write('!\n')
    for index in range(0, numfreq):
        freq = f[index]
        re = real(s11[index])
        im = imag(s11[index])
        s1p_file.write(str(freq) + ' ' + str(re) + ' ' + str(im) + '\n')
    s1p_file.close()

    # Show all plots
    show()

    

    
