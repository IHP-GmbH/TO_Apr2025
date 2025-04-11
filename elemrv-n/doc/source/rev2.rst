Revision 2
==========

This chip was part of `TO_Apr2025 <https://github.com/IHP-GmbH/TO_Apr2025>`_.

New Features
------------

* Integrate Pinmux Controller for dynamic switching of output pins between multiple input sources
* Add Programmable IO module featuring 3 independent channels
* Include 2-channel PWM module for precise signal generation
* Add I2C interface with a single interrupt line for event signaling
* Provide 1kB of integrated On-Chip RAM for fast data access
* Incorporate AES accelerator with masking for side-channel attacks

Fixed Issues
------------

* HyperBus controller locked when executing instructions and fetching data from the same controller.

Known Issues
------------

No known issues so far.
