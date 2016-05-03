---
author: joshbax-msft
title: NDISTest 6.5 - WlanNetmonMode
description: NDISTest 6.5 - WlanNetmonMode
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 74085418-4839-402f-be59-4441de07dda1
---

# NDISTest 6.5 - WlanNetmonMode


This automated test suite verifies the device can be put into netmon mode.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.MeetScanAndConnReq Device.Network.WLAN.Base.SupportPromiscuousAndMulticastPacketFiltering Device.Network.WLAN.CSBBase.MeetScanAndConnReq Device.Network.WLAN.CSBBase.SupportPromiscuousAndMulticastPacketFiltering Device.Network.WLAN.CSBSoftAP.SupportSoftAP Device.Network.WLAN.SoftAP.SupportSoftAP</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Wireless LAN (802.11) Testing Prerequisites](wireless-lan--80211--testing-prerequisites.md).

The following suites are available:

-   SendRecv\_ext

The SendRecv\_ext suite consists of the following:

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
<td><p>MgmtPacketsIndicated</p></td>
<td><p>Verify that the device under test (DUT) reports all management packets that were sent by the access point to the operating system.</p></td>
</tr>
<tr class="even">
<td><p>SetDUTNetmonModeAndPhy</p></td>
<td><ul>
<li><p>Configure the DUT to run in network monitor mode and verify that all supported OIDs can be called.</p></li>
<li><p>Query supported PHYs on the DUT, system under test (SUT), and the access point.</p></li>
<li><p>Configure the DUT to use DOT11_OPERATION_MODE_NETWORK_MONITOR.</p></li>
<li><p>Query desired PHY list to see if the DUT still supports that OID.</p></li>
<li><p>Set PHY on all devices to the same PHY.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>NetmonMode</p></td>
<td><p>Verify that the DUT reports all packets transmitted between the SUT and the access point to the operating system while in DOT11_OPERATION_MODE_NETWORK_MONITOR mode.</p></td>
</tr>
<tr class="even">
<td><p>SetDUTNetmonModeAndPhy</p></td>
<td><ul>
<li><p>Configure the DUT to run in network monitor mode and verify all supported OIDs can be called.</p></li>
<li><p>Query supported PHYs on the DUT, SUT, and the access point.</p></li>
<li><p>Configure the DUT to use DOT11_OPERATION_MODE_NETWORK_MONITOR.</p></li>
<li><p>Query desired PHY list to see if the DUT still supports that OID.</p></li>
<li><p>Set PHY on all devices to the same PHY.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>NetmonMode</p></td>
<td><p>Verify that the DUT reports all packets transmitted between the SUT and the access point to the operating system while in DOT11_OPERATION_MODE_NETWORK_MONITOR mode.</p></td>
</tr>
<tr class="even">
<td><p>SetDUTNetmonModeAndPhy</p></td>
<td><ul>
<li><p>Configure the DUT to run in network monitor mode and verify all supported OIDs can be called.</p></li>
<li><p>Query supported PHYs on the DUT, SUT, and the access point.</p></li>
<li><p>Configure the DUT to use DOT11_OPERATION_MODE_NETWORK_MONITOR.</p></li>
<li><p>Query desired PHY list to see if the DUT still supports that OID.</p></li>
<li><p>Set PHY on all devices to the same PHY.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>NetmonMode</p></td>
<td><p>Verify that the DUT reports all packets transmitted between the SUT and the access point to the operating system while in DOT11_OPERATION_MODE_NETWORK_MONITOR mode.</p></td>
</tr>
<tr class="even">
<td><p>SetDUTNetmonModeAndPhy</p></td>
<td><ul>
<li><p>Configure the DUT to run in network monitor mode and verify all supported OIDs can be called.</p></li>
<li><p>Query supported PHYs on the DUT, SUT, and the access point.</p></li>
<li><p>Configure the DUT to use DOT11_OPERATION_MODE_NETWORK_MONITOR.</p></li>
<li><p>Query desired PHY list to see if the DUT still supports that OID.</p></li>
<li><p>Set PHY on all devices to the same PHY.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>NetmonMode</p></td>
<td><p>Verify that the DUT reports all packets transmitted between the SUT and the access point to the operating system while in DOT11_OPERATION_MODE_NETWORK_MONITOR mode.</p></td>
</tr>
<tr class="even">
<td><p>SetDUTNetmonModeAndPhy</p></td>
<td><ul>
<li><p>Configure the DUT to run in network monitor mode and verify all supported OIDs can be called.</p></li>
<li><p>Query supported PHYs on the DUT, SUT, and the access point.</p></li>
<li><p>Configure the DUT to use DOT11_OPERATION_MODE_NETWORK_MONITOR.</p></li>
<li><p>Query desired PHY list to see if the DUT still supports that OID.</p></li>
<li><p>Set PHY on all devices to the same PHY.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>NetmonMode</p></td>
<td><p>Verify that the DUT reports all packets transmitted between the SUT and the access point to the operating system while in DOT11_OPERATION_MODE_NETWORK_MONITOR mode.</p></td>
</tr>
</tbody>
</table>

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20NDISTest%206.5%20-%20WlanNetmonMode%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




