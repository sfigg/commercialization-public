---
author: joshbax-msft
title: Dot11W Tests
description: Dot11W Tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: fced02db-34ba-4b06-9bb2-21ed367b2411
---

# Dot11W Tests


This test attempts to connect to the 802.11w access point by using the SSID and the passphrase parameters. It will validate that the connection to the access point is using 802.11w. After the connection is validated, it will put the machine to sleep and wake it up. Once awake, the test ensures that the machine is still connected to the 802.11w access point.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.SupportIEEE80211w Device.Network.WLAN.CSBBase.SupportIEEE80211w</p>
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
<td><p><strong>Dot11WSSID</strong></p></td>
<td><p>The SSID of the 802.11w access point.</p>
<p>Default value: Dot11TestAP</p></td>
</tr>
<tr class="even">
<td><p><strong>Dot11WKey</strong></p></td>
<td><p>The passphrase for the 802.11w test network.</p>
<p>Default value: 12345678</p></td>
</tr>
</tbody>
</table>

 

 

 






