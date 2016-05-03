---
author: joshbax-msft
title: NDISTest 6.5 - WlanPower
description: NDISTest 6.5 - WlanPower
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a70c7d0e-1924-4745-8586-0152e6ed1a49
---

# NDISTest 6.5 - WlanPower


This automated test suite verifies the miniport driver’s performance for power save mode.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.ConformToNDIS Device.Network.WLAN.Base.OnlyWDFOrNDIS630Calls Device.Network.WLAN.Base.SupportWiFiAutoSaveMode Device.Network.WLAN.CSBBase.ConformToNDIS Device.Network.WLAN.CSBBase.OnlyWDFOrNDIS630Calls Device.Network.WLAN.CSBBase.SupportWiFiAutoSaveMode Device.Network.WLAN.CSBNLO.SupportNetworkListOffload Device.Network.WLAN.NLO.SupportNetworkListOffload</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~8 minutes</p></td>
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

The following suites are available:

-   AutoPowerSaveMode\_ext

-   NetworkListOffload\_ext

-   NicPowerState\_ext

The AutoPowerSaveMode\_ext suite consists of the following:

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
<td><p>Verify device supports Auto Power Save Mode</p></td>
<td><p>Check capabilities of the device.</p></td>
</tr>
<tr class="even">
<td><p>Verify send and receive with DUT on auto power save mode enabled</p></td>
<td><ul>
<li><p>Verify auto power save mode = true by sending unicast data from the DUT to the access point.</p></li>
<li><p>Verify auto power save mode = true by receiving unicast data from the access point.</p></li>
<li><p>Verify auto power save mode = true by sending broadcast data from the DUT to the access point.</p></li>
<li><p>Verify auto power save mode = true by receiving broadcast data from the access point.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>Verify send and receive with DUT on auto power save mode disabled</p></td>
<td><ul>
<li><p>Verify auto power save mode = false by sending unicast data from the DUT to the access point.</p></li>
<li><p>Verify auto power save mode = false by receiving unicast data from the access point.</p></li>
<li><p>Verify auto power save mode = false by sending broadcast data from the DUT to the access point.</p></li>
<li><p>Verify auto power save mode = false by receiving broadcast data from the access point.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

The NetworkListOffload\_ext suite consists of the following:

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
<td><p>VerifyReportedMaxSizeIsGreaterThanRequirement</p></td>
<td><p>Verify the miniport reports offload capability greater than the requirement of 10.</p></td>
</tr>
<tr class="even">
<td><p>VerifyDriverAcceptsListWithSingleElement</p></td>
<td><p>Verify the miniport does not reject a list with a single element.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyDriverAcceptsEmptyList</p></td>
<td><p>Verify the miniport does not reject an empty NLO list.</p></td>
</tr>
<tr class="even">
<td><p>VerifyDriverAcceptsListWithSizeRequirement</p></td>
<td><p>Verify the miniport does not reject a list with the required size.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyDriverAcceptsListWithReportedMaxSize</p></td>
<td><p>Verify the miniport does not reject a list with the reported size.</p></td>
</tr>
<tr class="even">
<td><p>VerifyDriverNotifiesOSOfVisibleNetworkWithinRequiredTime</p></td>
<td><p>Test miniport indicates status. This is the only test to use SoftAP.</p></td>
</tr>
</tbody>
</table>

 

The NicPowerState\_ext suite consists of the following:

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
<td><p>VerifyStateSetQuery</p></td>
<td><ul>
<li><p>Set the OID_DOT11_NIC_POWER_STATE to radio OFF for all PHY IDs and verify that the query returns the correct state.</p></li>
<li><p>Set the OID_DOT11_NIC_POWER_STATE to radio ON for all PHY IDs and verify the query returns the correct state.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>VerifyStateOff</p></td>
<td><p>Sleep for several seconds while all PHY IDs are disabled. Verify that the statistics counters for each PHY ID are not incremented while PHYs are disabled.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyStateIndications</p></td>
<td><ul>
<li><p>Set the OID_DOT11_NIC_POWER_STATE to radio OFF for all PHY IDs and verify the NDIS_STATUS_DOT11_PHY_STATE_CHANGED indication is received.</p></li>
<li><p>Set the OID_DOT11_NIC_POWER_STATE to radio ON for each PHY ID and verify the NDIS_STATUS_DOT11_PHY_STATE_CHANGED indication is received.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>VerifyStateReset</p></td>
<td><p>Reset the DUT and verify that the NIC power state is persisted for all PHY IDs after reset.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyStateDisableEnable</p></td>
<td><p>Verify that the NIC power state is persisted for all PHY IDs after a enable or disable.</p></td>
</tr>
<tr class="even">
<td><p>VerifyStateHardware</p></td>
<td><p>Verify the DUT reports correct state and indications when hardware switch is enabled or disabled.</p>
<p>The test will show a dialog box asking if the user wants to test with a hardware switch. If yes, the test will tell the user when to turn the hardware switch off or on. If no or the dialog box is ignored, test is skipped.</p></td>
</tr>
</tbody>
</table>

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20NDISTest%206.5%20-%20WlanPower%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




