---
author: joshbax-msft
title: Wlan L3 Test 02 - Connect to a WPA2 PSK AES AP (strict) 5 Times
description: Wlan L3 Test 02 - Connect to a WPA2 PSK AES AP (strict) 5 Times
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: fe064269-f45b-478d-9be5-45afd9f3d161
---

# Wlan L3 Test 02 - Connect to a WPA2 PSK AES AP (strict) 5 Times


This automated test runs the following test five times: [Wlan L2 Test 02 - Connect to a WPA2 PSK AES AP (strict)](wlan-l2-test-02---connect-to-a-wpa2-psk-aes-ap--strict-24f9bc8e-591d-4fa0-8dfd-735369428379.md).

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
<td><p>~15 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Wireless LAN (802.11) Testing Prerequisites](wireless-lan--80211--testing-prerequisites.md). Make sure that device has been enabled, drivers are properly installed, and the device is properly inserted.

The test runs the following test 5 times: [Wlan L2 Test 02 - Connect to a WPA2 PSK AES AP (strict)](wlan-l2-test-02---connect-to-a-wpa2-psk-aes-ap--strict-24f9bc8e-591d-4fa0-8dfd-735369428379.md). Any error encountered in any of the five attempts will fail the test.

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
<td><p><strong>WPA2_PSK_AES_SSID</strong></p></td>
<td><p>The SSID of a WPA2_PSK_AES network to connect to.</p></td>
</tr>
<tr class="even">
<td><p><strong>WPA2_PSK_Password</strong></p></td>
<td><p>The password for the WPA2_PSK network.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[WLAN L3 Tests](wlan-l3-tests.md)

 

 







