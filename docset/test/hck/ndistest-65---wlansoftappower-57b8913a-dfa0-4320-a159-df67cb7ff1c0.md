---
author: joshbax-msft
title: NDISTest 6.5 - WlanSoftAPPower
description: NDISTest 6.5 - WlanSoftAPPower
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f820d0e8-f24f-43e1-bb9a-c6d43c54d7e3
---

# NDISTest 6.5 - WlanSoftAPPower


These automated test suites put the SoftAP device in different power states, such as hibernate and resume, and verifies that the SoftAP does not beacon on resume. This test also verifies when power save mode is enabled on the client and then buffers the data to the client from the access point according to the 802.11 specification.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.MeetPerformanceReq Device.Network.WLAN.Base.SupportVirtualWiFi Device.Network.WLAN.CSBBase.MeetPerformanceReq Device.Network.WLAN.CSBBase.SupportVirtualWiFi Device.Network.WLAN.CSBSoftAP.SupportSoftAP Device.Network.WLAN.SoftAP.SupportSoftAP</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
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

The following suites are available:

-   SoftAP\_Power\_ext

-   SoftAP\_PowerSaveMode\_ext

The SoftAP\_Power\_ext suite consists of the following:

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
<td><p></p></td>
<td><ul>
<li><p>Verify that the OP mode has not changed on resuming from standby.</p></li>
<li><p>Verify that the OP mode has not changed on resuming from hibernate.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

The SoftAP\_PowerSaveMode\_ext suite consists of the following:

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
<td><p>Verify the DUT can send and receive data in power save level DOT11_POWER_SAVING_FAST_PSP.</p></td>
<td><ul>
<li><p>Verify the power save level by sending unicast data from the SUT that is in a sleep state to access point and awake SUT.</p></li>
<li><p>Verify the power save level by receiving unicast data from the access point and awake SUT.</p></li>
<li><p>Verify the power save level by sending broadcast data from the SUT that is in a sleep state to SoftAP.</p></li>
<li><p>Verify the power save level by receiving broadcast data from SoftAP.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>Verify the DUT can send and receive data in power save level DOT11_POWER_SAVING_MAX_PSP.</p></td>
<td><ul>
<li><p>Verify the power save level by sending unicast data from the SUT that is in a sleep state to access point and awake SUT.</p></li>
<li><p>Verify the power save level by receiving unicast data from the access point and awake SUT.</p></li>
<li><p>Verify the power save level by sending broadcast data from the SUT that is in a sleep state to SoftAP.</p></li>
<li><p>Verify the power save level by receiving broadcast data from SoftAP.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>Verify the DUT can send and receive data in power save level DOT11_POWER_SAVING_MAXIMUM_LEVEL.</p></td>
<td><ul>
<li><p>Verify the power save level by sending unicast data from the SUT that is in a sleep state to access point and awake SUT.</p></li>
<li><p>Verify the power save level by receiving unicast data from the access point and awake SUT.</p></li>
<li><p>Verify the power save level by sending broadcast data from the SUT that is in a sleep state to SoftAP.</p></li>
<li><p>Verify the power save level by receiving broadcast data from SoftAP.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20NDISTest%206.5%20-%20WlanSoftAPPower%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




