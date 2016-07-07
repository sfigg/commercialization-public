---
author: joshbax-msft
title: Win6\_3MBN..CDMA..TestSignalLoss..PacketServiceAttached
description: Win6\_3MBN..CDMA..TestSignalLoss..PacketServiceAttached
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f1e84f4a-8030-4741-8875-a797901a7cfb
---

# Win6\_3MBN..CDMA..TestSignalLoss..PacketServiceAttached


This test validates that the device provides status indications in the right sequence when signal strength loss occurs and when a packet service was attached.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.MobileBroadband.CDMA.ComplyWithBaseReq</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Mobile Broadband Testing Prerequisites](mobile-broadband-testing-prerequisites.md).

The test verifies the device correctly behaves when the device moves in and out of signal range while packet service attached. The test will prompt the user to “Please move device to a no-signal area (waiting for indication)”. When the device correctly transitions to a no signal state, the test will then prompt the user to “Please move device back to a signal area (waiting for indication)”.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Network Testing](troubleshooting-devicenetwork-testing.md).

## More information


### Parameters

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>AccessString</p></td>
<td><p>The access string to use when establishing a connection.</p></td>
</tr>
<tr class="even">
<td><p>UserName</p></td>
<td><p>The user name to use when establishing a connection.</p></td>
</tr>
<tr class="odd">
<td><p>Password</p></td>
<td><p>The password to use when establishing a connection.</p></td>
</tr>
</tbody>
</table>

 

 

 






