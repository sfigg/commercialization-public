---
author: joshbax-msft
title: Win7.MBN.CDMA.TestPin
description: Win7.MBN.CDMA.TestPin
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d13f4f24-1019-4bf3-a0d0-118c8477db52
---

# Win7.MBN.CDMA.TestPin


If the device supports PIN1, the automated test attempts to enable and disable the PIN1 with a valid and invalid PIN. If the device supports PUK1, the test attempts to disable PIN1 with an invalid PIN until the device is PUK1 locked. Finally, the test attempts to unlock the device using the PUK1 PIN.

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
<td><p>Windows 7 (x64) Windows 7 (x86)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Basic Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Mobile Broadband Testing Prerequisites](mobile-broadband-testing-prerequisites.md).

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
<td><p>PIN1</p></td>
<td><p>Specifies the PIN1 to use on the device.</p></td>
</tr>
<tr class="even">
<td><p>PUK1</p></td>
<td><p>Specifies the PUK1 to use on the device.</p></td>
</tr>
</tbody>
</table>

 

 

 






