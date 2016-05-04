---
author: joshbax-msft
title: WiFi Direct StandardDiscovery Targeted
description: WiFi Direct StandardDiscovery Targeted
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e34adf74-23f6-412f-be2d-8203a230bd11
---

# WiFi Direct StandardDiscovery Targeted


This test suite verifies the various required discovery types to be supported by the driver.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.CSBWiFiDirect.SupportAtLeast2WiFiDirectPortsConcurrently Device.Network.WLAN.CSBWiFiDirect.SupportAtLeast4Clients Device.Network.WLAN.WiFiDirect.SupportAtLeast2WiFiDirectPortsConcurrently Device.Network.WLAN.WiFiDirect.SupportAtLeast4Clients</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
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

This test suite does the following:

-   The SUT is brought up in discoverable mode.

-   The DUT discovers the SUT in a loop for a fixed amount of time and expects to find the SUT.

-   The DUT and SUT sides will either be connected to the access point or not. All the permutations of NoAP, APConnectBeforeWFD and APConnectAfterWFD are covered.

-   Ping the access point while doing WFD discovery to test multichannel support in the access point.

-   Verify that the access points are on non-social channels.

-   The passing criteria of the tests are based on how quickly the devices were found.

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
<tr class="odd">
<td><p><strong>AP1Channel</strong></p></td>
<td><p>The wireless channel configured on the first access point.</p></td>
</tr>
<tr class="even">
<td><p><strong>AP2Channel</strong></p></td>
<td><p>The wireless channel configured on the second access point.</p></td>
</tr>
</tbody>
</table>

 

 

 






