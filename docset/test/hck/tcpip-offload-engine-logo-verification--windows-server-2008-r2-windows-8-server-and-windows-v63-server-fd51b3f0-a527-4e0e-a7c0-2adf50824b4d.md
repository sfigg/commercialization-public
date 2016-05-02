---
author: joshbax-msft
title: TCPIP offload engine logo verification (Windows Server 2008 R2, Windows 8 Server and Windows v6.3 Server)
description: TCPIP offload engine logo verification (Windows Server 2008 R2, Windows 8 Server and Windows v6.3 Server)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: bb6ffe0c-bf1e-4492-88ab-13cabd038d8b
---

# TCPIP offload engine logo verification (Windows Server 2008 R2, Windows 8 Server and Windows v6.3 Server)


This automated test uses a remote machine to craft and analyze packet flows to/from the TCP/IP offload NIC. The offload machine runs a service giving the remote machine some control over its actions and state. The remote machine hosts a protocol driver for control over custom packet flows. The remote machine runs a series of tests for protocol conformance of the offload stack.

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
<td><p>~600 minutes</p></td>
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

**Important**  
The job can only be launched from "Device Console". Attempts to schedule the job in "Job Monitor" or "Job Explorer" will fail by hanging the job in the "Scheduler" status forever.

 

Prerequisites:

-   A machine pool with at least two machines.

-   Each machine must have two network cards.

-   For hardware certification, a local support device must be provided. It must be the same as the test device and remote support device.

## Troubleshooting


For troubleshooting information, see [Troubleshooting LAN Testing](troubleshooting-lan-testing.md).

**Note**  
Because IPsec and the Windows Firewall interfere with this test, these services are disabled. They are not enabled when the tests complete. If you need to restore any of these services, type the following in an elevated command prompt: **sc config policyagent start= auto & sc config ikeext start= auto & net start policyagent & net start ikeext & netsh advfirewall set all state on** and then press Enter.

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20TCPIP%20offload%20engine%20logo%20verification%20%28Windows%20Server%202008%20R2,%20Windows%208%20Server%20and%20Windows%20v6.3%20Server%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




