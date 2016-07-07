---
author: joshbax-msft
title: WLAN Association Tests - WPA2\_PSK\_PEAP\_AES - Functional
description: WLAN Association Tests - WPA2\_PSK\_PEAP\_AES - Functional
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a48fc95b-0607-4aab-8241-5c6a92976de3
---

# WLAN Association Tests - WPA2\_PSK\_PEAP\_AES - Functional


This test suite validates the WLAN associations.

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
<td><p>~20 minutes</p></td>
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

This test suite performs the following actions:

-   Sets up two routers (Router 0 and Router 1) as follows:

    -   Router 0 – 2.4Ghz : WPA2PSK/AES/G/Channel 5

    -   Router 0 – 5Ghz : WPA2PSK/AES/N/Channel 36

    -   Router 1 – 2.4Ghz : WPA2Enterprise (PEAP-EAPMSCHAPV2)/AES/N/Channel 11

    -   Router 1 – 5Ghz : WPA2Enterprise (PEAP-EAPMSCHAPV2)/AES/A/Channel 157

-   Turns on all radios.

-   Creates a TCP server on the access point (AP) controller server.

-   Creates a profile for 2.4 GHz on Router 0 by having ConnectionMode configured as manual.

-   Stops the Remote Authentication Dial-in Usesr Service (RADIUS) server if it is running. Creates a RADIUS server on the AP controller for Router 0 at 2.4 GHz.

-   WlanConnect by using the profile.

-   Waits for WlanConnect to complete by using WLAN notifications.

-   Register for NLM events.

-   After the NLM notifies that LAN connectivity is available on the test adapter interface, polls the TCP server on the AP controller server to confirm that full network connectivity is available.

-   Uses the WLAN API GetConnectionAttributes to confirm that the association is correct and the connection is to Router 0 at 2.4 GHz.

-   Establishes a connection to the TCP Server on the AP controller server.

-   Creates a profile for 5 GHz on Router 1 by having ConnectionMode configured as Auto.

-   Stops the RADIUS server if it is running. Creates a RADIUS server on the AP controller for Router 0 at 5 GHz.

-   Polls for WLAN notifications.

-   Turns off the 2.4 GHz radio on Router 0 and the 5 GHz radio on Router 1.

-   After a WLAN connected notification is received and the NLM notifies that LAN connectivity is available on the test adapter interface, polls the TCP server on the AP controller server to confirm that full network connectivity is available.

-   Uses the WLAN API GetConnectionAttributes to validate that the association is correct and the connection is to Router 1 at 5 GHz.

-   Establishes a connection to the TCP Server on the AP controller server.

-   Creates a profile for 5 GHz on Router 0 by having ConnectionMode configured as Auto.

-   Stops the RADIUS server if it is running. Creates a RADIUS server on the access point controller for Router 1 at 5 GHz.

-   Polls for WLAN notifications.

-   Turns off the 5 GHz radios on Router 0 and Router 1.

-   After a WLAN connected notification is received and the NLM notifies that LAN connectivity is available on the test adapter interface, polls the TCP server on the AP controller server to confirm that full network connectivity is available.

-   Uses the WLAN API GetConnectionAttributes to confirm that the association is correct and the connection is to Router 0 at 5 GHz.

-   Establishes a connection to the TCP Server on the AP controller server.

-   Creates a profile for 2.4 GHz on Router 1 by having ConnectionMode configured as Auto.

-   Stops the RADIUS server if it is running. Creates a RADIUS server on the AP controller for Router 1 at 2.4 GHz.

-   Polls for WLAN notifications.

-   Turns off the 5 GHz radio on Router 0 and the 2.4 GHz radio on Router 1.

-   After a WLAN connected notification is received and the NLM notifies that LAN connectivity is available on the test adapter interface, polls the TCP server on the AP controller server to confirm that full network connectivity is available.

-   Uses the WLAN API GetConnectionAttributes to confirm that the association is correct and the connection is to Router 0 at 5 GHz.

If the device supports S3 and S4 sleep states, the following tests are performed. They are repeated for each supported sleep state.

-   Sets up two routers (Router 0 and Router 1).

-   Turns on all radios.

-   Creates a profile for 2.4 GHz on Router 0 by having ConnectionMode configured as manual.

-   Stops the RADIUS server if it is running. Creates a RADIUS server on the access point controller for Router 0 at 2.4 GHz.

-   WlanConnect by using the profile.

-   Waits for WlanConnect to complete by using WLAN notifications.

-   Register for NLM events.

-   After the NLM notifies that LAN connectivity is available on the test adapter interface, polls the TCP server on the AP controller server to confirm that full network connectivity is available.

-   Uses the WLAN API GetConnectionAttributes to confirm that the association is correct and the connection is to Router 0 at 2.4 GHz.

-   Establishes a connection to the TCP Server on the AP controller server.

-   Creates a profile for 5 GHz on Router 1 by having ConnectionMode configured as Auto.

-   Stops the RADIUS server if it is running. Creates a RADIUS server on the AP controller for Router 0 at 5 GHz.

-   Polls for WLAN notifications.

-   Turns off the 2.4 GHz radio on Router 0.

-   Put the device in either S3 or S4 sleep state for 30 seconds.

-   Turns on the 5 GHz radio on Router 1.

-   After a WLAN connected notification is received and the NLM notifies that LAN connectivity is available on the test adapter interface, polls the TCP server on the AP controller server to confirm that full network connectivity is available.

-   Uses the WLAN API GetConnectionAttributes to confirm that the association is correct and the connection is to Router 1 at 5 GHz.

-   Establishes a connection to the TCP Server on AP controller server.

-   Creates a profile for 5 GHz on Router 0 by having ConnectionMode configured as Auto.

-   Stops the RADIUS server if it is running. Creates a RADIUS server on the access point controller for Router 1 at 5 GHz.

-   Polls for WLAN notifications.

-   Turns off the 5 GHz radios on Router 1.

-   Put the device in either S3 or S4 sleep state for 30 seconds.

-   Turns on the 5 GHz radios on Router 0.

-   After a WLAN connected notification is received and the NLM notifies that LAN connectivity is available on the test adapter interface, polls the TCP server on the AP controller server to confirm that full network connectivity is available.

-   Uses the WLAN API GetConnectionAttributes to confirm that the association is correct and the connection is to Router 0 at 5 GHz.

-   Establishes a connection to the TCP Server on the AP controller server.

-   Creates a profile for 2.4 GHz on Router 1 by having ConnectionMode configured as Auto.

-   Stops the RADIUS server if it is running. Creates a RADIUS server on the AP controller for Router 1 at 2.4 GHz.

-   Polls for WLAN notifications.

-   Turns off the 5 GHz radio on Router 0.

-   Put the device in either S3 or S4 sleep state for 30 seconds.

-   Turns on the 5 GHz radios on Router 0.

-   After a WLAN connected notification is received and the NLM notifies that LAN connectivity is available on the test adapter interface, polls the TCP server on the AP controller server to confirm that full network connectivity is available.

-   Uses the WLAN API GetConnectionAttributes to confirm that the association is correct and the connection is to Router 0 at 5 GHz.

-   Turns on all radios.

-   Deletes all profiles that were Createsd.

The following tests are performed for both the 2.4 GHz and 5 GHz frequency on Router 0 and Router 1:

-   Deletes all profiles that were Createsd.

-   Disconnects any existing connections on the test adapter.

-   Establishes a connection to the TCP Server on the AP controller server.

-   Stops the RADIUS server if it is running. Creates a RADIUS server on the AP controller for the router at the specified bandwidth.

-   Creates a profile for the router at the specific bandwidth by having connectionMode configured as Auto.

-   Registers for NLM events.

-   After a WLAN connected notification is received and the NLM notifies that LAN connectivity is available on the test adapter interface, polls the TCP server on the AP controller server to confirm that full network connectivity is available.

-   Uses the WLAN API GetConnectionAttributes to confirm that the association is correct and the connection is to Router 0 at 5 GHz.

-   Establishes a connection to the TCP Server on the AP controller server.

-   Puts the device in the specified sleep state for 30 seconds.

-   Registers for NLM events.

-   After a WLAN connected notification is received and the NLM notifies that LAN connectivity is available on the test adapter interface, polls the TCP server on the AP controller server to confirm that full network connectivity is available.

-   Uses the WLAN API GetConnectionAttributes to confirm that the association is correct and the connection is to Router 0 at 5 GHz.

-   Puts the device in the specified sleep state for 30 seconds.

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
<td><p>Determine if the router supports 5 GHz.</p>
<p>Default value: true</p></td>
</tr>
<tr class="even">
<td><p><strong>AP1Password</strong></p></td>
<td><p>The root password for the first access point.</p>
<p>Default value: password</p></td>
</tr>
<tr class="odd">
<td><p><strong>AP1IPAddress</strong></p></td>
<td><p>The IP address of the first access point.</p>
<p>Default value: 192.168.2.2</p></td>
</tr>
<tr class="even">
<td><p><strong>AP2Password</strong></p></td>
<td><p>The root password for the first access point.</p>
<p>Default value: password</p></td>
</tr>
<tr class="odd">
<td><p><strong>AP2IPAddress</strong></p></td>
<td><p>The IP address of the first access point.</p>
<p>Default value: 192.168.2.3</p></td>
</tr>
<tr class="even">
<td><p><strong>EnableTracing</strong></p></td>
<td><p>Default value: No</p></td>
</tr>
</tbody>
</table>

 

 

 






