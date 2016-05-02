---
author: joshbax-msft
title: WiFi Direct Scenario Tests - ReInvoke Stress (2e6aa65b-0683-4b79-914e-5fc5b227826e)
description: WiFi Direct Scenario Tests - ReInvoke Stress (2e6aa65b-0683-4b79-914e-5fc5b227826e)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e178ed46-572b-4fc8-8384-44ecadc4d5c7
---

# WiFi Direct Scenario Tests - ReInvoke Stress (2e6aa65b-0683-4b79-914e-5fc5b227826e)


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
<td><p>Windows 8.1 x64 Windows 8.1 x86 Windows RT 8.1</p></td>
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

-   ReInvoke Invitation Stress

    1.  The system under test (SUT) acts as a listener and waits in discoverable mode.

    2.  The device under test (DUT) discovers the SUT and pairs with it by using the Device Association Framework (DAF).

    3.  The DUT then waits for the connection to be automatically dismantled in a few seconds.

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
<td><p>The WPS-PIN for WFD pairing.</p>
<p>Default value: 12345670</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[WiFi Direct Scenario Tests](wifi-direct-scenario-tests.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WiFi%20Direct%20Scenario%20Tests%20-%20ReInvoke%20Stress%20%282e6aa65b-0683-4b79-914e-5fc5b227826e%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





