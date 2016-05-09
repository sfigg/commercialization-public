---
title: General Purpose Input/Output (GPIO)
description: General Purpose Input/Output (GPIO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 82C659B8-C202-426D-94AD-BECACF8F0ED0
---

# General Purpose Input/Output (GPIO)


This topic covers recommendations for General Purpose Input/Output (GPIO) in Windows 10. Windows supports the use of GPIO pins as resources by function (peripheral) drivers. Similar to [Serial Peripheral Buses](simple-peripheral-bus--spb-.md), function drivers are abstracted from the underlying GPIO controller hardware by the Resource Hub. To support the controller hardware itself, a GPIO-specific KMDF class extension is provided. This interface supports the creation of GPIO controller drivers. Windows supports the use of GPIO as input, output, and interrupts.

## Hardware


A GPIO controller must comply with the following hardware model:

-   Contains logic for controlling configurable input and output pins.
-   Has a dedicated (non-shared) register interface to the logic.
-   Has status and enable bits for any pin that can interrupt the processor.
-   Memory-mapped (on-SoC) controllers are strongly recommended. If a GPIO expander (off-SoC GPIO controller) is required, its system interrupt must be edge-triggered and connected to a memory-mapped GPIO controller.
-   "Bit-banging" (implementing low-level, timing-based serial protocols) is discouraged because results cannot be guaranteed.

A GPIO controller is modeled as a device in the ACPI namespace, with the following features:

-   \_HID or \_ADR and \_CRS objects, at a minimum.
-   The device's \_CRS resources must maintain mapping between system resources and the pins to which they relate. This is achieved by modeling the GPIO controller as a collection of banks, each representing 64 or fewer GPIO pins and the system resources for that set of pins. Resources claimed in the \_CRS must be listed in bank order (for example, first set of resources map to bank 0, next set maps to bank 1, and so on)

The GPIO controller namespace may optionally include:

-   GPIO IO OpRegion declarations for access to the controller's pins by ASL methods
-   GPIO-signaled ACPI Event Information (\_AEI object) for use of the standard ACPI System Event mechanism. In this case, the GPIO interrupts used for this purpose must be non-shared (Exclusive), and the corresponding event method (\_Lxx/\_Exx) must appear under the target GPIO controller's namespace (not in the \_GPE namespace).

Peripherals that connect to GPIO pins must:

-   Include GPIO IO descriptors in their \_CRS for any GPIO I/O pins consumed.
-   Include GPIO Interrupt descriptors in their \_CRS object for any GPIO interrupt pins consumed.
-   Designate wakeup-capable GPIO interrupts as such using the WAKE flag in the descriptor.

## Driver details


For each unique GPIO controller (\_HID) that appears in the namespace, SoC manufacturers must provide a GPIO controller driver based on the KMDF GPIO class extension.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20General%20Purpose%20Input/Output%20%28GPIO%29%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




