---
author: joshbax-msft
title: WiFi Direct Data Performance Tests PreAP5 MultiBand MultiChannel
description: WiFi Direct Data Performance Tests PreAP5 MultiBand MultiChannel
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e1544084-1fd1-4237-b662-24953c9a3b4b
---

# WiFi Direct Data Performance Tests PreAP5 MultiBand MultiChannel


This test suite validates that a Wi-Fi device meets the performance requirements for throughput, jitter and packet loss as defined by Windows Certification Program for WLAN Devices over a Wi-Fi Direct Link, when either the device under test (DUT) becomes a Group Owner (GO) or it joins an existing GO.

This test suite validates both of the above connection scenarios. Wi-Fi Direct Invitation scenario is executed one time. The JoinExistingGo scenario is executed three times by using different combinations of quality of service (QoS) tagging on both the STA and the Wi-Fi Direct ports. Note that performance measurements are validated on a link only if QoS tagging is used on that link.

In this test suite, the DUT connects to a 5 Ghz network and the system under test (SUT) connects to 2.4 Ghz network.

After successful Wi-Fi Direct pairing is achieved, network performance measurements are collected over the Wi-Fi Direct link while simultaneously measuring throughput on the station connection. These metrics are then validated against performance requirements to determine whether to pass or fail the tests.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.HighThroughputLowLatency Device.Network.WLAN.CSBBase.HighThroughputLowLatency Device.Network.WLAN.CSBWiFiDirect.SupportAtLeast2WiFiDirectPortsConcurrently Device.Network.WLAN.CSBWiFiDirect.SupportAtLeast4Clients Device.Network.WLAN.WiFiDirect.SupportAtLeast2WiFiDirectPortsConcurrently Device.Network.WLAN.WiFiDirect.SupportAtLeast4Clients</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Wireless LAN (802.11) Testing Prerequisites](wireless-lan--80211--testing-prerequisites.md) and read [WiFi Direct Data Performance Tests](wifi-direct-data-performance-tests.md).

This test suite requires three computers (DUT, SUT, AP) that have Wi-Fi Direct capable WLAN network interface adapters. It also requires an 802.11ac router, two configurable Access Points and two gigabit Ethernet switches.

The following software is required for testing a Wi-Fi Direct capable device:

-   The Driver of the Wi-Fi Direct capable device.

-   The latest Windows HCK filters and updates.

## Troubleshooting


For troubleshooting information, see [Troubleshooting WiFi Direct Data Performance Tests](troubleshooting-wifi-direct-data-performance-tests.md) and [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

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
<td><p>The IP address of the WAN port of the first physical access point. This address is used to establish a Telnet session during AP configuration.</p></td>
</tr>
<tr class="odd">
<td><p><strong>AP2Password</strong></p></td>
<td><p>The root password for the second physical access point.</p></td>
</tr>
<tr class="even">
<td><p><strong>AP2IPAddress</strong></p></td>
<td><p>The IP address of the WAN port of the second physical access point. This address is used to establish a Telnet session during AP configuration.</p></td>
</tr>
<tr class="odd">
<td><p><strong>AcApChannel5Ghz</strong></p></td>
<td><p>5Ghz Channel of the 802.11ac AP that the Client connects to. This should be a valid 5Ghz channel.</p></td>
</tr>
<tr class="even">
<td><p><strong>AP2ChannelNonSocial</strong></p></td>
<td><p>2.4Ghz Channel of the AP that the Client will be connecting to. Should be a non-social channel (7-10).</p>
<p>Default value: 8</p></td>
</tr>
<tr class="odd">
<td><p><strong>AcApSSID_5</strong></p></td>
<td><p>5 Ghz SSID of the 802.11ac AP.</p></td>
</tr>
<tr class="even">
<td><p><strong>AcApKey_5</strong></p></td>
<td><p>5 Ghz SSID of the 802.11ac AP.</p></td>
</tr>
<tr class="odd">
<td><p><strong>PhyType</strong></p></td>
<td><p>Version of 802.11 protocol {n | ac}.</p>
<p>Default value: n</p></td>
</tr>
<tr class="even">
<td><p><strong>ChannelWidth</strong></p></td>
<td><p>Channel width { 20 | 40 | 80 }. Frequency of the wireless channel. 80 is intended for 802.11ac capable devices only.</p>
<p>Default value: 20</p></td>
</tr>
<tr class="odd">
<td><p><strong>NumberOfSpatialStreams</strong></p></td>
<td><p>The number of streams sent by multiple antennas on a MIMO system.</p>
<p>Default value: 2</p></td>
</tr>
<tr class="even">
<td><p><strong>EnableTracing</strong></p></td>
<td><p>Determines whether to enable tracing. We recommend that you set this value to <strong>Yes</strong> for debugging purposes only.</p>
<p>Default value: No</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[WiFi Direct Data Performance Tests](wifi-direct-data-performance-tests.md)

 

 







