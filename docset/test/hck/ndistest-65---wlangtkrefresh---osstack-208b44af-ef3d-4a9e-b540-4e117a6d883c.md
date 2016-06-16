---
author: joshbax-msft
title: NDISTest 6.5 - WlanGTKRefresh - OSStack
description: NDISTest 6.5 - WlanGTKRefresh - OSStack
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3ccc0698-51c7-499c-abde-c0ca12c81751
---

# NDISTest 6.5 - WlanGTKRefresh - OSStack


The automated test validates the GTK offload behavior by placing the device in Connected Standby and then validating that the device can still send data packets when it resumes from sleep.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.MeetScanAndConnReq Device.Network.WLAN.CSBBase.MeetScanAndConnReq Device.Network.WLAN.CSBWoWLAN.MustSupportWakeOnWLAN Device.Network.WLAN.WoWLAN.ImplementWakeOnWLAN</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~11 minutes</p></td>
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

The following suites are available in this test:

-   PM\_GtkRefresh

The PM\_GtkRefreshsuite consists of the following:

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
<td><p>Pre-configuration</p></td>
<td><ul>
<li><p>Rebind the operating system stack on the DUT and the SUT.</p></li>
<li><p>Configure one of the access point to use WPA2/AES.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p></p></td>
<td><ul>
<li><p>Connect the DUT to the access point.</p></li>
<li><p>Connect the SUT to the access point.</p></li>
<li><p>Put the DUT to sleep (d2).</p></li>
<li><p>After 4 minutes, disconnect the SUT.</p></li>
<li><p>After 30 seconds, reconnect the SUT.</p></li>
<li><p>Ping the access point from the DUT.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

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
</tbody>
</table>

 

 

 






