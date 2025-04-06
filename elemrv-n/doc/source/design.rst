Design
======

ElemRV-N is built on the ElemRV platform and integrates a VexRiscv RV32IMC 5-stage pipeline CPU core. It supports eXecute In Place (XIP), enabling the CPU to execute code directly from external SPI NOR flash memory without requiring prior loading into RAM.

The design includes a HyperBus Interface with two chip-select signals, allowing the connection of up to two external HyperRAM devices. For low-latency data access, the system also incorporates a 1 kB on-chip SRAM module.

**Peripheral Interfaces**

Standard low-performance peripherals are connected via the APB3 bus. A pinmux controller enables dynamic multiplexing of up to two input sources to a single physical output pin. This configuration maximizes pin utilization and supports flexible interface assignment based on application requirements. Available interfaces:

* General Purpose Input/Output (GPIO)
* Programmable Input/Output (PIO)
* Pulse-Width Modulation
* I2C Controller
* SPI Controller
* Universal Asynchronous Receiver-Transmitter (UART)

**Cryptographic Acceleration**

A masked AES accelerator is integrated into the design to provide secure hardware-accelerated encryption while mitigating side-channel attacks.

Memory Map
----------

The table below outlines the memory map of the AXI4 crossbar.

+--------------+-------------+-------------------------------+
| Base Address | Name        | Description                   |
+--------------+-------------+-------------------------------+
| 0x80000000   | On-Chip RAM | 1kB on-chip sram              |
+--------------+-------------+-------------------------------+
| 0x90000000   | Hyperbus    | External HyperRAM             |
+--------------+-------------+-------------------------------+
| 0xA0000000   | XIP Flash   | External SPI NOR Flash        |
+--------------+-------------+-------------------------------+
| 0xF0000000   | Peripherals | APB3 bus with all peripherals |
+--------------+-------------+-------------------------------+

The following table lists all peripherals connected to the APB3 bus.

+--------------+------+-------------------------------------+
| Base Address | Size |  Name                               |
+--------------+------+-------------------------------------+
| 0xF0800000   | 4 MB | Platform Level Interrupt Controller |
+--------------+------+-------------------------------------+
| 0xF0020000   | 4 kB | Mtimer                              |
+--------------+------+-------------------------------------+
| 0xF0021000   | 4 kB | Reset Controller                    |
+--------------+------+-------------------------------------+
| 0xF0022000   | 4 kB | Clock Controller                    |
+--------------+------+-------------------------------------+
| 0xF0023000   | 4 kB | Hyperbus Controller                 |
+--------------+------+-------------------------------------+
| 0xF0024000   | 4 kB | XPI Flash Controller                |
+--------------+------+-------------------------------------+
| 0xF0000000   | 4 kB | GPIO0 Controller                    |
+--------------+------+-------------------------------------+
| 0xF0001000   | 4 kB | I2C0 Controller                     |
+--------------+------+-------------------------------------+
| 0xF0002000   | 4 kB | I2C1 Controller                     |
+--------------+------+-------------------------------------+
| 0xF0003000   | 4 kB | PIO0 Controller                     |
+--------------+------+-------------------------------------+
| 0xF0004000   | 4 kB | PWM0 Controller                     |
+--------------+------+-------------------------------------+
| 0xF0005000   | 4 kB | SPI0 Controller                     |
+--------------+------+-------------------------------------+
| 0xF0006000   | 4 kB | UART0 Controller with Handshake     |
+--------------+------+-------------------------------------+
| 0xF0007000   | 4 kB | UART1 Controller                    |
+--------------+------+-------------------------------------+
| 0xF0030000   | 4 kB | AES Accelerator                     |
+--------------+------+-------------------------------------+
| 0xF0010000   | 4 kB | Pinmux Controller                   |
+--------------+------+-------------------------------------+
