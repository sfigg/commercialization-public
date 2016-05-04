---
author: joshbax-msft
title: Wlan L1 Test 09 - Attempt a connection to a non-existent network
description: Wlan L1 Test 09 - Attempt a connection to a non-existent network
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 146358cf-e104-4fe3-816c-0e9663e2923f
---

# Wlan L1 Test 09 - Attempt a connection to a non-existent network


This automated test creates a wireless profile for a network that does not exist and tries to connect to the non-existent network.

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
<td><p>~2 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Basic Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Wireless LAN (802.11) Testing Prerequisites](wireless-lan--80211--testing-prerequisites.md).

This test will do the following:

-   Create a wireless profile for a network that does not exist.

-   Instruct the wireless service to connect to the created profile The device/driver is expected to quickly fail since the network is not visible.

-   If the connection start event is not seen within ten seconds, the test will fail.

-   If the associating message is not seen within eight seconds of connection start, the test will fail.

-   If the connection failure message is not seen within eight seconds of associating, the test will fail.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

 

 






