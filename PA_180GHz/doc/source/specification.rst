Specification of the Two-Way Power Amplifier Design
#################################################################################

.. list-table:: Design Specification
   :widths: 40 40
   :header-rows: 1

   * - Design Data
     - Value/Parameter
   * - Operating Frequency
     - 180 GHz (G-band)
   * - Technology
     - IHP SG13G2 (130 nm SiGe BiCMOS)
   * - Amplifier Topology
     - Single-ended, 3-stage Common Emitter
   * - Number of Unit Cells
     - 2
   * - Psat (Saturation Output Power)
     - ≈ 20 dBm
   * - S21 Gain
     - 6.78 dB @ 180 GHz
   * - Input/Output Matching (S11, S22)
     - ≤ -27 dB @ 180 GHz
   * - Reverse Isolation (S12)
     - ≤ -34 dB
   * - Stability Metrics
     - K = 12.71, μ = 12.28 (Unconditionally Stable)
   * - Supply Voltages
     - VCC1 = 1.7 V, VCC2 = 1.8 V
   * - Base Bias Voltages
     - VBB1 = 0.97 V, VBB2 = 0.94 V

Comparison with Other State-of-the-Art Designs
----------------------------------------------------

The benchmark for this design is the work by **Ali et al. (2020)**, which reports a **4-way combined PA using the same IHP SG13G2 technology**. Their topology used a **three-stage cascode configuration**, achieving:

- **Psat = 18.1 dBm** at 185 GHz  
- **Peak Gain = 25.9 dB**  

In contrast, this design uses **two 3-stage CE-based unit cells**, achieving an estimated **Psat of 20 dBm at 180 GHz**, representing:

- A **+2 dB improvement in output power**
- With **lower complexity**, thanks to CE topology
- While maintaining unconditional stability and excellent matching