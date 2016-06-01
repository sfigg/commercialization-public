---
author: joshbax-msft
title: WiFi Direct Scenario Tests - Power Transition(041aefc1-d75c-458e-8204-7c31b3b2dff6)
description: WiFi Direct Scenario Tests - Power Transition(041aefc1-d75c-458e-8204-7c31b3b2dff6)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ddec4187-e69c-4fd6-8979-f953870a02e3
---

# WiFi Direct Scenario Tests - Power Transition(041aefc1-d75c-458e-8204-7c31b3b2dff6)


This test suite verifies Wi-Fi Direct (WFD) behavior across D0 and D2/D3 states by suspending and resuming the system. These tests apply to Always On Always Connected (AOAC) and non-AOAC systems.

The tests confirm that the following statements are true:

1.  Autonomous Group Owner (GO) is dismantled on suspend and remains dismantled on resume.

2.  System discoverability is turned off on suspend and stays off on resume.

3.  WFD connection is dismantled on suspend.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.CSBWiFiDirect.SupportAtLeast2WiFiDirectPortsConcurrently Device.Network.WLAN.CSBWiFiDirect.SupportAtLeast4Clients Device.Network.WLAN.WiFiDirect.SupportAtLeast2WiFiDirectPortsConcurrently Device.Network.WLAN.WiFiDirect.SupportAtLeast4Clients</p>
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

Successful tests run as follows:

1.  Autonomous GO

    1.  The DUT starts an Autonomous GO.

    2.  The system under test (SUT) scans and finds the GO.

    3.  The device under test (DUT) is suspended.

    4.  The SUT scans and does not find the GO.

    5.  The DUT resumes and verifies that its GO is not running.

    6.  The SUT scans and does not find the GO.

2.  Discoverability

    1.  The DUT is set to the listen state (discoverable).

    2.  The SUT discovers the DUT.

    3.  The DUT is suspended.

    4.  The SUT starts a discover request and does not find the DUT.

    5.  The DUT resumes and confirms that its listen state is turned off.

    6.  The SUT starts a discover request and does not find the DUT.

3.  Pairing

    1.  WFD pairing occurs between the DUT and the SUT.

    2.  The DUT is suspended.

    3.  The SUT receives a disconnect notification

    4.  The DUT resumes and verifies that it has no active sessions.

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
<td><p><strong>PIN</strong></p></td>
<td><p>The WPS-PIN for WFD pairing.</p>
<p>Default value: 12345670</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[WiFi Direct Scenario Tests](wifi-direct-scenario-tests.md)

 

 







