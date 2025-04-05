Custom Components
#################

The design uses a custom inductor, that is not present in the original PDK. Thus in order to obtain a clean LVS it
requires few changes. This section explain these different changes.



Xschem
******

In this project, Xschem is only used for the LVS, because at the time of the project. Because of the custom inductor,
we created a component to see the schematic properly and to generate the netlist. This component can be found in the
pull request in ``design_data/xschem/sg13g2_pr/simple_inductor.sym``. This file must be copied to the Xschem devices
folder next to the other IHP components.




KLayout
*******

For the LVS to work on KLayout, it also needs some adaptations. For KLayout, it might be "dangerous" to just copy
the files, because it would erase a potential newer version. A "meld", "diff"... with a modification line by line
related to the new inductor would be cleaner. The concerned in the PR are in ``design_data/klayout/`` and are related
to the file in your klayout config directory (``.klayout`` for instance) then ``tech/ihp-sg13g2/lvs/rule_deck``.



