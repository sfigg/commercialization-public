---
author: joshbax-msft
title: NDISTest 6.5 - 2 Machine - PM\_WolPattern
description: NDISTest 6.5 - 2 Machine - PM\_WolPattern
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 304ca981-ca19-4b64-b77c-8784a3ad1ada
---

# NDISTest 6.5 - 2 Machine - PM\_WolPattern


This test targets Wake on Pattern capabilities of NDIS 6.20 and later adapters. It uses the WoL\_TestBase framework for easily testing each packet variation. The pattern variations tested are enumerated in WakePatternType. Additionally, this test will run a capacity test to add max capacity patterns to the miniport and test the first and last.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.CS.NetworkWake Device.Network.LAN.CS.WakeReasonDetection Device.Network.LAN.PM.WakeOnLANPatterns</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~30 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [LAN Testing Prerequisites](lan-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting LAN Testing](troubleshooting-lan-testing.md).

 

 






