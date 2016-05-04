---
author: joshbax-msft
title: Wlan L1 Test 08 - Scan for Networks
description: Wlan L1 Test 08 - Scan for Networks
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 54486886-22bd-4d6b-a4a4-44806b6f304c
---

# Wlan L1 Test 08 - Scan for Networks


This automated test issues a scan request and enumerates networks after the scan.

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
<td><p>~1 minutes</p></td>
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

-   Test will disable the device.

-   Test will enable the device.

-   Test will start a scan with the option to flush set to true.

-   Test will fail if scan complete event is not returned in less than six seconds.

-   Test will fail if a scan failure event is returned.

-   Test will enumerate available networks after a completed scan.

-   Test will fail if there are no networks in the enumerated list.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

 

 






