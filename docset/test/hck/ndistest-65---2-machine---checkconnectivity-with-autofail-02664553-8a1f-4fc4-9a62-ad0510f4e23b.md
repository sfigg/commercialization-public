---
author: joshbax-msft
title: NDISTest 6.5 - 2 Machine - CheckConnectivity with AutoFail
description: NDISTest 6.5 - 2 Machine - CheckConnectivity with AutoFail
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e5f6f3bf-798a-40ad-a7e9-9fbcf39c8cb6
---

# NDISTest 6.5 - 2 Machine - CheckConnectivity with AutoFail


This test performs a send and receive stress test between test and support adapters. It randomly determines the send IRQL, the number of packets in each packet list, packet size, and so on. It then flips the sending and receiving adapters so the test becomes bi-directional.

The test enables fault injection feature called AutoFail through a Driver Verifier setting on the miniport driver, while sending the packets on the test adapter.

AutoFail is feature that deterministically injects faults by failing dependent APIs without violating the contract and without modifying the product component or test collateral.

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
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Optional</p></td>
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

 

 






