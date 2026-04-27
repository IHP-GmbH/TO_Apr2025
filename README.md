## Sample request process

The April 2025 run is out of the fab, so you can now ask for samples.

### What you must do

1. Sign the Hiring Agreement: [samples.rtf](https://github.com/IHP-GmbH/TO_Sep2025/blob/main/drc/samples.rtf) (download i
2. Send the signed file by email to:
   - **herman(at)ihp-microelectronics.com**
   - **nkehder(at)ihp-microelectronics.com**

### Required data in your email

Please include all contact details:

- **Name Last Name**
- **Address**
- **Phone number**
- **Email**

### Packaging options and bonding plan

- By default, we send **10 bare dies**.
- If you need a packaged chip, we can offer **QFN** or **open QFN** with pin counts from **24 to 64**.
- For bonding, we need a bonding plan.
- Example bonding plan for a 64-pin QFN: [QFN64.svg](drc/QFN64.svg) (download it)

Feel free to use this file and also copy and paste the image of your layout in the center, marking pin number 1.

| Design name | Short one line description | Location directory |
| --- | --- | --- |
| 160GHz_LNA | 160\u20399GHz low-noise amplifier (LNA) with ~27\u20399GHz bandwidth (146\u2039173\u2039GHz) and ~5.77\u2039dB NF at 160\u20399GHz. | `160GHz_LNA/` |
| 40_GHZ_LOW_NOISE_TIA | DC\u2039240\u2039GHz single-ended transimpedance amplifier optimized for low input-referred current noise (~9.5\u2039pA/\u2039\u2039Hz). | `40_GHZ_LOW_NOISE_TIA/` |
| 97_GHZ_LINEAR_TIA | DC\u2039297\u2039GHz single-ended transimpedance amplifier optimized for high linearity and low input-referred current noise (~17.3\u2039pA/\u2039\u2039Hz). | `97_GHZ_LINEAR_TIA/` |
| DC_to_130_GHz_TIA | Two open-source SiGe HBT TIAs targeting DC\u20392130\u2039GHz bandwidth (2-stage and 3-stage variants) for TO_Apr2025. | `DC_to_130_GHz_TIA/` |
| PA_180GHz | 180\u20399GHz (G\u2039band) SiGe BiCMOS power amplifiers (2\u2039way and 4\u2039way) using 3-stage common-emitter topology (\u2039120\u2039223\u2039dBm Psat). | `PA_180GHz/` |
| Mixer5GHz | 5\u2039GHz up-converter mixer with a cross-coupled oscillator, intended for characterization including cryogenic/low-temperature operation. | `Mixer5GHz/` |
| GPS_LNA | LNA for GPS-band reception covering ~1.1\u20391.6\u2039GHz. | `GPS_LNA/` |
| VCO_130nm_LSI | Voltage-controlled oscillator with ~2.64\u2039GHz frequency (spec) designed for low-temperature operation (down to ~\u20399269\u2039\u2039C). | `VCO_130nm_LSI/` |
| ElemRV-N | End-to-end open-source RISC\u2039V microcontroller design included in the TO_Apr2025 MPW run. | `elemrv-n/` |
| i2c-gpio-expander | Open-source 8-bit I2C GPIO expander design (SG13G2) providing 8 controllable GPIO pins via I2C. | `i2c-gpio-expander/` |
| Greyhound | RISC\u2039V SoC with tightly-coupled eFPGA on IHP SG13G2 (sources referenced as hosted in a separate repository). | `Greyhound/` |
| TTIHP0p2 | Experimental Tiny Tapeout IHP 0.2 shuttle validating Tiny Tapeout infrastructure on the IHP process. | `TTIHP0p2/` |
| TTIHP25a | Experimental open-source Tiny Tapeout IHP 25a shuttle (sources and datasheet referenced). | `TTIHP25a/` |
| 6502-cpu | 6502 CPU project directory present with design artifacts (no top-level README/overview found in the directory root from the collected listings). | `6502-cpu/` |
| active_L_VCOs | Active inductor / L\u2039VCOs project directory present with Sphinx documentation scaffold (no detailed overview text extracted from the available spec stub). | `active_L_VCOs/` |
| bandgap_ref_cmos | CMOS bandgap reference project directory present with documentation scaffold (no detailed overview text extracted from the available spec stub). | `bandgap_ref_cmos/` |
| ascon | ASCON project directory present with design_data artifacts (no top-level README/overview found in the directory root from the collected listings). | `ascon/` |
