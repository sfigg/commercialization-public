---
author: joshbax-msft
title: NDISTest 6.5 - 2 Machine - TxFlowControl
description: NDISTest 6.5 - 2 Machine - TxFlowControl
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1a7f7bf3-c812-4065-a3e9-9e398dfe5c51
---

# NDISTest 6.5 - 2 Machine - TxFlowControl


This test performs a simple send and receive from the test to the support adapter and checks the following:

-   The test adapter will not receive any PAUSE frame.

-   The test adapter will receive a PAUSE frame with maximum quanta (0xFFFF). We expect the sending be paused by the period expected (for example, 1G 33.5ms)

-   The test adapter will receive a PAUSE frame with maximum quanta (0xFFFF) followed by another PAUSE frame with minimum quanta (0x0000). We expect the sending will not be paused. It is because the second PAUSE frame should resume the paused test adapter. From the first to third, we use the unicast MAC address as the destination address in the PAUSE frame.

-   We will use multicast MAC address (01-80-C2-00-00-01) as the destination address in the PAUSE frame. Then send this PAUSE frame to the test machine. We expect the sending be paused by the period expected (for example, 1G 33.5ms).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.Base.NDISRequirements Device.Network.LAN.Base.SupportIEEEE8023</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
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

 

 






