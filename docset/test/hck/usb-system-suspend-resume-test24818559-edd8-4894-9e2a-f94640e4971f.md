---
author: joshbax-msft
title: USB System Suspend Resume Test
description: USB System Suspend Resume Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 867fed9c-512a-476c-abca-c8d3d85d7ea0
---

# USB System Suspend Resume Test


This test verifies that a USB device continues to appear in Device Manager after the system resumes from S3 sleep state.

The test sends the system into S3 and then resumes the system. Upon system resume, the test seeks the device under test in the device manager to verify that it is both present and functional.

The suspend and resume cycle repeats 20 times. If the device under test is found upon resume every time, the test passes. If the device under test is no longer found in device manager, the test fails.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Connectivity.UsbDevices.MustBeFunctionalAfterResume Device.Connectivity.UsbDevices.MustResumeWithoutForcedReset</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows Server 2008 R2 (x64)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~70 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [USB Device.Connectivity Testing Prerequisites](usb-deviceconnectivity-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Connectivity Testing](troubleshooting-deviceconnectivity-testing.md).

 

 






