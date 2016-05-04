---
author: joshbax-msft
title: WiFi Direct Proximity Tests - Peer to Peer Stress
description: WiFi Direct Proximity Tests - Peer to Peer Stress
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f6643f5a-e51c-4a28-a813-1a577b2b0ab1
---

# WiFi Direct Proximity Tests - Peer to Peer Stress


This test repeatedly runs a basic end-to-end connection scenario by using the PeerFinder APIs over Wi-Fi Direct.

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
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~4 minutes</p></td>
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

This test requires three computers.

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
<td><p><strong>APPID</strong></p></td>
<td><p>Unique app id of the stress application.</p>
<p>Default value: appid</p></td>
</tr>
<tr class="even">
<td><p><strong>Iterations</strong></p></td>
<td><p>Number of loops that occur before the test completes.</p></td>
</tr>
<tr class="odd">
<td><p><strong>AmountOfData</strong></p></td>
<td><p>The amount of data, in bytes, that is transferred between two devices during each iteration.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[WiFi Direct Proximity Tests](wifi-direct-proximity-tests.md)

 

 







