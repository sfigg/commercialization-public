---
author: joshbax-msft
title: WiFi Direct Scenario Tests - ReInvoke Stress
description: WiFi Direct Scenario Tests - ReInvoke Stress
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4495c5fc-71a7-493c-8347-8d453fea62cf
---

# WiFi Direct Scenario Tests - ReInvoke Stress


This test suite verifies basic Wi-Fi Direct (WFD) pairing and ReInvoke Invitation in a stress loop.

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
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~30 minutes</p></td>
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

This test suite does the following:

ReInvoke Invitation Stress:

1.  The system under test (SUT) acts as a listener and waits in discoverable mode.

2.  The device under test (DUT) discovers the SUT and pairs with it using the Device Association Framework (DAF).

3.  The DUT then waits for the connection to be automatically torn down in a few seconds.

4.  The DUT reconnects to the SUT.

5.  The DUT disconnects from the SUT.

6.  The reconnect and disconnect is repeated in a loop (15 times).

7.  The paired SUT is removed (DAF Remove Association).

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
<td><p>The WPS PIN for WFD pairing.</p>
<p>Default Value: 12345670</p></td>
</tr>
</tbody>
</table>

 

 

 






