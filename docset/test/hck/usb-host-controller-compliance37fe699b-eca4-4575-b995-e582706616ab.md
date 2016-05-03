---
author: joshbax-msft
title: USB Host Controller Compliance
description: USB Host Controller Compliance
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9a098057-b0dd-4be5-9632-83c3aacb033d
---

# USB Host Controller Compliance


This automated test checks for one or more valid UHCI/OHCI, EHCI or xHCI host controllers in the system. It performs basic register checks on the host controllers to determine the versions of the associated host controller specifications.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.BusController.UsbController.SpecificationCompliance Device.BusController.UsbController.XhciVersionCompliant</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~7 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [USB Bus Controller Testing Prerequisites](usb-bus-controller-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Bus Controller Testing](troubleshooting-bus-controller-testing.md).

The test fails if:

-   This automated test checks for one or more valid UHCI/OHCI, EHCI or xHCI host controllers in the system. It performs basic register checks on the host controllers to determine the versions of the associated host controller specifications.

-   An UHCI/OHCI host controller does not meet version 1.10 or later versions of the UHCI Specification.

-   An EHCI host controller does not meet version .95 or later versions of the EHCI Specification.

-   An xHCI host controller does not meet version 1.0 or later version of the xHCI Specification.

## More information


Details for this test are divided into two groups:

-   PCI Bus Enumeration

-   Minimum OHCI/UHCI/EHCI/xHCI Version Compliance

**PCI Bus Enumeration**

The PCI bus is also enumerated to search for the USB OHCI/UHCI/EHCI/xHCI host controllers. The test scans a list of PCI devices and examines the class code PCI configuration register of each to determine if it is an OHCI/UHCI/EHCI/xHCI USB controller. The PCI Class Code register has the values shown in the following table for USB controllers.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Field</th>
<th>Bits</th>
<th>Read/Write</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>PI</p></td>
<td><p>7-0</p></td>
<td><p>R</p></td>
<td><p>PROGRAMMING INTERFACE</p>
<p>A constant value of '20h' Identifies the device being an EnhancedHCI Host Controller</p>
<p>A constant value of '10h' Identifies the device being an OpenHCI Host Controller</p>
<p>A constant value of '00h' Identifies the device as having no specific register level programming interface defined (UHCI)</p></td>
</tr>
<tr class="even">
<td><p>SC</p></td>
<td><p>15-8</p></td>
<td><p>R</p></td>
<td><p>SUB CLASS</p>
<p>A constant value of '03h' Identifies the device being a universal serial bus</p></td>
</tr>
<tr class="odd">
<td><p>BC</p></td>
<td><p>23-16</p></td>
<td><p>R</p></td>
<td><p>BASE CLASS</p>
<p>A constant value of '0Ch' Identifies the device being a Serial Bus Controller</p></td>
</tr>
</tbody>
</table>

 

If the base class is 0Ch and the sub class is 03h, the PCI device is a universal serial bus controller. In this case, the programming interface is examined to determine the type of universal serial bus controller.

**Minimum OHCI/UHCI/EHCI/xHCI version compliance**

Each OHCI/UHCI/EHCI/xHCI controller must meet a minimum version of the corresponding host controller specification. The version of the specification that each host controller supports is determined as follows:

-   EHCI - The HCIVERSION register at Offset 0x02 of the EHCI capability registers is read. This register contains a 16-bit BCD encoded version of the EHCI Specification to which the host controller conforms. It must be at least 0x0095 or the test fails

-   OHCI - The test should check the HcRevision value in the operational registers on OCHI controllers for compliance with Open Host Controller Interface Specification v1.0a.

-   UHCI - The UHCI Specification does not define a version register for the version of the UHCI Specification that the host controller implements. Instead the PCI Serial Bus Release Number register at offset 0x60 in configuration space is read. This 8-bit register must be version 1.1 or the test fails (0x10 indicates version 1.1 of the UHCI Specification).

-   xHCI - The HCIVERSION register at Offset 0x02 of the xHCI capability registers is read. This register contains a 16-bit BCD encoded version of the xHCI Specification to which the host controller conforms. It must be at least 0x0100 or the test fails.

If any of the UHCI, OHCI, EHCI or xHCI controllers in the system do not meet the versions documented above, the host controller compliance test fails.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20USB%20Host%20Controller%20Compliance%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




