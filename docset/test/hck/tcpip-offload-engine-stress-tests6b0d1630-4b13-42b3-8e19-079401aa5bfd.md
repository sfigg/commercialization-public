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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20TCPIP%20offload%20engine%20stress%20tests%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




