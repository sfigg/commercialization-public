---
author: joshbax-msft
title: NDISTest 6.5 - 2 Machine - Stats
description: NDISTest 6.5 - 2 Machine - Stats
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 359bae6f-ccae-4375-91a2-c2edb05a79ea
---

# NDISTest 6.5 - 2 Machine - Stats


For NDIS 6.0 miniports, this test verifies that miniport maintains and report statistics from OID\_GEN\_STATISTICS correctly. The test also verifies that the miniport correctly supports statistics OIDs OID\_GEN\_RCV\_OK OID\_GEN\_RCV\_NO\_BUFFER OID\_GEN\_RCV\_ERROR. It sends a bunch of packets to the test adapter and checks that the statistics get incremented. It expects the OID\_GEN\_RCV\_NO\_BUFFER to incremented exactly by the number of packets that were dropped.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.Base.NDISRequirements</p>
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

 

 






