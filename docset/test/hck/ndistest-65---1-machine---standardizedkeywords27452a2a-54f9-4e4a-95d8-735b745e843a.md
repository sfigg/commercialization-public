---
author: joshbax-msft
title: NDISTest 6.5 - 1 Machine - StandardizedKeywords
description: NDISTest 6.5 - 1 Machine - StandardizedKeywords
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6d7b3eea-8bbd-463d-b61d-44f2d1336da0
---

# NDISTest 6.5 - 1 Machine - StandardizedKeywords


This test goes through each standardized keyword supported by NDIS and verifies that capabilities reported by NDIS via OID or other interfaces are consistent with the current value of the keyword. If the miniport does not support a given keyword, the test will verify that adding the keyword does not adversely affect miniport behavior. If the miniport does support a keyword, NDIS will iterate through possible values of the keyword. If any unsupported keywords are found, a failure will be logged.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.Base.AdvProperties</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [LAN Testing Prerequisites](lan-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting LAN Testing](troubleshooting-lan-testing.md).

 

 






