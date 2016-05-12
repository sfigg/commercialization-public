---
title: Protocol Implementation
description: This section provides guidelines for Touchscreen protocol implementation. Windows Touchscreen devices are expected to use the Human Interface Device (HID) protocol to communicate with the host.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 00FC87E0-68AF-475B-B5C7-5B4EA7CB8AC6
---

#  Protocol Implementation


This section provides guidelines for Touchscreen protocol implementation. Windows Touchscreen devices are expected to use the Human Interface Device (HID) protocol to communicate with the host.

A good understanding of the HID protocol is needed to be able to understand the information presented here. See the following resources for information about the HID protocol:

-   [Device Class Definition for Human Interface Devices (HID) Version 1.11](http://www.usb.org/developers/hidpage#class-definitions)
-   [HID Usage Tables Version 1.12](http://www.usb.org/developers/hidpage#hid-usage)
-   [HID Over I2C Protocol Specification Version 1.0](https://msdn.microsoft.com/library/windows/hardware/Dn642101.aspx)

Windows includes a HID class driver and corresponding HID I²C, HID USB and HID BTH miniport drivers. So there is no need to develop 3rd-party drivers for Windows Touchscreen devices that use one of these buses (unless you are developing or using a 3rd-party bus controller). Just be aware that using a bus that is different from the ones listed, might result in the need for a third party miniport driver to expose the Touchscreen as a HID device to Windows.

You only need to report the usages that are described in this section, in the firmware for your Windows Touchscreen device. Windows will use your firmware and its own HID drivers to enable touch and gesture capabilities for your device, and give Windows applications access to your device.

It is important to note that only touch solutions that use Microsoft inbox drivers are considered compatible. Any solutions that use 3rd-party drivers (either miniport or filter drivers) cannot apply for compatibility.

A sample descriptor is provided in [Sample Report Descriptors](touchscreen-sample-report-descriptors.md).

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
<td><p>[Required HID Descriptors](touchscreen-required-hid-descriptors.md)</p></td>
<td><p>This topic presents the required HID descriptors (and device attributes) for a Windows Touchscreen device in Windows 10 and later operating systems.</p></td>
</tr>
<tr class="even">
<td><p>[Required HID Top-Level Collections](touchscreen-required-hid-top-level-collections.md)</p></td>
<td><p>This topic discusses the required HID top-level collections that are used for Touchscreen reporting in Windows 10 and later operating systems.</p></td>
</tr>
<tr class="odd">
<td><p>[Packet Reporting Modes](touchscreen-packet-reporting-modes.md)</p></td>
<td><p>This topic provides information about the packet reporting modes for a Windows Touchscreen device in Windows 10.</p></td>
</tr>
<tr class="even">
<td><p>[Sample Report Descriptors](touchscreen-sample-report-descriptors.md)</p></td>
<td><p>This topic presents a sample report descriptor and a sample descriptor excerpt for a Windows Touchscreen device.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20%20Protocol%20Implementation%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




