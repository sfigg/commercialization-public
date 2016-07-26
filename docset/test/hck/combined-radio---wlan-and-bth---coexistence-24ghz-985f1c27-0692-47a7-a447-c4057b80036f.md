---
author: joshbax-msft
title: Combined Radio - WLAN and BTH - Coexistence 2.4Ghz
description: Combined Radio - WLAN and BTH - Coexistence 2.4Ghz
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9233fc07-b763-4030-bb2a-73836fbfb338
---

# Combined Radio - WLAN and BTH - Coexistence 2.4Ghz


This automated test verifies that systems that support both Wireless LAN and Bluetooth radio hardware can operate both radios simultaneously in the 2.4 GHz band without excessive interference.

This test performs the following operations:

-   Establishes a baseline to establish download speeds for the Wireless LAN radio.

-   Simultaneously attempts to download by using the Wireless LAN radio.

-   Simultaneously attempts to perform RFComm transfer by using the Bluetooth radio.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.BluetoothController.Base.WLANBTCoexistence</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md) and [Combined Radio Tests Prerequisites](combined-radio-tests-prerequisites.md#crwlanblue).

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md).

## Command syntax


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
<td><p><strong>SSID</strong></p></td>
<td><p>SSID of the 2.4 GHz Access Point that is used for this test.</p></td>
</tr>
<tr class="even">
<td><p><strong>WlanPassword</strong></p></td>
<td><p>WPA2-PSK passphrase for 2.4 GHz Access Point used for this test</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Combined Radio Tests](combined-radio-tests.md)

 

 







