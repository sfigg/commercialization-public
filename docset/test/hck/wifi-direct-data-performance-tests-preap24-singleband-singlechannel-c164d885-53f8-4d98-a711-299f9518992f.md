---
author: joshbax-msft
title: WiFi Direct Data Performance Tests PreAP24 SingleBand SingleChannel
description: WiFi Direct Data Performance Tests PreAP24 SingleBand SingleChannel
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c90db66b-0ad4-4d3c-a551-f7271112b13a
---

# WiFi Direct Data Performance Tests PreAP24 SingleBand SingleChannel


This test suite validates that a Wi-Fi device meets the performance requirements for throughput, jitter and packet loss as defined by Windows Certification Program for WLAN Devices over a Wi-Fi Direct Link when the device under test (DUT) becomes a Group Owner (GO) or joins an existing GO.

This test suite validates both of the above connection scenarios. Wi-Fi Direct Invitation scenario is executed one time. The JoinExistingGo scenario is executed three times by using different combinations of quality of service (QoS) tagging on both the STA and the Wi-Fi Direct ports. Note that performance measurements are validated on a link only if QoS tagging is used on that link.

In this test suite, both the test device and the support device connect to 2.4 Ghz networks, but they do not connect to the same access point.

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


Before you run the test, complete the test setup as described in the test requirements: [Wireless LAN (802.11) Testing Prerequisites](wireless-lan--80211--testing-prerequisites.md) and and read [WiFi Direct Data Performance Tests](wifi-direct-data-performance-tests.md).

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
<td><p><strong>AcApChannelNonSocial</strong></p></td>
<td><p>2.4Ghz Channel of the 802.11ac AP that the Client connects to. Should be a non-social channel (2-5).</p>
<p>Default value: 4</p></td>
</tr>
<tr class="even">
<td><p><strong>AP2ChannelNonSocial</strong></p></td>
<td><p>2.4Ghz Channel of the AP that the Client will be connecting to. Should be a non-social channel (7-10).</p>
<p>Default value: 8</p></td>
</tr>
<tr class="odd">
<td><p><strong>AcApSSID_24</strong></p></td>
<td><p>2.4 Ghz SSID of the 802.11ac AP.</p></td>
</tr>
<tr class="even">
<td><p><strong>AcApKey_24</strong></p></td>
<td><p>Key of 2.4 Ghz SSID of the 802.11ac AP.</p></td>
</tr>
<tr class="odd">
<td><p><strong>PhyType</strong></p></td>
<td><p>Version of 802.11 protocol {n | ac}.</p>
<p>Default value: n</p></td>
</tr>
<tr class="even">
<td><p><strong>ChannelWidth</strong></p></td>
<td><p>Channel width { 20 | 40 | 80 }. Frequency of the wireless channel. 80 is only intended for 802.11ac capable devices.</p>
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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WiFi%20Direct%20Data%20Performance%20Tests%20PreAP24%20SingleBand%20SingleChannel%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





