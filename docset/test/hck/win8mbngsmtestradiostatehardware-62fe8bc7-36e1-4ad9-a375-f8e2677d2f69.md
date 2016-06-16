---
author: joshbax-msft
title: Win8.MBN.GSM.TestRadioStateHardware
description: Win8.MBN.GSM.TestRadioStateHardware
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a1fe911c-e859-45ce-a7b1-7a342de08ac3
---

# Win8.MBN.GSM.TestRadioStateHardware


This test attempts to disable and enable the software radio. If a hardware radio switch is supported by the device, the test will prompt the user to switch the hardware radio off and on.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.MobileBroadband.GSM.ComplyWithBaseReq</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86)</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Mobile Broadband Testing Prerequisites](mobile-broadband-testing-prerequisites.md). If the device supports **WWAN\_CTRL\_CAPS\_HW\_RADIO\_SWITCH**, the test will prompt you to turn off and on the radio hardware switch.

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
<td><p>The access string used when making a connection.</p></td>
</tr>
<tr class="even">
<td><p>UserName</p></td>
<td><p>The user name used when making a connection.</p></td>
</tr>
<tr class="odd">
<td><p>Password</p></td>
<td><p>The password used when making a connection.</p></td>
</tr>
</tbody>
</table>

 

 

 






