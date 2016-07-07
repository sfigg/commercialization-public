---
author: joshbax-msft
title: Win8.MBN.GSM.TestAuthChallenge
description: Win8.MBN.GSM.TestAuthChallenge
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0f4ea550-a56e-4684-b2ac-fe4231232ac6
---

# Win8.MBN.GSM.TestAuthChallenge


This test performs an authentication challenge for each authentication protocol that the device supports.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.MobileBroadband.GSM.EAPSIM</p>
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
<td><p>AuthChallengeRand1</p></td>
<td><p>A random authentication hexadecimal challenge.</p></td>
</tr>
<tr class="even">
<td><p>AuthChallengeRand2</p></td>
<td><p>A random authentication hexadecimal challenge.</p></td>
</tr>
<tr class="odd">
<td><p>AuthChallengeRand3</p></td>
<td><p>A random authentication hexadecimal challenge.</p></td>
</tr>
<tr class="even">
<td><p>AuthChallengeAutn</p></td>
<td><p>An autn authentication hexadecimal challenge.</p></td>
</tr>
<tr class="odd">
<td><p>AuthChallengeNetworkName</p></td>
<td><p>The authentication challenge network name.</p></td>
</tr>
</tbody>
</table>

 

 

 






