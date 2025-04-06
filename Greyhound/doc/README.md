# Greyhound: a RISC-V SoC with tightly coupled eFPGA on IHP SG13G2

> [!IMPORTANT]  
> The sources for Greyhound are hosted in a separate repository, as it will be updated once the changes to OpenLane 2 and the IHP Open PDK are upstreamed. Please view the repository here: [Greyhound](https://github.com/mole99/greyhound-ihp/)

Greyhound's embedded FPGA can be used as a custom instruction extension, as a peripheral or as a completely standalone FPGA with 32 I/Os. Custom tiles were created to enable warmboot functionality and allow communication with the SoC. Thanks to FABulous, the user bitstream for the FPGA can be generated using the upstream yosys and nextpnr toolchain.

Greyhound was designed with open source EDA tools and the [IHP Open Source PDK](https://github.com/IHP-GmbH/IHP-Open-PDK).