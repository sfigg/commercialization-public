---
author: joshbax-msft
title: WLAN Stress Test - Functional
description: WLAN Stress Test - Functional
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: da1a442c-3023-48c8-8aa2-83ed1bd38a14
---

# WLAN Stress Test - Functional


This automated validates the D2 sleep functionality. The device should enter the D2 state after pressing power button within one minute and return to D0 after 8 hours.

This test is not applicable to devices that support InstantGo.

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
<td><p>~60 minutes</p></td>
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

This acceptance test is intended to be used to verify that the Wi-Fi driver remains reliable after common scenarios. The test will first confirm that it can connect to an access point and send and receive data. It will then stress scenarios in 10 minute intervals. These scenarios are common real world usage scenarios such as connecting, roaming, and sleeping. After each 10 minute interval, an integrity check will be performed to verify the driver can still connect to an access point and send and receive data.

The following scenarios will be randomly performed under stress:

-   Scan

-   Connect and disconnect

-   Send and receive data

-   Turn on and turn off radio

-   Enter and leave Connected Standby

-   Roaming

The connect and disconnect scenario runs for approximately five minutes. Each access point is configured randomly to one of the following configurations with different SSIDs:

-   Open/None

-   WPA/TKIP

-   WPA/AES

-   WPA2PSK/TKIP

-   WPA2PSK/AES

Once the access point is configured, the test runs in a loop and performs the following:

1.  Connect to the first access point.

2.  Wait for notification that it is connected.

3.  Disconnect from the first access point.

4.  Connect to the second access point.

5.  Wait for notification that it is connected.

6.  Disconnect from the second access point.

At the end, the test will display the amount of slow toggles, fast toggles, and the scan success rate.

The turn on and turn off scenario runs for approximately two minutes. The test runs in a loop and performs the following:

1.  Randomly choose between the following scenarios:

    -   **Single access point signal loss and recover** -- The access point will loop while turning the radio off and on in 30 second intervals.

    -   **Single access point degrade and improve** - The access point will loop while reducing and increasing the transmit power.

    -   **Multi access point signal degrade and improve** – Two access point with the same SSID will reduce and increase the transmit power inversely proportional to each other. This should simulate moving away from one access point and toward the other.

    -   **Multi access point signal loss** – Two access points with the same SSID turn their radios off and on. This should simulate failing over to another access point after the first one is shut down.

2.  Randomly configure the access point with one of the following options:

    -   Open/None

    -   WPA/TKIP

    -   WPA/AES

    -   WPA2PSK/TKIP

    -   WPA2PSK/AES

3.  Connect to the first access point.

4.  Start the scenario.

5.  Run the scenario for five minutes. Scan every 10 seconds.

6.  Cancel the scenario and clean up.

At the end, the test will display the number of times it was run.

The sleep scenario runs for approximately five minutes and will only run if D2 sleep is supported. The test runs in a loop and performs the following randomly:

1.  Sleep, wake, and scan.

    -   Configure a single access point to a random configuration.

    -   Go into D2 sleep for 30 seconds.

    -   Wake from sleep.

    -   Attempt to scan and verify that the access point is in the scan list.

2.  Sleep while connected.

    -   Configure a single access point to a random configuration.

    -   Connect to the access point.

    -   Go into D2 sleep between 1 and 60 seconds.

    -   Wake from sleep.

    -   Verify that the device is still connected to the access point.

3.  Change the SSID while sleeping.

    -   Configure two access points with the same SSID.

    -   Turn the radio off in one of the access points.

    -   Connect to the SSID.

    -   Sleep the device.

    -   While the device is asleep, turn one radio on and the other radio off.

    -   Wake the device.

    -   Verify that the device is still connected to the access point.

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
<td><p>The root password for the first physical access point.</p>
<p>Default value: password</p></td>
</tr>
<tr class="odd">
<td><p><strong>AP1IPAddress</strong></p></td>
<td><p>The IP address of the WAN port of the first physical access point.</p>
<p>Default value: 192.168.2.2</p></td>
</tr>
<tr class="even">
<td><p><strong>AP2Password</strong></p></td>
<td><p>The root password for the second physical access point.</p>
<p>Default value: password</p></td>
</tr>
<tr class="odd">
<td><p><strong>AP2IPAddress</strong></p></td>
<td><p>The root password for the second physical access point.</p>
<p>Default value: 192.168.2.3</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WLAN%20Stress%20Test%20-%20Functional%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




