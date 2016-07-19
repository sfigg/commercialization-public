---
author: joshbax-msft
title: WLAN FIPS Association Tests - WPA2\_PSK\_PEAP\_AES - Functional
description: WLAN FIPS Association Tests - WPA2\_PSK\_PEAP\_AES - Functional
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8c4c6e3c-54fd-4820-b647-8b22682d5266
---

# WLAN FIPS Association Tests - WPA2\_PSK\_PEAP\_AES - Functional


This test suite validates a NIC’s FIPS support by using WLAN roaming/association.

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
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~20 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Wireless LAN (802.11) Testing Prerequisites](wireless-lan--80211--testing-prerequisites.md).

This test suite performs the following actions:

-   Enables FIPS on the Client machine.

-   Configures two routers, that are named Router 0 and Router 1, as follows:

    -   Router 0 – 2.4 GHz : WPA2Enterprise (TTLS-EAPMSCHAPv2)/AES/B/Channel 11

    -   Router 0 – 5 GHz : WPA2Enterprise (TTLS-EAPMSCHAPv2)/AES/N/Channel 44

    -   Router 1 – 2.4 GHz : WPA2Enterprise (TTLS-EAPMSCHAPv2)/AES/B/Channel 6

    -   Router 1 – 5 GHz : WPA2Enterprise (TTLS-EAPMSCHAPv2)/AES/N/Channel 44

    -   Router 0 and Router 1 share the same SSID for their 2.4 GHz radios.

    -   Router 0 and Router 1 share the same SSID for their 5 GHz radios.

    -   For roaming purposes, network address translation (NAT) is enabled on both routers.

-   Creates and saves profiles for both routers 2.4 GHz and 5 GHz (2 profiles) with connectionMode configured as manual. The 2.4 GHz and 5 GHz are matching on both routers respectively (same Authentication/Encryption/SSID).

-   Starts a Remote Authentication Dial-In User Service (RADIUS) server on the access point (AP) controller.

-   Starts a TCP server on the AP controller.

-   Performs tests SuddenDropOfSignal(), SuddenLossOfSignal(), GradualDropOfSignal() and GradualLossOfSignal().

    The SuddenDropOfSignal() performs the following actions. This test is repeated for both 5 GHz and 2.4 GHz.

    -   Turns on the radio on both routers.

    -   Connects to Profile B.

    -   Turns off the radio on Router 1.

    -   Sets the txpower1 on both routers to 84.

    -   Connects to the profile by using WLANConnect and waits for WLANConnect to complete by using WLAN notifications.

    -   Registers for NLM events.

    -   After NLM notifies that LAN connectivity is available test adapter, polls the TCP server on the AP controller to confirm that full network connectivity is available.

    -   Creates a connection to TCP server called Connection C. Send a receive packet.

    -   Turns off the radio on Router 1.

    -   Using Connection C, sends and receives a packet. This makes sure that the network session is not dropped.

    -   Uses the GetConnectionAttributes WLAN API to verify that the association is correct and the connection is on Router 0.

    -   Turns on the radio on Router 1, and turns off the radio in Router 0.

    -   Using Connection C, sends and receives a packet. This makes sure that the network session is not dropped. The connection will take some time to roam.

    -   Uses the GetConnectionAttributes WLAN API to verify that the association is correct and the connection is on Router 1.

    -   Turns on the radios on both routers.

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

    -   After NLM notifies that LAN connectivity is available test adapter, polls the TCP server on the AP controller to confirm that full network connectivity is available.

    -   Creates a connection to the TCP server that is called Connection C. Sends a receive packet.

    -   Turns on the radio on Router 1, and turns off the radio on Router 0.

    -   Using Connection C, sends and receives a packet. This makes sure that the network session is not dropped.

    -   Uses the GetConnectionAttributes WLAN API to verify that the association is correct and the connection is on Router 1.

    -   Turns on the radio on Router 0, and turns off the radio in Router 1.

    -   Using Connection C, sends and receives a packet. This makes sure that the network session is not dropped. The connection will take some time to roam.

    -   Uses the GetConnectionAttributes WLAN API to verify that the association is correct and the connection is on Router 0.

    -   Turns on the radio on Router 1, and turns off the radio on Router 0.

    -   Using Connection C, sends and receives a packet. This makes sure that the network session is not dropped.

    -   Uses the GetConnectionAttributes WLAN API to verify that the association is correct and the connection is on Router 1.

    -   Turns on the radio on Router 0, and turns off the radio on Router 1.

    -   Using Connection C, sends and receives a packet. This makes sure that the network session is not dropped.

    -   Uses the GetConnectionAttributes WLAN API to verify that the association is correct and the connection is on Router 0.

    The GradualDropOfSignal() test performs the following actions. This test is repeated for both 5 GHz and 2.4 GHz.

    -   Turns on the radio on both routers.

    -   Connects to Profile B.

    -   Connects to the profile by using WLANConnect and waits for WLANConnect to complete by using WLAN notifications.

    -   Registers for NLM events.

    -   After NLM notifies that LAN connectivity is available test adapter, polls the TCP server on the AP controller to confirm that full network connectivity is available.

    -   Creates a connection to TCP server called Connection C. Send a receive packet.

    -   Sets the txpower1 on Router 0 to 4 and Router 1 to 84.

    -   Reduces the txpwr1 of Router 0 by 10 and increases the txpwr1 of Router 1 by 10.

    -   Using Connection C, sends and receives a packet. This makes sure that the network session is not dropped.

    -   Repeats the last two steps until the txpwer1 of Router 0 is 84 and the txpwr1 of Router 1 is 4.

    The GradualLossOfSignal() test performs the following actions. This test is repeated for both 5 GHz and 2.4 GHz.

    -   Turns on the radio on both routers.

    -   Connects to Profile B.

    -   Connects to the profile by using WLANConnect and waits for WLANConnect to complete by using WLAN notifications.

    -   Registers for NLM events.

    -   After NLM notifies that LAN connectivity is available test adapter, polls the TCP server on the AP controller to confirm that full network connectivity is available.

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
<td><p><strong>TestDeviceSupports5GHz</strong></p></td>
<td><p>Does the router supports 5 GHz?</p>
<p>Default Value: True</p></td>
</tr>
<tr class="even">
<td><p><strong>AP1Password</strong></p></td>
<td><p>The root password for the first access point.</p>
<p>Default Value: password</p></td>
</tr>
<tr class="odd">
<td><p><strong>AP1IPAddress</strong></p></td>
<td><p>The IP address of the first access point.</p>
<p>Default Value: 192.168.2.2</p></td>
</tr>
<tr class="even">
<td><p><strong>AP2Password</strong></p></td>
<td><p>The root password for the second access point.</p>
<p>Default Value: password</p></td>
</tr>
<tr class="odd">
<td><p><strong>AP2IPAddress</strong></p></td>
<td><p>The IP address of the second access point.</p>
<p>Default Value: 192.168.2.3</p></td>
</tr>
<tr class="even">
<td><p><strong>EnableTracing</strong></p></td>
<td><p>Whether to enable more diagnostic traces</p>
<p>Default Value: No</p></td>
</tr>
</tbody>
</table>

 

 

 






