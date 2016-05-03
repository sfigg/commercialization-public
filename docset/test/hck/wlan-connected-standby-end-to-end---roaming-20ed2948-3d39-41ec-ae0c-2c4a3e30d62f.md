---
author: joshbax-msft
title: WLAN Connected Standby End to End - Roaming
description: WLAN Connected Standby End to End - Roaming
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 338bd654-62b4-4241-9d01-485394a0875f
---

# WLAN Connected Standby End to End - Roaming


This automated test verifies that Wireless LAN device on systems that support InstantGo delivers reliable connectivity.

The device seamlessly transitions between D0 and D2 states while in CS. The device maintains L2 connectivity while in Connected Standby. If Wi-Fi access point goes out of range, the device roams to another access point. The device wakes up on matching wake patterns only. There are no spurious wakes in CS. The wake packets are delivered without delay or buffering. The RealTimeCommunication app stays connected in Connected Standby for 50 minutes.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.MeetScanAndConnReq Device.Network.WLAN.CSBBase.MeetScanAndConnReq Device.Network.WLAN.CSBBase.ReliableCSConnectivity</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~52 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Optional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Wireless LAN (802.11) Testing Prerequisites](wireless-lan--80211--testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Error</th>
<th>Description/Workaround</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Network adapter did not disconnect on time.</p></td>
<td><p>Radio was turned off for Wi-Fi access point to which device was connected, but the miniport did not indicate media disconnect to NDIS.</p></td>
</tr>
<tr class="even">
<td><p>Network adapter disconnected too late.</p></td>
<td><p>Radio was turned off for Wi-Fi access point to which device was connected, but the miniport did not indicate media disconnect to NDIS within the expected interval.</p></td>
</tr>
<tr class="odd">
<td><p>Network adapter disconnected too early.</p></td>
<td><p>Miniport indicated media disconnect to NDIS at an unexpected time.</p></td>
</tr>
<tr class="even">
<td><p>Network adapter reconnected too late.</p></td>
<td><p>Radio was turned off for the Wi-Fi access point to which the device was connected, and the radio for another Wi-Fi access point was turned on. The device did not roam to the new access point within the expected interval.</p></td>
</tr>
<tr class="odd">
<td><p>Network adapter did not reconnect on time.</p></td>
<td><p>Radio was turned off for the Wi-Fi access point to which the device was connected, and the radio for another Wi-Fi access point was turned on. The device disconnected from the first access point, but did not reconnect to the second access point.</p></td>
</tr>
<tr class="even">
<td><p>Exited Connected Standby too early.</p></td>
<td><p>The machine left Connected Standby earlier than expected. This can be caused by unexpected user activity, or it might indicate a software bug or driver bug.</p>
<p>Make sure you leave the device under test idle while the test runs</p></td>
</tr>
<tr class="odd">
<td><p>System error occurred for control channel trigger. Make sure NIC is AOAC-capable.</p></td>
<td><p>System failed to plumb wake pattern or protocol offload.</p>
<p>Make sure that the NIC complies with NDIS 6.30 requirements.</p></td>
</tr>
<tr class="even">
<td><p>OID request for network adapter failed.</p></td>
<td><p>System failed to plumb wake pattern or protocol offload.</p>
<p>Make sure that the NIC complies with NDIS 6.30 requirements.</p></td>
</tr>
<tr class="odd">
<td><p>Surprise network device removal.</p></td>
<td><p>NDIS detected surprise network device removal. This indicates that NIC driver has crashed.</p>
<p>Fix driver issue.</p></td>
</tr>
<tr class="even">
<td><p>Control channel trigger is detached.</p></td>
<td><p>TCP connection was torn down. Intermittent network connectivity issue or driver issue can cause this problem.</p>
<p>Make sure there is good reception. Make sure NIC maintains L2 connectivity in Connected Standby.</p></td>
</tr>
<tr class="odd">
<td><p>Network adapter disconnected.</p></td>
<td><p>Network adapter is disconnected</p>
<p>Make sure that there is good reception.</p></td>
</tr>
<tr class="even">
<td><p>Push notification fired too early.</p></td>
<td><p>Application received push notification earlier than it was expected. This is usually caused by TCP RESET from the server side, which indicates L2/L3 connectivity issues.</p>
<p>Make sure that the NIC complies with NDIS 6.30 requirements. Make sure that the NIC maintains L2 connectivity in Connected Standby.</p></td>
</tr>
<tr class="odd">
<td><p>Push notification fired late.</p></td>
<td><p>Application received push notification later than it was expected. This is either a result of buffering or an L2/L3 connectivity issue.</p>
<p>Make sure that the NIC complies with NDIS 6.30 requirements. Make sure that the NIC maintains L2 connectivity in Connected Standby.</p></td>
</tr>
<tr class="even">
<td><p>Push notification did not fire on time.</p></td>
<td><p>Application did not receive push notification when it was expected. This is either a result of buffering or an L2/L3 connectivity issue.</p>
<p>Make sure that the NIC complies with NDIS 6.30 requirements. Make sure that the NIC maintains L2 connectivity in Connected Standby.</p></td>
</tr>
<tr class="odd">
<td><p>Network adapter did not enter low power state within &lt;number&gt; sec since Connected Standby entry.</p></td>
<td><p>NIC stays in D0 in Connected Standby. This can indicate a software bug. If there is driver bug (NIC does not complete power request), system will bugcheck in 10 minutes.</p></td>
</tr>
<tr class="even">
<td><p>Network adapter stayed on &lt;number&gt;% of Connected Standby time.</p></td>
<td><p>NIC stays in D0 in Connected Standby longer than it is expected. This can indicate either a software bug or a device problem.</p></td>
</tr>
<tr class="odd">
<td><p>Unable to install package [path:&lt;path to appx file&gt;] [err:&lt;error description&gt;].</p></td>
<td><p>Test could not install modern test application.</p>
<p>Make sure that the device under test has the correct date/time. Check error description for more details.</p></td>
</tr>
</tbody>
</table>

 

## More information


### Parameters

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
<td><p>AP1Password</p></td>
<td><p>The administrator password of the first access point.</p></td>
</tr>
<tr class="even">
<td><p>AP1IPAddress</p></td>
<td><p>The IP address of the first access point.</p></td>
</tr>
<tr class="odd">
<td><p>AP2Password</p></td>
<td><p>The administrator password of the second access point.</p></td>
</tr>
<tr class="even">
<td><p>AP2IPAddress</p></td>
<td><p>The IP address of the second access point.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Wireless LAN (802.11) Tests](wireless-lan--80211--tests.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WLAN%20Connected%20Standby%20End%20to%20End%20-%20Roaming%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





