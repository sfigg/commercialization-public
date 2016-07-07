---
author: joshbax-msft
title: Combined Radio - WLAN, MBB and Bluetooth - ConcurrentUsage 5Ghz
description: Combined Radio - WLAN, MBB and Bluetooth - ConcurrentUsage 5Ghz
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2d43dd29-08d3-4ebd-8393-bba70452cf4b
---

# Combined Radio - WLAN, MBB and Bluetooth - ConcurrentUsage 5Ghz


This automated test verifies that systems that support Wireless LAN, Mobile Broadband and Bluetooth radios can operate all radios simultaneously in the 5 GHz band without excessive interference.

This test performs the following operations:

-   Establishes a baseline to establish download speeds for the Wireless LAN radio.

-   Establishes a baseline to establish download speeds for the Mobile Broadband radio.

-   Simultaneously attempts to download by using the Wireless LAN radio.

-   Simultaneously attempts to download by using the Mobile Broadband radio.

-   Simultaneously attempt to perform RFComm transfers by using the Bluetooth radio.

The Bluetooth radio should be able to perform a RFComm transfer while the Wireless LAN and Mobile Broadband radios are downloading. The Wireless LAN and Mobile Broadband radios must be able to download while the Bluetooth radio is operating

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.MobileBroadBand.ConcurrentRadioUsage</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~15 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md) and [Combined Radio Tests Prerequisites](combined-radio-tests-prerequisites.md#crall).

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
<td><p>SSID of the 5 GHz Access Point that is used for this test.</p></td>
</tr>
<tr class="even">
<td><p><strong>WlanPassword</strong></p></td>
<td><p>WPA2-PSK passphrase for 5 GHz Access Point used for this test</p></td>
</tr>
<tr class="odd">
<td><p><strong>MBBAccessString</strong></p></td>
<td><p>Specifies the access string to use when making a Mobile Broadband connection.</p>
<p>Default value: UseProvisionedInfo</p></td>
</tr>
<tr class="even">
<td><p><strong>MBBUserName</strong></p></td>
<td><p>Specifies the user name to use when making a Mobile Broadband connection.</p>
<p>Default value: UseProvisionedInfo</p></td>
</tr>
<tr class="odd">
<td><p><strong>MBBPassword</strong></p></td>
<td><p>Specifies the password to use when making a Mobile Broadband connection.</p>
<p>Default value: UseProvisionedInfo</p></td>
</tr>
<tr class="even">
<td><p><strong>WebDoc1024K</strong></p></td>
<td><p>Specifies a 1024K document to download from the Internet.</p>
<p>Default value: http://www.microsoft.com/windows/using/tools/igd/StaticContent/igdprobedocs/ws/test20.txt</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Combined Radio Tests](combined-radio-tests.md)

 

 







