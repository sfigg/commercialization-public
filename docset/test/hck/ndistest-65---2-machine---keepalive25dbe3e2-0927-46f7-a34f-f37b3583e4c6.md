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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20NDISTest%206.5%20-%202%20Machine%20-%20KeepAlive%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




