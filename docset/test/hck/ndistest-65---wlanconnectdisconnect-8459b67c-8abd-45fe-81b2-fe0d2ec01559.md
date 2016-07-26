---
author: joshbax-msft
title: NDISTest 6.5 - WLanConnectDisconnect
description: NDISTest 6.5 - WLanConnectDisconnect
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3335a155-7e25-499d-b55f-8d895f5686a6
---

# NDISTest 6.5 - WLanConnectDisconnect


This test connects and disconnects a wireless connection.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.ConformToNDIS Device.Network.WLAN.Base.MeetScanAndConnReq Device.Network.WLAN.Base.OnlyWDFOrNDIS630Calls Device.Network.WLAN.Base.SupportVirtualWiFi Device.Network.WLAN.CSBBase.ConformToNDIS Device.Network.WLAN.CSBBase.MeetScanAndConnReq Device.Network.WLAN.CSBBase.OnlyWDFOrNDIS630Calls Device.Network.WLAN.CSBBase.SupportVirtualWiFi Device.Network.WLAN.CSBSoftAP.SupportSoftAP Device.Network.WLAN.SoftAP.SupportSoftAP</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~16 minutes</p></td>
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

-   ConnectRequest\_ext

-   ConnectStart\_ext

-   CrossTraffic\_ext

-   DisconnectRequest\_ext

-   Indications\_ext

The ConnectRequest\_ext suite consists of the following:

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
<td><p>VerifyAdhocNetworkOperation</p></td>
<td><p>Verify the DUT is able to start an IBSS network. This is not applicable on devices that support InstantGo.</p></td>
</tr>
<tr class="even">
<td><p>VerifyAdhocNetworkJoin</p></td>
<td><p>Verify the DUT is able to join an IBSS network. This is not applicable on devices that support InstantGo.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyDriverUnload</p></td>
<td><p>Verify the DUT does not crash during a driver unload while it is connecting to an access point.</p></td>
</tr>
</tbody>
</table>

 

The ConnectStart\_ext suite consists of the following:

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
<td><p>Connect the DUT to the first access point.</p></td>
</tr>
<tr class="even">
<td><p></p></td>
<td><p>Connect the SUT to the second access point.</p></td>
</tr>
<tr class="odd">
<td><p></p></td>
<td><p>Get the current transmit rate on the DUT.</p></td>
</tr>
<tr class="even">
<td><p></p></td>
<td><p>Invoke traffic between the DUT and the first access point.</p></td>
</tr>
<tr class="odd">
<td><p></p></td>
<td><p>Get the current transmit rate on the DUT.</p></td>
</tr>
<tr class="even">
<td><p></p></td>
<td><p>Invoke traffic between the SUT and the second access point.</p></td>
</tr>
<tr class="odd">
<td><p></p></td>
<td><p>Get the current transmit rate on the DUT.</p></td>
</tr>
<tr class="even">
<td><p></p></td>
<td><p>Stop traffic between the SUT and the second access point.</p></td>
</tr>
<tr class="odd">
<td><p></p></td>
<td><p>Get the current transmit rate on the DUT.</p></td>
</tr>
</tbody>
</table>

 

The ConnectStart\_ext suite verifies the connection indication for OID\_DOT11\_CONNECTION\_START for associating with an access point or joining an IBSS STA.

The CrossTraffic\_ext suite consists of the following:

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
<td><p>Connect the DUT to the first access point.</p></td>
</tr>
<tr class="even">
<td><p></p></td>
<td><p>Connect the SUT to the second access point.</p></td>
</tr>
<tr class="odd">
<td><p></p></td>
<td><p>Get the current transmit rate on the DUT.</p></td>
</tr>
<tr class="even">
<td><p></p></td>
<td><p>Invoke traffic between the DUT and the first access point.</p></td>
</tr>
<tr class="odd">
<td><p></p></td>
<td><p>Get the current transmit rate on the DUT.</p></td>
</tr>
<tr class="even">
<td><p></p></td>
<td><p>Invoke traffic between the SUT and the second access point.</p></td>
</tr>
<tr class="odd">
<td><p></p></td>
<td><p>Get the current transmit rate on the DUT.</p></td>
</tr>
<tr class="even">
<td><p></p></td>
<td><p>Stop traffic between the SUT and the second access point.</p></td>
</tr>
<tr class="odd">
<td><p></p></td>
<td><p>Get the current transmit rate on the DUT.</p></td>
</tr>
</tbody>
</table>

 

The DisconnectRequest\_ext suite consists of the following:

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
<td><p>VerifyDisconnectWhileConnectingToAP</p></td>
<td><p>Verify a disconnect request does not crash the DUT while it is connecting to an access point. The DUT must be in extensible station mode and INIT state. The access point must be configured with open authentication and no encryption.</p></td>
</tr>
<tr class="even">
<td><p>VerifyDisconnectWhileJoiningAdhoc</p></td>
<td><p>Verify a disconnect request does not crash the DUT while it joins to an adhoc network. This is not applicable on devices that support InstantGo.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyDisconnectWhileStartingAdhoc</p></td>
<td><p>Verify a disconnect request is not valid when starting an adhoc network. This is not applicable on devices that support InstantGo.</p></td>
</tr>
<tr class="even">
<td><p>VerifyDisconnectAndReset</p></td>
<td><p>Verify a device reset does not crash the miniport driver when it disconnects. This test case will associate the DUT with an access point first and then disconnect from the access point. A reset will be issued after a disconnect request is sent.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyDisconnectAndResetForAdhoc</p></td>
<td><p>Verify a device reset does not crash the miniport driver when it disconnects. This test case will associate the DUT with an adhoc network first and then disconnect from the network. A reset will be issued after a disconnect request is sent.</p></td>
</tr>
</tbody>
</table>

 

The Indications\_ext suite consists of the following:

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
<td><p>VerifyTKIPMICFailure</p></td>
<td><p>Verify that the NDIS_STATUS_DOT11_TKIPMIC_FAILURE indication was received.</p></td>
</tr>
<tr class="even">
<td><p>VerifyPMKcandidateList</p></td>
<td><p>Verify that the NDIS_STATUS_DOT11_PMKID_CANDIDATE_LIST indication was received.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyLinkQuality</p></td>
<td><p>Verify that the NDIS_STATUS_DOT11_LINK_QUALITY indication was received.</p></td>
</tr>
<tr class="even">
<td><p>VerifyDissassociation_DisconnectRequest</p></td>
<td><p>Verify that the NDIS_STATUS_DOT11_DISASSOCIATION indication was received when the DUT issued a reset request while connected to an access point.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyDissassociation_ResetRequest</p></td>
<td><p>Verify that the NDIS_STATUS_DOT11_DISASSOCIATION indication was received when the DUT issued a reset request while connected to an access point.</p></td>
</tr>
<tr class="even">
<td><p>VerifyDissassociation_APDeauthDisassoc</p></td>
<td><p>Verify that the NDIS_STATUS_DOT11_DISASSOCIATION indication was received when the DUT receives a {0} from the access point.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyDissassociation_APLoss</p></td>
<td><p>Verify that the NDIS_STATUS_DOT11_DISASSOCIATION indication was received when the DUT loses its connection with the access point.</p></td>
</tr>
<tr class="even">
<td><p>VerifyAssociation_NoAP</p></td>
<td><p>Verify the indication was received while attempting to connect to access point that does not exist.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyAssociation_SingleAP</p></td>
<td><p>Verifying that the indication was received while connecting to an access point configured for {Authentication/Cipher}.</p></td>
</tr>
<tr class="even">
<td><p>VerifyAssociation_MultipleAP</p></td>
<td><p>Verify the indication was received while attempting to connect to multiple access points in the same ESS. The access points will not respond to association requests to enable verifying multiple association start and complete indications.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyIBSS_Joiner</p></td>
<td><p>Verify the indication was received by the DUT when the DUT joins the SUT’s IBSS.</p></td>
</tr>
<tr class="even">
<td><p>VerifyIBSS_Creator</p></td>
<td><p>Verify the indication was received by the DUT when the SUT joins DUT’s IBSS.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyIBSS_NoIBSS</p></td>
<td><p>Verify the indication was received by the DUT using JoinOnly with no other IBSS available.</p></td>
</tr>
<tr class="even">
<td><p>VerifyRoaming_Infrastructure</p></td>
<td><p>Verify the indication was received while roaming from the first access point to the second access point.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyScanComplete</p></td>
<td><p>Verify the DOT11_STATUS_SCAN_CONFIRM indication was received.</p></td>
</tr>
</tbody>
</table>

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

 

 






