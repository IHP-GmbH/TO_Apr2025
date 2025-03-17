Design data and design process description
############################################




The design procedure can be explained with a flow chart -


.. image:: _static/flowchart.png
    :align: center
    :width: 400
    :height: 400

Design Procedure
##############################################

As shown in the flowchart, the primary focus was to design a state of the art transimpedance amplifier at least in one aspect. 
The bandwidth was chosen as the primary focus thus TIA dB-Ohm and S21 bandwidth were taken into consideration.  
As of this tape-out, literature review shows that the highest bandwidth achieved by a transimpdeance amplifier design was 110 GHz. Other technologies (e.g. InP, GaAs, etc.) may have higher bandwidth capacity 
so the goal was set to design a DC - 130 GHz TIA  which would be the highest bandwidth in a SiGe process. 
Comparison of the other works can be found in the specification file.


Circuit Design 
----------------------------------------------

The schematic capture of the circuit is shown below - 


.. image:: _static/schematic.png
    :align: center
    :width: 1200
    :height: 500


The circuit topology is as follows -

1st Stage 
------------------------

The 1st stage is a resistive feedback common emitter amplifier which primarily gives the transimpedance gain. The feedback resistor RF is responsible for it.
The 1st stage uses a 5 emitter length npn13G2 HBT. Another resistor in series with a 272 um TL line gives a peaking response.





