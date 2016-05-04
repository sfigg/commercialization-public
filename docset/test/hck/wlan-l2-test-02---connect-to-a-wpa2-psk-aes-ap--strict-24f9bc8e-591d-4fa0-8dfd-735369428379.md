---
author: joshbax-msft
title: Wlan L2 Test 02 - Connect to a WPA2 PSK AES AP (strict)
description: Wlan L2 Test 02 - Connect to a WPA2 PSK AES AP (strict)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 690880e4-50d5-47d3-aa69-de88cc88c780
---

# Wlan L2 Test 02 - Connect to a WPA2 PSK AES AP (strict)


This automated test creates a wireless profile that uses the values that are provided in the two parameters and connects to that network.

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
<td><p>~3 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Wireless LAN (802.11) Testing Prerequisites](wireless-lan--80211--testing-prerequisites.md). Make sure that device has been enabled, drivers are properly installed, and the device is properly inserted.

The test does the following:

-   Connect to the specified wireless network by using the created profile.

-   If the driver does not return a connection success message in four seconds, the test fails.

-   If there is a connection failure, the test fails.

-   Wait for up to 45 seconds for the Windows NLM to return network connected status (this waits for DHCP assignment).

-   Choose a target IPv4 address from either the DHCP server on the network or the default gateway (the DHCP server has priority).

-   Send an ICMP message to the target IPv4 address and expect success.

-   Connect to port 80 of the target address and expect either a HTTP 401 challenge or HTTP 200 success.

-   Failure to ping target address or connect to port 80 of target address results in a test failure.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

Make sure that the following are true:

-   The specified SSID is within range of the device

-   The specified password is correct.

-   The target IP address can be pinged.

-   The target IP address is running a web server.

Most home routers (including routers that are specified in the Windows Hardware Certification Kit (Windows HCK) WLAN setup) will satisfy these requirements.

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


[WLAN L2 Tests](wlan-l2-tests.md)

 

 







