---
author: joshbax-msft
title: Wlan L1 Test 10 - Connect to a WPA2 PSK AES AP
description: Wlan L1 Test 10 - Connect to a WPA2 PSK AES AP
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c5c0a493-eec5-4b0c-b07b-406887f57de7
---

# Wlan L1 Test 10 - Connect to a WPA2 PSK AES AP


This automated test creates a wireless profile using the values provided in the two parameters.

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
<td><p>~5 minutes</p></td>
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

The test does the following:

-   Connect to the wireless network specified using the created profile.

-   If connection success message is not seen from the driver within six seconds, the test will fail.

-   If there is a connection failure, the test will fail.

-   Wait for 60 seconds for the Windows NLM to return network connected status (this waits for DHCP assignment).

-   Choose a target IPv4 address from either the DHCP server on the network or the default gateway (DHCP server has priority).

-   Send ICMP message to the target IPv4 address and expect success.

-   Connect to port 80 of the target address and expect either a HTTP 401 challenge or HTTP 200 success.

Failure to ping the target address or to connect to port 80 of the target address will result in a test failure.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

Make sure that the following are true:

-   The specified SSID is within range of the device

-   The specified password is correct.

-   The target IP address can be pinged.

-   The target IP address is running a web server.

Most home routers (including routers that are specified in the Windows Hardware Certification Kit (Windows HCK)WLAN setup) will satisfy these requirements.

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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Wlan%20L1%20Test%2010%20-%20Connect%20to%20a%20WPA2%20PSK%20AES%20AP%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




