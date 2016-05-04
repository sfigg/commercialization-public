---
author: joshbax-msft
title: NDISTest 6.5 - WlanRoaming
description: NDISTest 6.5 - WlanRoaming
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9d68847e-d209-4a7d-bb67-3d170d324096
---

# NDISTest 6.5 - WlanRoaming


This automated test suite verifies the device can roam under various circumstances, such as losing connection to the access point, the access point is not responding. The test suite also verifies that the device does not roam to an IBSS configured with the same SSID as the access point.

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
<td><p>~14 minutes</p></td>
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

-   Roaming\_cmn

The Roaming\_cmn suite consists of the following:

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
<td><p>VerifyBssidNotInScanList</p></td>
<td><p>Verify the BSSID is removed from the scane list of the DUT within 30 seconds after the access point is powered down</p></td>
</tr>
<tr class="even">
<td><p>VerifyFailoverRoaming</p></td>
<td><p>Verify the DUT can successfully connect with another access point in the same ESS after losing connection with the current access point.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyPowerSaveRoaming</p></td>
<td><p>Verify the DUT roams to a new access point after the original access point disappears during standby.</p></td>
</tr>
<tr class="even">
<td><p>VerifyProfileRoaming</p></td>
<td><p>After a request from the operating system, verify the DUT connects to a new access point or SSID after the original access point disappears during standby.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyPowerSaveRoaming</p></td>
<td><p>Verify the DUT roams to a new access point after the original access point disappears during hibernate.</p></td>
</tr>
<tr class="even">
<td><p>VerifyProfileRoaming</p></td>
<td><p>After a request from the operating system, verify the DUT connects to a new access point or SSID after the original access point disappears during hibernate.</p></td>
</tr>
</tbody>
</table>

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

 

 






