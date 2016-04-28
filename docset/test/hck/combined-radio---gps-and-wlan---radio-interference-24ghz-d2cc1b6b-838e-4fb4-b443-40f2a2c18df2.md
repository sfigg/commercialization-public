---
author: joshbax-msft
title: Combined Radio - GPS and WLAN - Radio Interference 2.4Ghz
description: Combined Radio - GPS and WLAN - Radio Interference 2.4Ghz
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 44cfdfcf-5447-4c06-b12c-a20fe2abd07e
---

# Combined Radio - GPS and WLAN - Radio Interference 2.4Ghz


This automated test verifies that systems that support both GPS and Wireless LAN radio hardware can operate both radios simultaneously in the 2.4 GHz band without excessive interference.

This test performs the following operations:

-   Establishes a baseline to establish download speeds for the Wireless LAN radio.

-   Subscribes to GPS data events.

-   Attempt to download by using the Wireless LAN radio.

-   Unsubscribe to GPS data events.

The GPS data events should continue to be generated while the Wireless LAN radio is downloading. The Wireless LAN radio must be able to download while the GPS radio generates data events.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.Sensor.Discretional</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8.1 x64 Windows 8.1 x86</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md) and [Combined Radio Tests Prerequisites](combined-radio-tests-prerequisites.md#crgpswlan).

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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Combined%20Radio%20-%20GPS%20and%20WLAN%20-%20Radio%20Interference%202.4Ghz%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





