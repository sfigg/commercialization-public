---
author: joshbax-msft
title: NDISTest 6.5 - WLANWakeTests - OSStack
description: NDISTest 6.5 - WLANWakeTests - OSStack
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 48ddae3e-90c2-45eb-b1c2-db93c2f769d1
---

# NDISTest 6.5 - WLANWakeTests - OSStack


This automated test suite validates the Wake on Wireless LAN capabilities.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.MeetScanAndConnReq Device.Network.WLAN.CSBBase.MeetScanAndConnReq Device.Network.WLAN.CSBWoWLAN.MustSupportWakeOnWLAN Device.Network.WLAN.WoWLAN.ImplementWakeOnWLAN</p>
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

The following suites are available in this test:

-   PM\_WoWlanMagicpacket

-   PM\_WoWlanPattern

The PM\_WoWlanMagicpacket suite consists of the following tests:

| Name | Description |
|------|-------------|

 

The PM\_WoWlanPattern suite consists of the following tesst:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Begin execution of Wake on LAN test for pattern type: RandomPattern</p></td>
<td><ul>
<li><p>Put the device to sleep and send a matching packet. Make sure the device wakes in response to the packet.</p></li>
<li><p>Put the device to sleep then send a non-matching packet. Make sure the device does not wake in response to the packet.</p></li>
<li><p>Send a matching packet for a removed pattern and make sure the device does not wake.</p></li>
<li><p>Verify that a simple send and receive works in both directions after the device is awake.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>Begin execution of Wake on LAN test for pattern type: MaxSizePattern</p></td>
<td><ul>
<li><p>Put the device to sleep and send a matching packet. Make sure the device wakes in response to the packet.</p></li>
<li><p>Put the device to sleep then send a non-matching packet. Make sure the device does not wake in response to the packet.</p></li>
<li><p>Send a matching packet for a removed pattern and make sure the device does not wake.</p></li>
<li><p>Verify that a simple send and receive works in both directions after the device is awake.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>Begin execution of capacity Wake on LAN test for pattern type: RandomPattern</p></td>
<td><ul>
<li><p>Put the device to sleep and send a matching packet. Make sure the device wakes in response to the packet.</p></li>
<li><p>Put the device to sleep and send a matching packet. Make sure the device wakes in response to the packet.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

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
<td><p><strong>AP1Password</strong></p></td>
<td><p>The root password for the first physical access point.</p></td>
</tr>
<tr class="even">
<td><p><strong>AP1IPAddress</strong></p></td>
<td><p>The IP address of the WAN port of the first physical access point.</p></td>
</tr>
<tr class="odd">
<td><p><strong>AP2Password</strong></p></td>
<td><p>The root password for the second physical access point.</p></td>
</tr>
<tr class="even">
<td><p><strong>AP2IPAddress</strong></p></td>
<td><p>The root password for the second physical access point.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20NDISTest%206.5%20-%20WLANWakeTests%20-%20OSStack%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




