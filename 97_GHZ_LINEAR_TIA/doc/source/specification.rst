A Low-Noise Single Ended TIA With 40-GHz Bandwidth
###################################################

.. list-table:: **Specification**
   :widths: 400 200
   :header-rows: 1

   * - Specification
     - Value
   * - Bandwidth
     - 0 to 97 GHz
   * - Transimpedance
     - 59.2 dBΩ
   * - Gain
     - 22.1 dB
   * - Group Delay Variation
     - ±4 ps
   * - Average Input Referred Current Noise Density
     - 17 pA/√Hz
   * - Power Consumption
     - 80 mW
     

.. list-table:: **DC Voltages**
   :widths: 200 200
   :header-rows: 0

   * - VCC1
     - VCC2
   * - 3.3 V
     - 3.3 V

**Schematic:**

.. image:: _static/schematic.png
    :align: center
    :alt: Schematic Image.
    :width: 800

.. list-table:: **Components Values**
   :widths: 200 100 200 100
   :header-rows: 1

   * - Parameter
     - Value
     - Parameter
     - Value
   * - TL1
     - 240 µm
     - R\ :sub:`E3`
     - 223 Ω
   * - TL2
     - 175 µm
     - R\ :sub:`C4`
     - 34 Ω
   * - TL3
     - 75 µm
     - R\ :sub:`E4`
     - 13 Ω
   * - TL4
     - 85 µm
     - Q\ :sub:`11`
     - 10×70×900 nm\ :sup:`2`
   * - TL5
     - 75 µm
     - Q\ :sub:`12`
     - 2×70×900 nm\ :sup:`2`
   * - TL6
     - 265 µm
     - Q\ :sub:`21`
     - 5×70×900 nm\ :sup:`2`
   * - TL7
     - 20 µm
     - Q\ :sub:`31`
     - 5×70×900 nm\ :sup:`2`
   * - TL8
     - 110 µm
     - Q\ :sub:`32`
     - 2×70×900 nm\ :sup:`2`
   * - R\ :sub:`B`
     - 3.5 kΩ
     - Q\ :sub:`41`
     - 10×70×900 nm\ :sup:`2`
   * - R\ :sub:`F`
     - 897 Ω
     - Q\ :sub:`42`
     - 4×70×900 nm\ :sup:`2`
   * - R\ :sub:`C1`
     - 78 Ω
     - Q\ :sub:`F`
     - 1×70×900 nm\ :sup:`2`
   * - R\ :sub:`E2`
     - 1.44 kΩ
     -
     -

**Layout:**

.. image:: _static/pads.png
  :align: center
  :alt: Pads Image.
  :width: 800

**Layout Size: 634 µm × 1044 µm**

.. list-table:: **State-of-art comparison:**
   :widths: 100 100 100 100 100 100
   :header-rows: 1

   * - Reference
     - Process
     - BW (GHz)
     - Z\ :sub:`T` (dBΩ)
     - Noise (pA/√Hz)
     - Power (mW)
   * - `[1] <https://ieeexplore.ieee.org/abstract/document/8194885>`_
     - 130 nm BiCMOS
     - 75
     - 54
     - 10.9
     - 95
   * - `[2] <https://ieeexplore.ieee.org/abstract/document/10659112>`_
     - 130 nm SiGe BiCMOS
     - 42
     - 74
     - 12.5
     - 238
   * - `[3] <https://ieeexplore.ieee.org/abstract/document/10665896>`_
     - 90 nm SiGe BiCMOS
     - 40
     - 75
     - 15.1
     - 264
   * - This Work
     - 130 nm SiGe BiCMOS
     - 97
     - 55
     - **17.3**
     - 80
