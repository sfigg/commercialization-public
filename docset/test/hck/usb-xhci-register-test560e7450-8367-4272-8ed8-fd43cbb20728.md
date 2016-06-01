---
author: joshbax-msft
title: USB xHCI Register Test
description: USB xHCI Register Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 76d22632-f171-4294-a78e-96d23a2a3f35
---

# USB xHCI Register Test


This automated test verifies requirements of Extensible Host Controller Interface (xHCI) controllers. The xHCI under test must:

-   Implement at least one xHCI Supported Protocol Capability Structure for USB 2.0 as described in section 7.2 of the xHCI Specification.

-   Support 64 bit addressing and register access support described in sections 5.3.6 and 5.1 of the xHCI Specification respectively.

-   Support MSI and/or MSI-X Interrupts as described in section 5.2.6 of the xHCI Specification.

-   Support at least 31 primary streams per endpoint, as described in section 4.12.2 of the xHCI Specification.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.BusController.UsbController.ImplementAtLeastOneXhciSpcStructForUSB2 Device.BusController.UsbController.XhciAc64Bit Device.BusController.UsbController.XhciSupportMsiMsixInterrupts Device.BusController.UsbController.XhciSupportsMinimum31Streams</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
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

 

 






