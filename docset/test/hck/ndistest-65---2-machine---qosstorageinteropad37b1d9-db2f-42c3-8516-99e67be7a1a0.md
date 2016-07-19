---
author: joshbax-msft
title: NDISTest 6.5 - 2 Machine - QosStorageInterop
description: NDISTest 6.5 - 2 Machine - QosStorageInterop
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1fce2859-05ec-4742-81a9-85dee6c1e7a4
---

# NDISTest 6.5 - 2 Machine - QosStorageInterop


The DUT must have a QoS-capable CNA adapter and the willing-bit should be turned off. The SUT must have a network adapter capable of working at DUT's line rate. A ISCSI drive should be configured to work over the CNA over either ISCSI connection offered by the CAN or an SMB share should be configured and mounted on drive for testing a NetworkDirect-capable network adapter. No more than one SMB share should be configured on the test machine to ensure no false failures. Test cases are as follows:

-   Network Traffic ETS Enforcement ensures that CNA does not throttle any network traffic flow when the network traffic class is configured at the traffic rate observed when ETS is disabled.

-   Storage Traffic ETS Enforcement ensures that CNA does not throttle any storage traffic flow when the storage traffic class is configured at the traffic rate observed when ETS is disabled.

-   1:1 Network:Storage -- Traffic Distribution of oversubscribed bandwidth ensures that CNA is able to evenly distribute network and storage traffic overload.

-   2:1 Network:Storage -- Traffic Distribution of oversubscribed bandwidth ensures that CNA is able to prioritize network traffic over storage traffic at a ratio of 2:1.

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

 

 






