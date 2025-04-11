Design
======

Miscellaneous
-------------

The entire chip core is a synchronous design operating at 50 MHz. This clock must be supplied via an external oscillator connected to the clock pin. The design also requires an active-low reset signal, which must be externally provided. It is recommended to hold the reset signal low for at least 1 µs until the core voltage stabilizes. This ensures proper initialization of all registers and correct latching of the external address.

Communication
-------------

The chip features an I2C interface for receiving and handling transmissions from an external I2C controller. Additionally, it includes an interrupt pin to notify the controller of any pending interrupts on one of the GPIO pins.

This device supports ``I2C Fast Mode``, enabling communication speeds of up to 400 kbit/s.

GPIO
----

The device is equipped with 8 General Purpose Input/Output (GPIO) pins, configurable through the I2C interface.

+----------+-----------+--------+----------------------+
| Register | Name      | Access | Description          |
+==========+===========+========+======================+
| 0x0      | Value     | R      | Returns IO value     |
+----------+-----------+--------+----------------------+
| 0x1      | Write     | R/W    | Writes output value  |
+----------+-----------+--------+----------------------+
| 0x2      | Direction | R/W    | Enables output value |
+----------+-----------+--------+----------------------+

.. note::
   The interrupt registers are currently missing and will be added later.
