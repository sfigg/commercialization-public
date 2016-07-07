---
author: joshbax-msft
title: NDISTest 6.5 - 2 Machine - QosEts
description: NDISTest 6.5 - 2 Machine - QosEts
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8f039120-d5b0-49c0-acde-4131e8987d15
---

# NDISTest 6.5 - 2 Machine - QosEts


This automated test validates that the network adapter’s implementation of ETS and Strict Priority Traffic Classes is in accordance with IEEE 802.1Qaz as of August 4, 2010. The test is divided into groups shown below. Each group is tested with and without strict priority traffic present. Traffic is generated via TCP socket connections and results are captured on the receive path of the support adapter. The captured results are then processed and analyzed to determine total link utilization and the utilization of each traffic classes. Test Groups Single ETS Traffic class Minimum Required ETS traffic classes Maximum supported ETS traffic classes. ETS underutilization. Verifies that when an ETS traffic classes use less than its allocated bandwidth other traffic classes can use more than their allocation.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.DCB.DCB</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2012 R2</p></td>
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

 

 






