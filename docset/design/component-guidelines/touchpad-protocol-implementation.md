---
title: Protocol Implementation
description: This section provides guidelines for implementing the communication protocol that is used by Windows Precision Touchpad devices.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 633DE191-E209-4F58-AE52-6250AEE96079
---

# Protocol Implementation


This section provides guidelines for implementing the communication protocol that is used by Windows Precision Touchpad devices.

Touchpad devices are expected to use the Human Interface Device (HID) protocol to communicate with their Windows host.

A good understanding of the HID protocol is needed to be able to understand the information presented here. See the following resources for information about the HID protocol:

-   [Device Class Definition for Human Interface Devices (HID) Version 1.11](http://www.usb.org/developers/hidpage#class-definitions)
-   [HID Usage Tables Version 1.12](http://www.usb.org/developers/hidpage#hid-usage)
-   [HID Over I2C Protocol Specification Version 1.0](https://msdn.microsoft.com/library/windows/hardware/Dn642101.aspx)

Windows includes a HID class driver and corresponding HID I²C, HID USB and HID BTH miniport drivers. So there is no need to develop 3rd-party drivers for Windows Precision Touchpad devices that use one of these buses. However, if you want to use a 3rd-party bus controller, or develop your own to use with your device, you can do that.

If you want your device to connect via an alternate bus, then a 3rd-party HID mini-port driver might be required. You only need to report the usages described in this topic, in the firmware for your device. Windows will use your firmware and its own HID drivers to enable mouse and gesture capabilities for your device, and also provide Windows applications with access to your device.

A sample descriptor is provided in the [Sample Report Descriptors](touchpad-sample-report-descriptors.md) topic.

## In this section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[Required HID Descriptors](touchpad-required-hid-descriptors.md)</p></td>
<td><p>This topic presents the required HID descriptors (and device attributes) for a Windows Precision Touchpad device in Windows 10 and later operating systems.</p></td>
</tr>
<tr class="even">
<td><p>[Required HID Top-Level Collections](touchpad-required-hid-top-level-collections.md)</p></td>
<td><p>This section discusses the required HID top-level collections that are used for precision touchpad reporting in Windows 10 and later operating systems.</p></td>
</tr>
<tr class="odd">
<td><p>[Sample Report Descriptors](touchpad-sample-report-descriptors.md)</p></td>
<td><p>This topic presents a sample report descriptor and sample descriptor excerpts for a Windows Precision Touchpad device.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Protocol%20Implementation%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




