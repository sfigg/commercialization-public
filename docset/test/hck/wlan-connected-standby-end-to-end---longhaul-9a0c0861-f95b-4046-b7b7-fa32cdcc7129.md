---
author: joshbax-msft
title: WLAN Connected Standby End to End - LongHaul
description: WLAN Connected Standby End to End - LongHaul
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5203ca89-4e2b-4862-9f68-597faba1d38e
---

# WLAN Connected Standby End to End - LongHaul


This test verifies that the Wireless LAN device on systems that support InstantGo delivers reliable connectivity in Connected Standby.

The device seamlessly transitions between D0 and D2 states while in Connected Standby. The device maintains L2 connectivity while in Connected Standby. The device wakes up on matching wake patterns only. There are no spurious wakes while in Connected Standby. The wake packets are delivered without delay or buffering. The Real Time Communication app stays connected while in Connected Standby for 12 hours.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.CSBBase.MeetScanAndConnReq Device.Network.WLAN.CSBBase.ReliableCSConnectivity Device.Network.WLAN.CSBWoWLAN.MustSupportWakeOnWLAN Device.Network.WLAN.WoWLAN.ImplementWakeOnWLAN</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~725 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Optional</p></td>
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

If you are still having problems completing this test, try the following:

-   If the device exits Connected Standby earlier than expected, make sure the device under test remains idle while the test runs.

-   If you get a system error for a control channel trigger, ensure that the network adapter is compatible with Connected Standby and it complies with NDIS 6.30 requirements.

-   If the OID request for a network adapter fails, ensure that the network adapter complies with NDIS 6.30 requirements.

-   If the network device removes unexpectedly, ensure that the driver is not crashing.

-   If the control channel trigger is detached, ensure that there is good reception and that the network adapter maintains L2 connectivity in Connected Standby.

-   If the network adapter disconnects, ensure that there is good reception.

-   If the push notification is triggered too early, ensure that the network adapter complies with NDIS 6.30 requirements and that the network adapter maintains L2 connectivity in Connected Standby.

-   If the push notification is triggered too late, ensure that the network adapter complies with NDIS 6.30 requirements and that the network adapter maintains L2 connectivity in Connected Standby.

-   If the push notification did not trigger on time, ensure that the network adapter complies with NDIS 6.30 requirements and that the network adapter maintains L2 connectivity in Connected Standby.

-   If you cannot install the package, ensure that the device under test is configured with the correct date and time. For more information, check the error description.

## More information


### Parameters

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
<td><p>AP1Password</p></td>
<td><p>The administrator password of the first access point.</p></td>
</tr>
<tr class="even">
<td><p>AP1IPAddress</p></td>
<td><p>The IP address of the first access point.</p></td>
</tr>
<tr class="odd">
<td><p>AP2Password</p></td>
<td><p>The administrator password of the second access point.</p></td>
</tr>
<tr class="even">
<td><p>AP2IPAddress</p></td>
<td><p>The IP address of the second access point.</p></td>
</tr>
</tbody>
</table>

 

 

 






