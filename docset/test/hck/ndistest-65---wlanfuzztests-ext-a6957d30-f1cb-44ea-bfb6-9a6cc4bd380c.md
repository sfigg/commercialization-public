---
author: joshbax-msft
title: NDISTest 6.5 - WLanFUZZTests\_ext
description: NDISTest 6.5 - WLanFUZZTests\_ext
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 80e68ed4-5841-4e9a-af99-0e33574417b5
---

# NDISTest 6.5 - WLanFUZZTests\_ext


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
<td><p>~30 minutes</p></td>
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

-   Dot11n\_Security\_ext

-   SoftAP\_Security\_ext

The Dot11n\_Security\_ext suite consists of the following:

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
<td><p>PerformAssocResponseTest</p></td>
<td><p>Verify the DUT can handle a malformed association response.</p></td>
</tr>
<tr class="even">
<td><p>PerformProbeResponseTest</p></td>
<td><p>Verify the DUT can handle a malformed probe response.</p></td>
</tr>
<tr class="odd">
<td><p>PerformBeaconTest</p></td>
<td><p>Verify the DUT can handle malformed beacons.</p></td>
</tr>
</tbody>
</table>

 

The SoftAP\_Security\_ext suite consists of the following:

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
<td><p>PerformAssocReqTest</p></td>
<td><ul>
<li><p>Verify the DUT can handle malformed association requests from an SUT when the SSID is set to NDISTEST_EXTAP_1835.</p></li>
<li><p>Verify the DUT can handle malformed association requests from a SUT when the SSID is set to a random value.</p></li>
<li><p>Verify the SUT can connect to an DUT-SoftAP.</p></li>
<li><p>Send unicast packets from DUTCommHelper to SUTCommHelper.</p></li>
<li><p>Send unicast packets from SUTCommHelper to DUTCommHelper.</p></li>
<li><p>Send broadcast packets from DUTCommHelper to SUTCommHelper.</p></li>
<li><p>Send broadcast packets from SUTCommHelper to DUTCommHelper.</p></li>
<li><p>Restart ExtAP after verifying connectivity.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>PerformReAssocReqTest</p>
<p></p></td>
<td><ul>
<li><p>Verify the DUT can handle malformed re-association requests from an SUT when the SSID is set to NDISTEST_EXTAP_1835.</p></li>
<li><p>Verify the DUT can handle malformed re-association requests from a SUT when the SSID is set to a random value.</p></li>
<li><p>Verify the SUT can connect to an DUT-SoftAP.</p></li>
<li><p>Send unicast packets from DUTCommHelper to SUTCommHelper.</p></li>
<li><p>Send unicast packets from SUTCommHelper to DUTCommHelper.</p></li>
<li><p>Send broadcast packets from DUTCommHelper to SUTCommHelper.</p></li>
<li><p>Send broadcast packets from SUTCommHelper to DUTCommHelper.</p></li>
<li><p>Restart ExtAP after verifying connectivity.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>PerformProbeRequestTest</p></td>
<td><ul>
<li><p>Verify the DUT can handle malformed probe requests from an SUT when the SSID is set to NDISTEST_EXTAP_1835.</p></li>
<li><p>Verify the DUT can handle malformed probe requests from a SUT when the SSID is set to a random value.</p></li>
<li><p>Verify the SUT can connect to an DUT-SoftAP.</p></li>
<li><p>Send unicast packets from DUTCommHelper to SUTCommHelper.</p></li>
<li><p>Send unicast packets from SUTCommHelper to DUTCommHelper.</p></li>
<li><p>Send broadcast packets from DUTCommHelper to SUTCommHelper.</p></li>
<li><p>Send broadcast packets from SUTCommHelper to DUTCommHelper.</p></li>
<li><p>Restart ExtAP after verifying connectivity.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>PerformDisassocDeauthTest</p></td>
<td><ul>
<li><p>Connect the SUT to an DUT-SoftAP.</p></li>
<li><p>Send broadcast disassociation with a random unicast source and BSSID. Verify the DUT does not indicate disconnect.</p></li>
<li><p>Verify the SUT can connect to an DUT-SoftAP.</p></li>
<li><p>Send unicast packets from DUTCommHelper to SUTCommHelper.</p></li>
<li><p>Send unicast packets from SUTCommHelper to DUTCommHelper.</p></li>
<li><p>Send broadcast packets from DUTCommHelper to SUTCommHelper.</p></li>
<li><p>Send broadcast packets from SUTCommHelper to DUTCommHelper.</p></li>
<li><p>Restart ExtAP after verifying connectivity.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>PerformAuthReqTest</p></td>
<td><ul>
<li><p>Verify the DUT can handle malformed authentication requests from a SUT when the SSID is set to a random value.</p></li>
<li><p>Verify the SUT can connect to an DUT-SoftAP.</p></li>
<li><p>Send unicast packets from DUTCommHelper to SUTCommHelper.</p></li>
<li><p>Send unicast packets from SUTCommHelper to DUTCommHelper.</p></li>
<li><p>Send broadcast packets from DUTCommHelper to SUTCommHelper.</p></li>
<li><p>Send broadcast packets from SUTCommHelper to DUTCommHelper.</p></li>
<li><p>Restart ExtAP after verifying connectivity.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>PerformDeAuthReqTest</p></td>
<td><ul>
<li><p>Send a broadcast deauthentication with a random unicast source and BSSID. Verify the DUT does not indicate disconnect.</p></li>
<li><p>Send deauthentication with random SA, BSSID, and DA. Verify the DUT does not indicate disconnect.</p></li>
<li><p>Send a broadcast deauthentication from an access point to the DUT.</p></li>
<li><p>Send deauthentication from the SUT to the DUT that does not contain a reason code.</p></li>
<li><p>Verify the DUT can handle malformed deauthentication requests from a SUT when the SSID is set to a random value.</p></li>
<li><p>Verify the SUT can connect to an DUT-SoftAP.</p></li>
<li><p>Send unicast packets from DUTCommHelper to SUTCommHelper.</p></li>
<li><p>Send unicast packets from SUTCommHelper to DUTCommHelper.</p></li>
<li><p>Send broadcast packets from DUTCommHelper to SUTCommHelper.</p></li>
<li><p>Send broadcast packets from SUTCommHelper to DUTCommHelper.</p></li>
<li><p>Restart ExtAP after verifying connectivity.</p></li>
<li><p>Validate that SoftAP does not interleave association indication blocks for the same client.</p></li>
<li><p>Validate that SoftAP does not send disassociation indication when no client is connected to it.</p></li>
<li><p>Verify the DUT can be loaded and unloaded.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

 

 






