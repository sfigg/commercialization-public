---
author: joshbax-msft
title: WCN Device Verify the device is able to display the WPS Pin (Manual Test)
description: WCN Device Verify the device is able to display the WPS Pin (Manual Test)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5b8a02db-d127-480f-b9ff-aac5e0afb130
---

# WCN Device Verify the device is able to display the WPS Pin (Manual Test)


This test verifies that the device is able to display the Wi-Fi Protected Setup (WPS) PIN.

The device should have a way to display the WPS PIN. If the WPS PIN is static, it should be printed on the device and should be exactly 8 numeric characters. If the WPS PIN is dynamic, then the device should have a way to display the current WPS PIN on the device (like an LCD display). A dynamic WPS PIN can be 4 or 8 numeric characters. The test will pass if the device meets the specified criteria and fail if it does not.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Connectivity.Network.VerticalPairing.WCN</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~40 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [USB Device.Connectivity Testing Prerequisites](usb-deviceconnectivity-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Connectivity Testing](troubleshooting-deviceconnectivity-testing.md).

 

 






