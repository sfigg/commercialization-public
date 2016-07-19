---
author: joshbax-msft
title: NDISTest 6.5 - 2 Machine - KeepAlive
description: NDISTest 6.5 - 2 Machine - KeepAlive
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a5801db4-5ea3-4cf4-9979-d9ab78b739c5
---

# NDISTest 6.5 - 2 Machine - KeepAlive


This test validates the network adapter’s ability to offload various protocols when the machine is put in the low power state.

Low Power Protocol Offloads:

-   ARP (IPv4)

-   NS (IPv6)

Test Cases:

-   Protocol Offload Test - Enable Protocol offload for protocols specified by m\_TestProtocols and test for a successful offload.

-   Interception Test - Test offload protocols are bypassed by the Test device firmware after the machine resumes following a successful protocol offload.

-   Invalid Packet Test - Verify that no response on invalid packets is received from the test adapter with offload enabled.

-   Traffic Test -Verify no response for packets sent to other hosts on same subnet is sent by Test adapter with offload enabled.

-   Enable Disable Test -Verify no response for packets sent for following configurations -

    -   Enable Protocol offload with OID\_PM\_PARAMETERS but do not program any protocol for offload and test for a failed offload.

    -   Disable Protocol offload but program protocol offloads with OID\_PM\_ADD\_PROTOCOL\_OFFLOAD and test for a failed offload.

    -   Disable Protocol offload and do not program protocols for offload.

Cases Not Tested:

-   Ability of Test device to respond to requests after network connectivity is lost and resumed when machine is in sleep state.

These protocols are not tested and not required to be supported by the Test device:

-   ARP (IPv6)

-   NS (IPv4)

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.CS.PresenceOffload Device.Network.LAN.PM.PowMgmtNDIS</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~35 minutes</p></td>
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

 

 






