---
author: joshbax-msft
title: NDISTest 6.5 - WlanScan
description: NDISTest 6.5 - WlanScan
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0dbb6c59-7c1e-4910-9c0b-906f844fcbd0
---

# NDISTest 6.5 - WlanScan


This automated test suite verifies the WLAN scanning capabilities of the device.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.ConformToNDIS Device.Network.WLAN.Base.MeetScanAndConnReq Device.Network.WLAN.Base.OnlyWDFOrNDIS630Calls Device.Network.WLAN.Base.PermitIEToRequestAndResponseAF Device.Network.WLAN.Base.SupportSeparateBeaconAndProbeIE Device.Network.WLAN.CSBBase.ConformToNDIS Device.Network.WLAN.CSBBase.MeetScanAndConnReq Device.Network.WLAN.CSBBase.OnlyWDFOrNDIS630Calls Device.Network.WLAN.CSBBase.PermitIEToRequestAndResponseAF Device.Network.WLAN.CSBBase.SupportSeparateBeaconAndProbeIE</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~13 minutes</p></td>
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

-   Broadcast\_ext

-   DesiredBSSIDList\_ext

-   DesiredSSIDList\_ext

-   EnumBSSList\_ext

-   MediaStreaming\_ext

-   PrivacyExemptList\_ext

-   Scan\_AdditionalIE

-   Scan\_cmn

-   ScanProcess\_ext

-   WCNIE\_ext

The Broadcast\_ext suite consists of the following:

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
<li><p>Set the packet filter of the DUT.</p></li>
<li><p>Query for the unicast authentication and cipher pairs of the DUT.</p></li>
<li><p>Query for the multicast authentication and cipher pairs of the DUT.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>VerifyBroadcastTrafficWithSupportedAuthCipherPairList</p></td>
<td><ul>
<li><p>Connect the DUT to an access point with {0} authentication, unicast cipher {1}.</p></li>
<li><p>Verify that data can be transmitted from SoftAP to the DUT.</p></li>
<li><p>Reset the DUT.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

The DesiredBSSIDList\_ext suite consists of the following:

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
<td><p>VerifyDeviceAssociateWithAP</p></td>
<td><p>Verify the DUT is able to find and associate with an access point. This test adds the access point’s SSID to the DUT’s desired SSID list and then issues a connect request to the DUT. The DUT must associate with the access point.</p></td>
</tr>
<tr class="even">
<td><p>VerifyDeviceAssociateWithHiddenAP</p></td>
<td><p>Verify the DUT is able to find and associate with a hidden access point. This test adds access point’s SSID to the DUT’s desired SSID list and then issues a connect request to the DUT. The DUT must associate with the hidden access point.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyDUTJoinsIBSS</p></td>
<td><p>Verify the DUT can join an IBSS network specified in desired SSID list.</p></td>
</tr>
<tr class="even">
<td><p>VerifyOIDSetQuery</p></td>
<td><p>Verify the DUT properly handles an SSID list with one entry.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyOIDSetWithMaxSize</p></td>
<td><p>Verify the DUT can properly handle an SSID list that is configured with a set request of maximum size.</p></td>
</tr>
<tr class="even">
<td><p>VerifyOIDQueryWithSmallBuffer</p></td>
<td><p>Verify the DUT checks the buffer size for the OID_DOT11_DESIRED_SSID_LIST query.</p></td>
</tr>
</tbody>
</table>

 

The EnumBSSList\_ext suite consists of the following:

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
<td><p>TestCase24_Phase1_EnumZeroBuffer</p></td>
<td><p>Perform a scan and attempt to enumerate by sending a buffer of size 0.</p></td>
</tr>
<tr class="even">
<td><p>TestCase34_Phase1_EnumStandardBuffer</p></td>
<td><p>Populate a BSS list by using a scan request. Enumerate by sending a buffer of size sizeof(DOT11_BYTE_ARRAY). Device should be able to fill in buffer-&gt;uTotalNumOfBytes.</p></td>
</tr>
<tr class="odd">
<td><p>TestCase33_Phase3_EnumThreeULONGBuffer</p></td>
<td><p>Populate a BSS list by using a scan request. Enumerate by sending a buffer of size 3xsizeof(ULONG). Device should be able to fill in buffer-&gt;uTotalNumOfBytes.</p></td>
</tr>
</tbody>
</table>

 

The MediaStreaming\_ext suite consists of the following:

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
<td><p>TestCase26_Phase1_IndependentEnableStreaming</p></td>
<td><ul>
<li><p>Configure the device to function in an IBSS network. Prepare a scan request OID to be sent to the device.</p></li>
<li><p>Enable media streaming. Verify that the query matches the prior assignment and that a scan requested by the operating system can still occur.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>TestCase27_Phase1_InfrastructureEnableStreaming</p></td>
<td><p>Enable media streaming in an infrastructure network. Verify that the query matches the prior assignment and that a scan request can still occur.</p></td>
</tr>
<tr class="odd">
<td><p>TestCase31_Phase1_InfrastructureDisableStreaming</p></td>
<td><p>Disable media streaming in an infrastructure environment. Verify that the query matches the prior assignment.</p></td>
</tr>
<tr class="even">
<td><p>TestCase30_Phase3_IndependentDisableStreaming</p></td>
<td><p>Disable media streaming. Verify that the query matches the prior assignment.</p></td>
</tr>
</tbody>
</table>

 

The PrivacyExemptList\_ext suite consists of the following:

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
<td><p>VerifyInvalidDataSet</p></td>
<td><p>Verify that the DUT checks for invalid values for the OID_DOT11_PRIVACY_EXEMPTION_LIST set request.</p></td>
</tr>
<tr class="even">
<td><p>VerifyDefaultValues</p></td>
<td><p>Query for OID_DOT11_PRIVACY_EXEMPTION_LIST and verify all of the default values.</p></td>
</tr>
</tbody>
</table>

 

The Scan\_AdditionalIE suite consists of the following:

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
<td><p>Check the scan request for the ability to add ProbeRequest IE's.</p></td>
</tr>
</tbody>
</table>

 

The Scan\_cmn suite consists of the following:

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
<td><p>TestResetWhileConnected</p></td>
<td><p>Reset the DUT while it is connected to an access point.</p></td>
</tr>
<tr class="even">
<td><p>SamePHYSameChannelDifferentSSID</p></td>
<td><p>Perform a list scan. Verify that two known access points that are on the same PHY same channel but with different SSIDs are returned in the scan list.</p></td>
</tr>
<tr class="odd">
<td><p>SamePHYDifferentChannelDifferentSSID</p></td>
<td><p>Perform a list scan. Verify that two known access point that are on the same PHY but different channels and different SSIDs are returned in the scan list.</p></td>
</tr>
<tr class="even">
<td><p>DifferentPHYDifferentChannelSameSSID</p></td>
<td><p>Perform a list scan. Verify that two known access points with the same SSID but different PHYs and channels are returned in the scan list.</p></td>
</tr>
<tr class="odd">
<td><p>DifferentPHYDifferentChannelDifferentSSIDWithIBSS</p></td>
<td><p>Perform a list scan. Verify that two known access points and an IBSS are all configured on different SSIDs, PHYs, and channels are returned in the scan list.</p></td>
</tr>
<tr class="even">
<td><p>DifferentPHYDifferentChannel32CharSsid</p></td>
<td><p>Perform a list scan. Verify that two known access points are configured with different SSIDs, PHYs, and channels and with SSID lengths equal to 32 characters are returned in the scan list.</p></td>
</tr>
<tr class="odd">
<td><p>DifferentSSIDAndIBSSWhileAssociated</p></td>
<td><p>Perform a list scan while associated. Verify that two known access point are on the same PHY and same channel but with different SSIDs and an IBSS are returned in the scan list.</p></td>
</tr>
<tr class="even">
<td><p>VerifyIEsSentUp</p></td>
<td><p>Verify the DUT indicates all IEs received in beacons and probes.</p></td>
</tr>
</tbody>
</table>

 

The ScanProcess\_ext suite consists of the following:

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
<td><p>TestCase1_Phase1_ControlSet</p></td>
<td><p>Perform a typical scan for nearby access points. Scan type is auto. The scan searches for both independent and infrastructure devices and 1 SSID of length 0 is in the buffer.</p></td>
</tr>
<tr class="even">
<td><p>TestCase12_Phase1_SSID</p></td>
<td><p>Perform a scan with udot11SSIDsOffset = 0, uNumOfdot11SSIDs = 2, and SSID fields for available support devices in the ucBuffer.</p></td>
</tr>
<tr class="odd">
<td><p>TestCase18_Phase1_PassiveBroadcastSSID</p></td>
<td><p>Perform a passive scan with an explicit list of SSIDs for access points that broadcast SSIDs.</p></td>
</tr>
<tr class="even">
<td><p>TestCase35_Phase1_ScanReset</p></td>
<td><p>Send the SCAN_REQUEST OID to the device followed by a RESET_REQUEST.</p></td>
</tr>
<tr class="odd">
<td><p>TestCase5_Phase3_SpecificBssid</p></td>
<td><p>Perform a scan with a specific BSSID defined in the dot11BSSID field. The access point is assigned the same BSSID and should have a corresponding entry in the BSS list of the DUT.</p></td>
</tr>
<tr class="even">
<td><p>TestCase21_Phase3_PassiveBroadcastAdHoc</p></td>
<td><p>Perform a passive scan with an explicit list of SSIDs for IBSS devices that broadcast SSIDs.</p></td>
</tr>
<tr class="odd">
<td><p>TestCase6_Phase4_Passive</p></td>
<td><p>Perform a passive scan for access points. Packet capture will reveal that no probe requests were transmitted.</p></td>
</tr>
<tr class="even">
<td><p>TestCase7_Phase4_Active</p></td>
<td><p>Perform an active scan for access points. Probe requests should be evident in packet captures.</p></td>
</tr>
<tr class="odd">
<td><p>TestCase13_Phase4_ZeroSSID</p></td>
<td><p>Perform scan with uNumOfdot11SSIDs = 0.</p></td>
</tr>
<tr class="even">
<td><p>TestCase15_Phase4_TwoScans</p></td>
<td><p>Perform two scans back-to-back. The second scan should not occur because the device is busy with first scan.</p></td>
</tr>
<tr class="odd">
<td><p>TestCase36_Phase1_ScanDriverDisable</p></td>
<td><p>Send a scan OID to the device and immediately disable the driver.</p></td>
</tr>
</tbody>
</table>

 

The WCNIE\_ext suite consists of the following:

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
<td><p>SameWCNIEInBeaconAndProbeResponse</p></td>
<td><ul>
<li><p>Verify that the miniport driver returns 2 copies of the same WCNIE (one from Beacons and one from Probe Responses) in its BSS list.</p></li>
<li><p>Verify that the miniport driver removes WCN IEs from its BSS list once the access point stops advertising them.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>DifferentWCNIEsInBeaconsOnly</p></td>
<td><ul>
<li><p>Verify that the miniport driver returns in its BSS list only one WCNIE. which is the one in beacons.</p></li>
<li><p>Verify that the miniport driver updates WCN IE in its BSS list when it receives an access point’s beacons containing different WCN IEs.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>DifferentWCNIEInBeaconAndProbeResponse</p></td>
<td><ul>
<li><p>Verify that the miniport driver returns in its BSS list both WCN IE1 and WCN IE2.</p></li>
<li><p>Verify that the miniport driver updates WCN IE in its BSS list when the access point beacon containing WCN IE1 and its probe response does not contain any WCN IE.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>TestWcnIEsInBeaconAndProbeResponse</p></td>
<td><ul>
<li><p>Verify that the miniport driver returns in its BSS list both different WCN IE of beacon and different WCN IE of probe response in multiple iterations with a passive scan followed by an auto scan.</p></li>
<li><p>Verify that the miniport driver returns in its BSS list both different WCN IE of beacon and different WCN IE of probe response in multiple iterations with a passive scan followed by an auto scan.</p></li>
<li><p>Verify that the miniport driver returns in its BSS list both different WCN IE of beacon and different WCN IE of probe response in multiple iterations with a passive scan followed by an auto scan.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20NDISTest%206.5%20-%20WlanScan%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




