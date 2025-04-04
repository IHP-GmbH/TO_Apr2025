Design data and design process description
############################################


The design procedure can be explained with a flow chart -

.. image:: _static/flowchart_two_way.png
    :align: center
    :width: 600
    :height: 800

Design Procedure
##############################################

The design of the two-way power amplifier was driven by the goal of achieving a **high Psat at 180 GHz**, with the intention of **surpassing state-of-the-art results** using IHP’s 130 nm SiGe BiCMOS technology (SG13G2).

Based on literature review, **common emitter (CE)** configurations were selected over cascode or differential topologies, due to their superior large signal performance and higher achievable Psat. The **unit cell** was designed as a **three-stage single-ended CE amplifier** using HBT devices, with **transmission lines and MIM capacitors for impedance matching**. This configuration yielded a **Psat of 17 dBm**, simulated with 50-ohm matched ports.

To achieve a higher output power, two such unit cells were combined using a **Wilkinson power combiner** designed specifically for **180 GHz operation** with **50-ohm characteristic impedance**. The Wilkinson design was optimized through **EM simulations** to ensure minimal insertion loss and good isolation.

This approach is based on the principle that **power combining adds approximately 3 dB** of output power per doubling of unit cells. Therefore, two 17 dBm unit cells, when combined, theoretically yield **20 dBm Psat**, surpassing previously reported results using cascode configurations.

The design followed a **schematic-first flow**, followed by layout creation, and finally **layout-level EM simulations** to account for high-frequency parasitics and refine matching and combiner performance. This two-way amplifier structure serves as the foundation for scaling up to a **four-way PA**, with similar design and optimization philosophy.

Circuit Design
----------------------------------------------

The schematic of the Two-Way Power Amplifier is shown below:

.. image:: _static/Two_way_PA_Schematic.PNG
    :align: center
    :width: 1000
    :height: 700

The core amplifier design is based on a **three-stage Common Emitter (CE) topology**, chosen for its superior large-signal performance and higher Psat at G-band frequencies. The amplifier is **single-ended** and employs **transmission lines and MIM capacitors** for matching and DC blocking.

The two amplifier chains are **identical**, and their outputs are combined using a **Wilkinson power combiner**, designed for **50-ohm characteristic impedance at 180 GHz**. Each amplifier chain includes:

- Three CE stages, each biased individually
- Inter-stage matching using short transmission lines and capacitors
- Stabilization resistors to maintain gain flatness and prevent oscillation

The amplifier is biased with:
- **VCC1 = 1.7 V**, **VCC2 = 1.8 V** for the collector supplies
- **VBB1 = 0.97 V**, **VBB2 = 0.94 V** for base biasing

Decoupling capacitors are used throughout the power supply and bias networks to suppress high-frequency noise and improve isolation between stages.

This schematic represents the **schematic-level implementation** prior to layout extraction and EM validation, and was the basis for initial simulations of gain, Psat, and stability. The schematic was simulated using 50-ohm input and output ports to estimate performance in a matched environment before proceeding to layout design.

Layout Design
----------------------------------------

The complete layout view of the Two-Way Power Amplifier is shown below:

.. image:: _static/Two_way_PA_layout_View.PNG
    :align: center
    :width: 1000
    :height: 1000

The layout was designed following the schematic architecture with careful attention to **high-frequency parasitics** common at **G-band frequencies (180 GHz)**. The structure incorporates:

- **Two parallel unit cells**, symmetrically arranged to ensure consistent phase and power distribution
- A central **Wilkinson power combiner** for merging the outputs
- **Dedicated routing** of VCC1, VCC2, VBB1, and VBB2 lines to each stage of both amplifier chains
- **Wide metal traces and multi-layer routing** for RF signal integrity and thermal handling

Each RF input/output path includes **transmission lines optimized through EM simulation**, and pad access is provided through **GSG (Ground–Signal–Ground) pads** for both the input and output sides.

This layout was used to perform **EM simulations and layout-versus-schematic (LVS) checks**, which validated that the designed RF paths and biasing networks met required specs and matched the original schematic behavior.

Simulated Results
###########################################################

S-Parameters
------------------------------------

.. image:: _static/s_param_two_way.png
    :align: center
    :width: 1000
    :height: 500

The S-parameter simulation of the Two-Way Power Amplifier was carried out to evaluate the small-signal performance at and around the target operating frequency of **180 GHz**.

- **S21** (Gain): Peaks at **6.78 dB**, indicating successful power combining with a moderate insertion gain.
- **S11** and **S22**: Both are below **–27 dB** at 180 GHz, indicating excellent input and output matching.
- **S12**: Isolation is below **–34 dB**, reflecting strong unidirectionality and good port-to-port isolation.

This validates the matching, combining, and gain objectives of the layout-level amplifier. Minimal return loss and excellent isolation confirm that the Wilkinson combiner performs well in the designed frequency band.

Large Signal Analysis (Unit Cell)
----------------------------------------------

As Qucs-S does not support full large-signal harmonic balance simulations with multiple instances and EM elements, the large-signal analysis was carried out only for the **single unit cell** to estimate **Gain Compression and Psat**.

.. image:: _static/Gain_vs_Pin.png
    :align: center
    :width: 1000
    :height: 400

The Gain vs Pin plot shows:
- A nearly flat gain of ~9.8 dB up to ~10 dBm input
- Clear **gain compression** beyond 12 dBm
- **Psat** region begins at **Pin ≈ 17 dBm**, where gain drops to 0 dB

.. image:: _static/Pout_vs_Pin.png
    :align: center
    :width: 1000
    :height: 400

The Pout vs Pin plot confirms:
- Output power increases linearly up to **17 dBm**
- Saturation occurs around **Pin = 17 dBm**, hence **Psat ≈ 17 dBm**

Assuming ideal power combining through Wilkinson structures, the expected **Psat of the Two-Way PA is ~20 dBm**, i.e., ~3 dB increase from the unit cell, which is consistent with theoretical expectations for a power-combined architecture.

Stability Parameters
----------------------------------------

.. image:: _static/stability_factors_two_way.png
    :align: center
    :width: 900
    :height: 800

The small-signal stability of the Two-Way Power Amplifier was evaluated across a wide frequency range using three key parameters:

- **Δ (Delta)**: The determinant of the scattering matrix. A value of **|Δ| < 1** is necessary for unconditional stability. The design maintains Δ well below 1 at the target frequency (180 GHz), ensuring passive stability.
  
- **K-Factor (Rollett Stability Factor)**: A value of **K > 1** is required for unconditional stability. At 180 GHz, the K-factor is **12.71**, far exceeding the minimum threshold.
  
- **μ (Mu Stability Factor)**: Also used to confirm unconditional stability. The design shows **μ ≈ 12.28** at 180 GHz, confirming strong margin of stability.

All three metrics confirm that the amplifier is **unconditionally stable across the operating band** and far beyond it, even up to 300 GHz. The use of interstage resistive loading, proper layout grounding, and decoupling elements contributed significantly to this performance.

Pad Layout
----------------------------------------

.. image:: _static/Corrected_two_way_pad_layout.png
    :align: center
    :width: 1000
    :height: 500

The pad layout was designed to ensure robust and organized connectivity to power rails, signal paths, and bias networks. The orientation is kept symmetric for efficient routing and minimal parasitic coupling.

**Pad Allocation:**

- **Left Side (Top to Bottom)**:
  - VCC1 (1.7V)
  - GND
  - RF IN PAD
  - GND
  - VCC1 (1.7V)

- **Right Side (Top to Bottom)**:
  - VCC2 (1.8V)
  - GND
  - RF OUT PAD
  - GND
  - VBB2 (0.94V)

- **Top Side**:
  - VBB1 (0.97V)

- **Bottom Side**:
  - VCC2 (1.8V)

The RF pads are **hexagonal** and placed mid-height for symmetric probe access in a GSG (Ground-Signal-Ground) configuration. All power and bias pads are **square** and colored according to standard convention: red for RF, yellow for VCC, blue for bias, and pink for ground. The pad pitch and spacing are designed to be compatible with high-frequency wafer probes.
