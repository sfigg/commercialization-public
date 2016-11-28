---
title: Windows Pointer Device Overview
description: In Windows 8, a Windows pointer device refers to devices that support the pen, or touch, functionality.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: EC4BA3B0-F9B0-497C-9B71-97E415DFB45D
---

# Windows Pointer Device Overview


In Windows 8, a *Windows pointer device* refers to devices that support the pen, or touch, functionality. In the context of a Windows Pointer Device, a pen is a single contact point active stylus input, also known as tablet-pen that supports hovering. Touch functionality refers to a single finger contact point or two or more concurrent finger contacts.

## Windows Pointer Devices


Windows pointer devices are expected to use the human interface device (HID) protocol in order to communicate with the host. The following documents include information about the protocol:

-   [Device Class Definition for Human Interface Devices (HID) Version 1.11](http://www.usb.org/developers/hidpage/HID1_11.pdf)

-   [HID Usage Tables](http://www.usb.org/developers/hidpage/Hut1_12v2.pdf)

-   [HID Over I2C Protocol Specification Version 1.0](http://msdn.microsoft.com/library/windows/hardware/hh852380)

Because Windows 8 includes an HID class driver and corresponding HID I2C and HID USB miniport drivers, you do not need to implement one. You only need to report the usages described in this white paper in the firmware for your pointer device. Windows will use your firmware and its own HID driver to enable touch and pointer capabilities for your device and furnish the Windows touch and pointer APIs with access to your device.

To report data for any type of integrated stylus, the input must be reported by using a pen Collection Application(CA) collection. Similarly, touch data should be reported by using a touch CA collection. External stylus devices should use the digitizer CA collection. Sample descriptors are included under [Implementing Top-Level Collections in Multi-touch Devices](implementing-top-level-collections-in-multitouch-devices.md) section for multi-touch devices.

## Windows Hardware Certification


As part of Windows 8 touch hardware certification, digitizers are required to appear to the Windows operating system as human interface device (HID) devices and follow the rules described in [Required HID Descriptors](required-descriptors.md#required-hid-descriptors).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Windows%20Pointer%20Device%20Overview%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




