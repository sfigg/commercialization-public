---
author: joshbax-msft
title: NDISTest 6.5 - WlanOffloads - OSStack
description: NDISTest 6.5 - WlanOffloads - OSStack
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: afebb81b-2456-424a-b68b-d50d681f3398
---

# NDISTest 6.5 - WlanOffloads - OSStack


This automated test verifies the WLANOffloads.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.MeetScanAndConnReq Device.Network.WLAN.CSBBase.MeetScanAndConnReq Device.Network.WLAN.CSBWoWLAN.MustSupportWakeOnWLAN Device.Network.WLAN.WoWLAN.ImplementWakeOnWLAN</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~40 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Wireless LAN (802.11) Testing Prerequisites](wireless-lan--80211--testing-prerequisites.md).

The **KeepAlive** suite is available in this test and consists of the following test:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Pre-configuration</p></td>
<td><ul>
<li><p>Rebind the operating system stack on the DUT and the SUT.</p></li>
<li><p>Configure one of the access point to use WPA2/AES.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>Protocol offload test</p></td>
<td><p>Enable Protocol offload for protocols specified by m_TestProtocols and test for a successful offload.</p></td>
</tr>
<tr class="odd">
<td><p>Interception test</p></td>
<td><p>Test that the offload protocols are bypassed by the test device firmware after the device resumes following a successful protocol offload.</p></td>
</tr>
<tr class="even">
<td><p>Invalid packet test</p></td>
<td><p>Verify that no responses on invalid packets are received from the test adapter with offload enabled.</p></td>
</tr>
<tr class="odd">
<td><p>Traffic test</p></td>
<td><p>Verify that no response for packets sent to other hosts on the same subnet are sent by test adapter with offload enabled.</p></td>
</tr>
<tr class="even">
<td><p>Enable disable test</p></td>
<td><p>Verify no response for packets sent for following configurations:</p>
<ul>
<li><p>Disable protocol offload but program protocol offloads with OID_PM_ADD_PROTOCOL_OFFLOAD. Test for a failed offload.</p></li>
<li><p>Disable protocol offload and do not program protocols for offload.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>Protocol offload capacity test</p></td>
<td><ul>
<li><p>Add as many IPv4 ARP protocol offloads as the driver supports, and test the first address, last address, and any random IPv4 offloaded address in between by sending an ARP request packet when in sleep state.</p></li>
<li><p>Perform the same test as above for IPv6 NS offload. Add a single IPv6 target address in each offload request.</p></li>
<li><p>Perform the same test as above for IPv6 NS offload, but add two target addresses in each offload request. Test the first two addresses and the last address added to the IPv6 target address.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

## More information


### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>AP1Password</strong></p></td>
<td><p>The root password for the first physical access point.</p></td>
</tr>
<tr class="even">
<td><p><strong>AP1IPAddress</strong></p></td>
<td><p>The IP address of the WAN port of the first physical access point.</p></td>
</tr>
<tr class="odd">
<td><p><strong>AP2Password</strong></p></td>
<td><p>The root password for the second physical access point.</p></td>
</tr>
<tr class="even">
<td><p><strong>AP2IPAddress</strong></p></td>
<td><p>The root password for the second physical access point.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20NDISTest%206.5%20-%20WlanOffloads%20-%20OSStack%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




