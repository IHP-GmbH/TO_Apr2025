Specification of the Two-Way and Four-Way Power Amplifier Designs
#################################################################################

Two-Way PA Design Specifications
--------------------------------------------

.. list-table:: Two-Way Power Amplifier
   :widths: 40 40
   :header-rows: 1

   * - Design Data
     - Value/Parameter
   * - Operating Frequency
     - 180 GHz (G-band)
   * - Technology
     - IHP SG13G2 (130 nm SiGe BiCMOS)
   * - Topology
     - 3-stage Common Emitter (CE)
   * - Unit Cells
     - 2
   * - Psat (Saturation Power)
     - ≈ 20 dBm
   * - S21 Gain
     - 6.78 dB
   * - S11 / S22
     - ≤ –27 dB
   * - S12
     - ≤ –34 dB
   * - Stability (K / μ)
     - 12.71 / 12.28
   * - VCC1 / VCC2
     - 1.7 V / 1.8 V
   * - VBB1 / VBB2
     - 0.97 V / 0.94 V

Four-Way PA Design Specifications
--------------------------------------------

.. list-table:: Four-Way Power Amplifier
   :widths: 40 40
   :header-rows: 1

   * - Design Data
     - Value/Parameter
   * - Operating Frequency
     - 180 GHz (G-band)
   * - Technology
     - IHP SG13G2 (130 nm SiGe BiCMOS)
   * - Topology
     - 3-stage Common Emitter (CE)
   * - Unit Cells
     - 4
   * - Psat (Theoretical)
     - ≈ 23 dBm
   * - S21 Gain
     - 6.29 dB
   * - S11 / S22
     - ≤ –30 dB
   * - S12
     - ≤ –35 dB
   * - Stability (K / μ)
     - 14.21 / 15.10
   * - VCC1 / VCC2
     - 1.7 V / 1.8 V
   * - VBB1 / VBB2
     - 0.97 V / 0.94 V

Comparison with Other State-of-the-Art Designs
----------------------------------------------------

The current state-of-the-art in SG13G2 technology is represented by the work of **Ali et al. (2020)**, which demonstrated a **4-way cascode-based PA** achieving:

- **Psat = 18.1 dBm @ 185 GHz**
- **Peak Gain = 25.9 dB**
- **PAE = 3.5%**

In comparison:

- This work demonstrates **Two-Way CE-based PA** achieving **20 dBm Psat**
- And a **Four-Way PA** theoretically achieving **23 dBm Psat**
- While maintaining **unconditional stability** and simpler CE topology with reduced layout complexity