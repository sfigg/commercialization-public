---
title: Protocol Implementation
description: Windows Precision Touchpads are expected to use the Human Interface Device (HID) protocol to communicate with the host. This topic describes how to implement the HID protocol for Windows Precision Touchpads.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: CCF82524-E64C-4A86-AB30-FFB07C64D03A
---

#  Protocol Implementation


Windows Precision Touchpads are expected to use the Human Interface Device (HID) protocol to communicate with the host. This topic describes how to implement the HID protocol for Windows Precision Touchpads.

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
<td><p>[Required HID Descriptors](windows-precision-touchpad-required-hid-descriptors.md)</p></td>
<td><p>This topic describes required Human Interface Devices (HID) descriptors for the Windows Precision Touchpad HID protocol implementation.</p></td>
</tr>
<tr class="even">
<td><p>[Required HID Top-Level Collections](windows-precision-touchpad-required-hid-top-level-collections.md)</p></td>
<td><p>A Windows Precision Touchpad device shall expose 3 mandatory top-level collections; Windows Precision Touchpad, Mouse and Configuration. An optional (recommended) collection for firmware update can also be implemented.</p></td>
</tr>
<tr class="odd">
<td><p>[Sample Report Descriptors](windows-precision-touchpad-sample-report-descriptors.md)</p></td>
<td><p>This topic provides sample report descriptors.</p></td>
</tr>
</tbody>
</table>

 

Before you read this document, you must have a good understanding of the HID protocol. The following documents include information about the protocol:

-   [Device Class Definition for Human Interface Devices (HID) Version 1.11](http://www.usb.org/developers/hidpage/HID1_11.pdf)

-   [HID Usage Tables](http://www.usb.org/developers/hidpage/Hut1_12v2.pdf)

-   [HID Over I2C Protocol Specification Version 1.0](http://msdn.microsoft.com/library/windows/hardware/hh852380)

Windows includes a HID class driver and corresponding HID I²C and HID USB miniport drivers; therefore, there is no need or allowance for any third-party drivers for Windows Precision Touchpads. You only need to report the usages that are described in this topic in the firmware for your Windows Precision Touchpad. Windows will use your firmware and its own HID drivers to enable mouse and gesture capabilities for your device and furnish Windows applications with access to your device.

A sample descriptor is included in [Windows Precision Touchpad Sample Report Descriptors](windows-precision-touchpad-sample-report-descriptors.md).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20%20Protocol%20Implementation%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




