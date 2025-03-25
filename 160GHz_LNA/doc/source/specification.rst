



A 160 GHz Low Noise Amplifier with 27-GHz Bandwidth
###################################################

.. list-table:: **Specification**
   :widths: 400 200
   :header-rows: 1

   * - Specification
     - Value
   * - Bandwidth
     - 146 GHz to 173 GHz
   * - Noise Figure at 160 GHz
     - 5.77 dB
   * - Peak Gain at 158 GHz
     - 12.4 dB
   * - Topology
     - Common Emitter (Cascade)
   * - Input Referred 1dB compression point at 160 GHz
     - -11.3 dBm
   * - Output Referred 1dB compression point at 160 GHz
     - -0.12 dBm
   * - Power Consumption
     - 15.76 mW

 
**Schematic:**

.. image:: _static/schematic.png
    :align: center
    :alt: Schematic Image.
    :width: 800



.. list-table:: **DC Voltages**
   :widths: 200 200 200
   :header-rows: 1

   * - VCC
     - VBB1
     - VBB2
   * - 1.35 V
     - 0.9 V
     - 0.93 V

.. list-table:: **Capacitor Values**
   :widths: 200 100 200 100
   :header-rows: 1

   * - Parameter
     - Type
     - Size 
     - Value
   * - C\ :sub:`1`
     - rfcmim
     - 15×10 um\ :sup:`2`
     - 227 fF
   * - C\ :sub:`2`
     - rfcmim
     - 3.72×32 um\ :sup:`2`
     - 182 fF
   * - C\ :sub:`3`
     - rfcmim
     - 2.4×5.2 um\ :sup:`2`
     - 19.4 fF
   * - C\ :sub:`4`
     - rfcmim
     - 3.72×32 um\ :sup:`2`
     - 182 fF
   * - C\ :sub:`5`
     - rfcmim
     - 2.5×7.6 um\ :sup:`2`
     - 29.5 fF
   * - C\ :sub:`6`
     - rfcmim
     - 12.5×32 um\ :sup:`2`
     - 604 fF
   * - C\ :sub:`7`
     - rfcmim
     - 2.4×5.1 um\ :sup:`2`
     - 19.1 fF
   * - C\ :sub:`8`
     - rfcmim
     - 6.2×32 um\ :sup:`2`
     - 301 fF   
   * - C\ :sub:`9`
     - rfcmim
     - 2.4×3.2 um\ :sup:`2`
     - 12.1 fF   
   * - Decap1 (multiplier=2)
     - cmim
     - 20×25 um\ :sup:`2`
     - 750 fF      

*N.B:-All Decap values are same (Decap1=Decap2=Decap3=Decap4=Decap5=Decap6=Decap7=Decap8)*
     -