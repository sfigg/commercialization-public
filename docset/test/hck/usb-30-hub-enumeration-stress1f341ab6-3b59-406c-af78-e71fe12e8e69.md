---
author: joshbax-msft
title: USB 3.0 Hub Enumeration Stress
description: USB 3.0 Hub Enumeration Stress
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: bad12bfd-f030-4ff4-a1c4-39bce274aca4
---

# USB 3.0 Hub Enumeration Stress


This test verifies that a USB 3.0 hub does not turn off SuperSpeed termination on downstream ports, when overcurrent or port-reset events occur. The test stresses enumeration of the hub under test and verifies that the hub, as well as a downstream peripheral, enumerate properly. The downstream peripheral must remain on the SuperSpeed bus and not switch to high speed.

**Note**  
This test applies to USB 3.0 hubs only. The test automatically passes for non-SuperSpeed capable hubs.

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Connectivity.UsbHub.SuperSpeedRemainsOnAfterPortReset</p>
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
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [USB Device.Connectivity Testing Prerequisites](usb-deviceconnectivity-testing-prerequisites.md).

Additionally, this test requires that a SuperSpeed capable device (not a hub) is attached to one of the downstream ports of the USB hub under test.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Connectivity Testing](troubleshooting-deviceconnectivity-testing.md).

 

 






