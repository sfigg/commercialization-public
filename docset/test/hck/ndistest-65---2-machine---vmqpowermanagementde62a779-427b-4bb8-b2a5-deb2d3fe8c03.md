---
author: joshbax-msft
title: NDISTest 6.5 - 2 Machine - VMQPowerManagement
description: NDISTest 6.5 - 2 Machine - VMQPowerManagement
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 75081013-5df4-452f-859b-c881af1978e5
---

# NDISTest 6.5 - 2 Machine - VMQPowerManagement


This test uses the PowerManager class to query the supported sleep states that the machine supports. The test then creates a queue on the VMQ-capable adapter, sets a filter on the queue, brings the machine to standby/ hibernation state, wakes up the machine (either automatic or manual), and then runs a send/receive test to check if the queue /filter setting is properly preserved during the sleep-wake up cycle.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.VMQ.VirtualMachineQueues</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8 (x64) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows Server 2012 R2</p></td>
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

 

 






