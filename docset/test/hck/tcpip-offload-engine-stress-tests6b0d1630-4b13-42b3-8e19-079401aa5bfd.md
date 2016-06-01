---
author: joshbax-msft
title: TCPIP offload engine stress tests
description: TCPIP offload engine stress tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: dee7cc09-f765-4f2c-acac-a9db41934d6f
---

# TCPIP offload engine stress tests


This test runs a 3-hour stress using WinSock. Many connections are established over time. They send and receive data. Meanwhile, at random intervals, some connections are forced to offload or upload.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.TCPChimney.ComplyWithNDIS Device.Network.LAN.TCPChimney.ComplyWithTCPIPProtocol Device.Network.LAN.TCPChimney.HandlesOutOfOrderData Device.Network.LAN.TCPChimney.ImplementSufficientlyGranularTimers Device.Network.LAN.TCPChimney.NeighborStateObjTimestampsComplyWithWDK Device.Network.LAN.TCPChimney.Support1024Connections Device.Network.LAN.TCPChimney.Support64bitAddresses</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~180 minutes</p></td>
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


This job can only be launched from "Device Console". Attempts to schedule the job in "Job Monitor" or "Job Explorer" will fail by hanging the job in the "Scheduler" status forever.

Prerequisites:

-   A machine pool with at least two machines.

-   Each machine must have two network cards.

-   For logo submission, a local support device must be provided. It must be the same as the test device and remote support device.

Before you run the test, complete the test setup as described in the test requirements: [LAN Testing Prerequisites](lan-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting LAN Testing](troubleshooting-lan-testing.md).

 

 






