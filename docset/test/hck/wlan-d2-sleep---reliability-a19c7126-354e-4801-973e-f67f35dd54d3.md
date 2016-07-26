---
author: joshbax-msft
title: WLAN D2 Sleep - Reliability
description: WLAN D2 Sleep - Reliability
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d722284c-1b69-49e2-bf34-2fa0b75b36ec
---

# WLAN D2 Sleep - Reliability


This test validates the D2 sleep functionality. The device should enter the D2 state after pressing the power button in two minutes, and then return to D0 after 8 hours.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.MeetScanAndConnReq Device.Network.WLAN.CSBBase.MeetScanAndConnReq Device.Network.WLAN.CSBNLO.SupportNetworkListOffload Device.Network.WLAN.NLO.SupportNetworkListOffload</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~270 minutes</p></td>
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

Devices that support InstantGo will automatically pass the test.

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
<td><p><strong>TestDeviceSupports5ghz</strong></p></td>
<td><p>If the device supports 5 GHz network, this will be set to true.</p>
<p>Default value: True</p></td>
</tr>
<tr class="even">
<td><p><strong>AP1IPAddress</strong></p></td>
<td><p>The IP address of the WAN port of the first physical access point.</p>
<p>Default value: 192.168.2.2</p></td>
</tr>
<tr class="odd">
<td><p><strong>AP1Password</strong></p></td>
<td><p>The root password for the first physical access point.</p>
<p>Default value: password</p></td>
</tr>
<tr class="even">
<td><p><strong>AP2IPAddress</strong></p></td>
<td><p>The IP address of the WAN port of the second physical access point.</p>
<p>Default value: 192.168.2.3</p></td>
</tr>
<tr class="odd">
<td><p><strong>AP2Password</strong></p></td>
<td><p>The root password for the second physical access point.</p>
<p>Default value: password</p></td>
</tr>
</tbody>
</table>

 

 

 






