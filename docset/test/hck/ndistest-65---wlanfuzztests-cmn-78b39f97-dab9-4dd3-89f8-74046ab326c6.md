---
author: joshbax-msft
title: NDISTest 6.5 - WLanFUZZTests\_cmn
description: NDISTest 6.5 - WLanFUZZTests\_cmn
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f17a788a-c2df-419e-83d1-cc8b5f930850
---

# NDISTest 6.5 - WLanFUZZTests\_cmn


This test suite validates that DUT handles corrupt frames gracefully. The tests generate corrupted management frames for the SoftAP hosted on DUT machine to receive. All fields are corrupted except for fields in the 802.11 header. IEs are also generated with corrupt fields. The hosted network on DUT should handle the frames gracefully.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.MeetScanAndConnReq Device.Network.WLAN.CSBBase.MeetScanAndConnReq</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~100 minutes</p></td>
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

The following suites are available in this test:

-   Security\_cmn

The Security\_cmn suite consists of the following:

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
<td><p>PerformDisassocDeauthTest (DOT11_MGMT_SUBTYPE_DISASSOCIATION)</p></td>
<td><ul>
<li><p>Send a broadcast disassociation with random a unicast source and BSSID. Verify the DUT does not indicate disconnect.</p></li>
<li><p>Send a disassociation with a random SA, BSSID, and DA. Verify the DUT does not indicate disconnect.</p></li>
<li><p>Send a broadcast disassociation from the access point to the DUT.</p></li>
<li><p>Send a disassociation from an access point to the DUT that does not contain a reason code.</p></li>
<li><p>Verify the DUT can connect to an access point.</p></li>
<li><p>Send unicast packets from the DUT to the access point.</p></li>
<li><p>Send broadcast packets from the DUT to the access point.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>PerformDisassocDeauthTest (DOT11_MGMT_SUBTYPE_DEAUTHENTICATION)</p></td>
<td><ul>
<li><p>Send a broadcast deauthentication with random unicast source and BSSID. Verify the DUT does not indicate disconnect.</p></li>
<li><p>Send a deauthentication with random SA, BSSID, and DA. Verify the DUT does not indicate disconnect.</p></li>
<li><p>Send a broadcast deauthentication from an access point to the DUT.</p></li>
<li><p>Send a deauthentication from an access point to the DUT that does not contain a reason code.</p></li>
<li><p>Verify the DUT can connect to an access point.</p></li>
<li><p>Send unicast packets from the DUT to an access point.</p></li>
<li><p>Send broadcast packets from the DUT to an access point.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>PerformAuthRespTest</p></td>
<td><p>Send malformed authentication that does not contain a mandatory fixed IE from the access point to the DUT during connect. Verify the DUT does not successfully connect to the access point.</p></td>
</tr>
<tr class="even">
<td><p>PerformAdhocBeaconTest</p></td>
<td><ul>
<li><p>Send malformed IBSS beacons on same the channel as the IBSS while the DUT is connected to the SUT.</p></li>
<li><p>Verify the DUT can connect to an IBSS SUT.</p></li>
<li><p>Send unicast packets from the DUT to the SUT.</p></li>
<li><p>Send broadcast packets from the DUT to the SUT.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>PerformAssocRespTest</p></td>
<td><ul>
<li><p>Verify the DUT can receive malformed association responses from a {0}/{1} access point while trying to connect to an access point.</p></li>
<li><p>Verify the DUT can connect to an access point.</p></li>
<li><p>Send unicast packets from the DUT to the access point.</p></li>
<li><p>Send broadcast packets from the DUT to the access point.</p></li>
</ul>
<p>This test is repeated for all supported authentication and cipher types.</p></td>
</tr>
<tr class="even">
<td><p>PerformBeaconConnectedTest</p></td>
<td><ul>
<li><p>Verify the DUT can receive malformed beacons with valid source addresses while connected to {1}/{2}/{3} access points.</p></li>
<li><p>Verify the DUT can connect to an access point.</p></li>
<li><p>Send unicast packets from the DUT to the access point</p></li>
<li><p>Send broadcast packets from the DUT to the access point.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>PerformProbeScanTest</p></td>
<td><ul>
<li><p>Verify the DUT can receive malformed probe responses from an access point while disconnected and scanning.</p></li>
<li><p>Verify the DUT can connect to an access point.</p></li>
<li><p>Send unicast packets from the DUT to an access point.</p></li>
<li><p>Send broadcast packets from the DUT to an access point.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>PerformBeaconScanTest</p></td>
<td><ul>
<li><p>Verify the DUT can receive malformed beacons.</p></li>
<li><p>Verify the DUT can connect to an access point.</p></li>
<li><p>Send unicast packets from the DUT to an access point.</p></li>
<li><p>Send broadcast packets from the DUT to an access point.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>PerformDriverUnloadLoad</p></td>
<td><p>Verify the DUT can be loaded and unloaded.</p></td>
</tr>
</tbody>
</table>

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20NDISTest%206.5%20-%20WLanFUZZTests_cmn%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




