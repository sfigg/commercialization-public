---
author: joshbax-msft
title: NDISTest 6.5 - 2 Machine - SRIOVTestingDevice
description: NDISTest 6.5 - 2 Machine - SRIOVTestingDevice
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b942f540-934a-40e9-bac6-9d72223ff53b
---

# NDISTest 6.5 - 2 Machine - SRIOVTestingDevice


This test toggles the VMQ & SRIOV registry key entries on the miniport adapter and validates whether the miniport adapter’s data path behaves as expected. This is a 2-machine test and is like any normal LAN certification test which requires Support and Message adapter renaming. It does not require any other additional configuration.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.SRIOV.SRIOV</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows 8.1 x64 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Basic Certification Functional</p></td>
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

 

 






