---
author: joshbax-msft
title: Win.MBN.CDMA.TestCSConnectivity
description: Win.MBN.CDMA.TestCSConnectivity
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 64849887-372c-4949-80e1-bb9c8950c2fb
---

# Win.MBN.CDMA.TestCSConnectivity


This test verifies that a Wireless WAN device on systems that support InstantGo delivers reliable connectivity while the system is in Connected Standby. The device seamlessly transitions between D0 and D3 warm states while in Connected Standby. The device maintains L2 connectivity while in Connected Standby. The device wakes up on matching wake patterns only. There are no spurious wakes while in Connected Standby. The wake packets are delivered without delay or buffering. The Real Time Communication app stays connected while in Connection Standby for 30 minutes.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.MobileBroadband.CDMA.ReliableCSConnectivity</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~32 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Mobile Broadband Testing Prerequisites](mobile-broadband-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Network Testing](troubleshooting-devicenetwork-testing.md).

If Connected Standby exits too early, ensure that the device under test is left idle for the duration of the test.

If a system error occurs for a control channel trigger, the system could not plumb the wake pattern or protocol offload. Ensure that the network adapter complies with NDIS 6.30 requirements.

If an OID request for a network adapter fails, ensure that the network adapter complies with NDIS 6.30 requirements.

If a surprise network device removal is detected, ensure that the driver does not have an issue.

If the control channel trigger is detached, ensure that there is good reception and that the network adapter maintains L2 connectivity during Connected Standby.

If the network adapter disconnects, ensure that there is good reception.

If a push notification is received too early, ensure that the network adapter complies with NDIS 6.30 requirements and that the network adapter maintains L2 connectivity during Connected Standby.

If a push notification is received too late, ensure that the network adapter complies with NDIS 6.30 requirements and that the network adapter maintains L2 connectivity during Connected Standby.

If a push notification is not received when expected, ensure that the network adapter complies with NDIS 6.30 requirements and that the network adapter maintains L2 connectivity during Connected Standby.

If the network adapter did not enter the low power state within a certain number of seconds during Connected Standby, ensure that the driver is functioning correctly.

If the network adapter stays on a certain percentage of Connected Standby time, ensure that the driver is functioning properly.

If you receive the following error: **Unable to install package \[path: &lt;path to appx file&gt;\] \[err:&lt;error description&gt;\]**, ensure that the device under test has the correct date and time. Check the error description for more details.

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
<td><p>AccessString</p></td>
<td><p>The access string to use when making a connection.</p></td>
</tr>
<tr class="even">
<td><p>UserName</p></td>
<td><p>The user name to use when making a connection.</p></td>
</tr>
<tr class="odd">
<td><p>Password</p></td>
<td><p>The password to use when making a connection.</p></td>
</tr>
<tr class="even">
<td><p>RTCServer</p></td>
<td><p>The host name of IP address of the RTC server.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Win.MBN.CDMA.TestCSConnectivity%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




