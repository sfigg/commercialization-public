---
author: joshbax-msft
title: Wlan L1 Test 12 - Enable and Disable WFD Autonomous GO
description: Wlan L1 Test 12 - Enable and Disable WFD Autonomous GO
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 932684a3-23d8-41a7-ac74-b13f94d66744
---

# Wlan L1 Test 12 - Enable and Disable WFD Autonomous GO


This automated test enables WifiDirect Autonomous GO, checks for the SSID being broadcast, and then disables Autonomous GO.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.CSBWiFiDirect.SupportAtLeast4Clients Device.Network.WLAN.WiFiDirect.SupportAtLeast4Clients</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
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

This test does the following:

-   Test will fail if driver cannot return the WifiDirect capabilities.

-   Test will fail if driver returns ConcurrentOperationSupported as false.

-   Test will tell driver to enable Autonomous GO.

-   Test will request the SSID that is beaconing.

-   Test will stop Autonomous GO.

-   Test will fail if it cannot retrieve a non-empty SSID.

-   Test will fail if either start or stop of Autonomous GO fails.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

 

 






