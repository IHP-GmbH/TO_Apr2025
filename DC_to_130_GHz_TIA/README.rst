Open Source DC to 130 GHz Transimpedance Amplifier
##########################################################

This design is due for the IHP TO_APR2025 OpenMPW. The design utilizes the SiGe HBTs of the SG13G2 process of the open pdk,
trying to harness the ft of 300 GHz of the NPN HBTs. There are 2 designs- both exceed the 130 GHz bandwidth requirement. This is the highest achieved bandwidth among SiGe process transimpedance amplifiers, a state of the art design. 

* 1st design - 2 stage TIA
* 2nd design - 3 stage TIA

File Information
###############################################################

* Design Data - The design data contains the schematic, gds and em simulation files along with both lvs and drc result files. 
* Doc - The documentation folder contains the detailed documentation of the design. It contains the index, design procedure, simulation and validation data. Because detailed documentation is done for the 2 stage design, the second 3 stage design has not been elaborated since both have same requirements. 
* Val - Validation folder hosting the drc, lvs and ngspice simulation database files. 

Additional Info
####################################################################

The 1st design uses a 2V power supply while the 2nd design uses both 2V and 2.5V power supply. Both designs have 75 um pitch GSG pads. 

License
#######################################################################
A fully open-source design publishing under the Apache-2.0 license