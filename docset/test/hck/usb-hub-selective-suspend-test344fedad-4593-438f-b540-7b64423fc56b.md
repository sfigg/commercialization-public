---
author: joshbax-msft
title: USB Hub Selective Suspend Test
description: USB Hub Selective Suspend Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d94cc1f2-ceb0-45e2-9b00-8c577ad9af73
---

# USB Hub Selective Suspend Test


This test verifies that a USB 3.0 hub reports the port status bits correctly (as described in the USB 3.0 Specification) and that the USB hub supports suspend operations. The test also verifies that downstream devices do not fall off the bus when the hub resumes from the selective suspend state.

**Note**  
For more information, see the [USB 3.0 Specification](http://go.microsoft.com/fwlink/p/?LinkId=232665).

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Connectivity.UsbHub.SupportSuspend Device.Connectivity.UsbHub.Usb3ReportPortStatusBitsCorrectly</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~6 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [USB Device.Connectivity Testing Prerequisites](usb-deviceconnectivity-testing-prerequisites.md).

In addition, this test requires:

-   A USB 3.0 device or USB 2.0 device, depending on the speed of the device under test.

Before scheduling the test, plug the secondary device into a downstream exposed connector of the USB hub under test.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Connectivity Testing](troubleshooting-deviceconnectivity-testing.md).

 

 






