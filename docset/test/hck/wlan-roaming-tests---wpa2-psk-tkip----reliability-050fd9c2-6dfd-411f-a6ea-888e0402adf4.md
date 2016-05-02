---
author: joshbax-msft
title: WLAN Roaming Tests - WPA2\_PSK\_TKIP - Reliability
description: WLAN Roaming Tests - WPA2\_PSK\_TKIP - Reliability
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b5b4947f-ec73-4ded-bce0-a252a94717bd
---

# WLAN Roaming Tests - WPA2\_PSK\_TKIP - Reliability


This automated test suite performs WLAN roaming tests.

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
<td><p>~12 minutes</p></td>
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

This test performs the following actions:

-   Configures two routers, that are named Router 0 and Router 1, as follows:

    -   Router 0 – 2.4Ghz : WPA2PSK/TKIP/B/Channel 11

    -   Router 0 – 5Ghz : WPA2PSK / TKIP /A/Channel 36

    -   Router 1 – 2.4Ghz : WPA2PSK/TKIP/B/Channel 6

    -   Router 1 – 5Ghz : WPA2PSK/ TKIP /A/Channel 44

    -   Router 0 and Router 1 share the same SSID for their 2.4Ghz radios.

    -   Router 0 and Router 1 share the same SSID for their 5Ghz radios.

    -   For roaming purposes, network address translation (NAT) is enabled on both routers.

-   Creates and saves profiles for both routers 2.4 GHz and 5 GHz (2 profiles) with connectionMode configured as manual. The 2.4 GHz and 5 GHz are matching on both routers respectively (same Authentication/Encryption/SSID).

-   Starts a Remote Authentication Dial In User Service (RADIUS) server on the access point (AP) controller.

-   Starts a TCP server on the AP controller.

-   Performs tests SuddenDropOfSignal(),SuddenLossOfSignal(),GradualDropOfSignal() and GradualLossOfSignal()SuddenDropOfSignal().

The SuddenDropOfSignal() test performs the following actions. This test is repeated for both 5 GHz and 2.4 GHz.

-   Turns on the radio on both routers.

-   Connects to Profile B.

-   Turns off the radio on Router 1.

-   Sets the txpower1 on both routers to 84.

-   Connects to the profile by using WLANConnect and waits for WLANConnect to complete by using WLAN notifications.

-   Registers for NLM events.

-   After NLM notifies that LAN connectivity is available test adapter, polls the TCP server on the AP controller to make sure that full network connectivity is available.

-   Creates a connection to TCP server called Connection C. Send a receive packet.

-   Turns off the radio on Router 1.

-   Using Connection C, sends and receives a packet. This makes sure that the network session is not dropped.

-   Use the GetConnectionAttributes WLAN API to verify that the association is correct and the connection is on Router 0.

-   Turn on the radio on Router 1, and turn off the radio on Router 0.

-   Using Connection C, sends and receives a packet. This makes sure that the network session is not dropped. The connection will take some time to roam.

-   Uses the GetConnectionAttributes WLAN API to verify that the association is correct and the connection is on Router 1.

-   Turn on the radios on both routers.

-   Using Connection C, sends and receives a packet. This makes sure that the network session is not dropped.

-   Sets the txpwr1 on Router 0 to 84.

-   Sets the txpwr1 on Router 1 to 4.

-   Using Connection C, sends and receives a packet. This makes sure that the network session is not dropped.

The SuddenLossOfSignal() test performs the following actions. This test is repeated for both 5 GHz and 2.4 GHz.

-   Turns on the radio on both routers.

-   Connects to Profile B.

-   Turns off the radio on Router 1.

-   Sets the txpower1 on both routers to 84.

-   Connects to the profile by using WLANConnect and waits for WLANConnect to complete by using WLAN notifications.

-   Registers for NLM events.

-   After NLM notifies that LAN connectivity is available test adapter, polls the TCP server on the AP controller to make sure that full network connectivity is available.

-   Creates a connection to TCP server called Connection C. Send a receive packet.

-   Turns on the radio on Router 1, and turns off the radio on Router 0.

-   Using Connection C, sends and receives a packet. This makes sure that the network session is not dropped.

-   Use the GetConnectionAttributes WLAN API to verify that the association is correct and the connection is on Router 1.

-   Turns on the radio on Router 0, and turns off the radio on Router 1.

-   Using Connection C, sends and receives a packet. This makes sure that the network session is not dropped. The connection will take some time to roam.

-   Uses the GetConnectionAttributes WLAN API to verify that the association is correct and the connection is on Router 0.

-   Turns on the radio on Router 1, and turns off the radio on Router 0.

-   Using Connection C, sends and receives a packet. This makes sure that the network session is not dropped.

-   Uses the GetConnectionAttributes WLAN API to verify that the association is correct and the connection is on Router 1.

-   Turns on the radio on Router 0, and turns off the radio in Router 1.

-   Using Connection C, sends and receives a packet. This makes sure that the network session is not dropped.

-   Uses the GetConnectionAttributes WLAN API to verify that the association is correct and the connection is on Router 0.

The GradualDropOfSignal() test performs the following actions. This test is repeated for both 5 GHz and 2.4 GHz.

-   Turns on the radio on both routers.

-   Connects to Profile B.

-   Connects to the profile by using WLANConnect and waits for WLANConnect to complete by using WLAN notifications.

-   Registers for NLM events.

-   After NLM notifies that LAN connectivity is available test adapter, polls the TCP server on the AP controller to make sure that full network connectivity is available.

-   Creates a connection to TCP server called Connection C. Send a receive packet.

-   Sets the txpower1 on Router 0 to 4 and Router 1 to 84.

-   Reduces the txpwr1 of Router 0 by 10 and increases the txpwr1 of Router 1 by 10.

-   Using Connection C, sends and receives a packet. This makes sure that the network session is not dropped.

-   Repeats the last two steps until the txpwer1 of Router 0 is 84 and the txpwr1 of Router 1 is 4.

The GradualLossOfSignal() test does the following. This test is repeated for both 5 GHz and 2.4 GHz.

-   Turns on the radio on both routers.

-   Connects to Profile B.

-   Connects to the profile by using WLANConnect and waits for WLANConnect to complete by using WLAN notifications.

-   Registers for NLM events.

-   After NLM notifies that LAN connectivity is available test adapter, polls the TCP server on the AP controller to make sure that full network connectivity is available.

-   Creates a connection to TCP server called Connection C. Send a receive packet.

-   Sets the txpower1 on Router 0 to 4 and Router 1 to 84.

-   Reduces the txpwr1 of Router 0 by 10 and increases the txpwr1 of Router 1 by 10.

-   When the txpr1 of Router 1 reaches 4, turns off the router.

-   Using Connection C, sends and receives a packet. This makes sure that the network session is not dropped.

-   Repeats the last three steps until the txpwer1 of Router 0 is 84 and the txpwr1 of Router 1 is 4.

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
<td><p>Determines whether or not the device supports 5 GHz.</p>
<p>Default value: True</p></td>
</tr>
<tr class="even">
<td><p><strong>AP1Password</strong></p></td>
<td><p>The root password for the first physical AP.</p>
<p>Default value: password</p></td>
</tr>
<tr class="odd">
<td><p><strong>AP1IPAddress</strong></p></td>
<td><p>The IP address of the WAN port of the first physical AP.</p>
<p>Default value: 192.168.2.2</p></td>
</tr>
<tr class="even">
<td><p><strong>AP2Password</strong></p></td>
<td><p>The root password for the second physical AP.</p>
<p>Default value: password</p></td>
</tr>
<tr class="odd">
<td><p><strong>AP2IPAddress</strong></p></td>
<td><p>The root password for the second physical AP.</p>
<p>Default value: 192.168.2.3</p></td>
</tr>
<tr class="even">
<td><p><strong>EnableTracing</strong></p></td>
<td><p>Default value: No</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WLAN%20Roaming%20Tests%20-%20WPA2_PSK_TKIP%20-%20%20Reliability%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




