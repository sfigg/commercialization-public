---
author: joshbax-msft
title: NDISTest 6.5 - WlanSoftAP\_cmn
description: NDISTest 6.5 - WlanSoftAP\_cmn
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9c17cb18-b5e6-4a7b-a098-4754f3eb5ebe
---

# NDISTest 6.5 - WlanSoftAP\_cmn


This automated test completes an 802.11 conformance test for testing SoftAP (hosted network) mode.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.SupportVirtualWiFi Device.Network.WLAN.CSBBase.MeetScanAndConnReq Device.Network.WLAN.CSBBase.SupportVirtualWiFi Device.Network.WLAN.CSBSoftAP.SupportSoftAP Device.Network.WLAN.SoftAP.SupportSoftAP</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~15 minutes</p></td>
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

The following suites are available in this test:

-   SoftAP\_AssociationCompletion

-   SoftAP\_Authentication\_ext

-   SoftAP\_ConnectedOIDs\_ext

-   SoftAP\_OIDs\_ext

-   SoftAP\_BVT\_ext

-   SoftAP\_ClientDisconnect\_ext

-   SoftAP\_Notifications\_ext

-   SoftAP\_wps\_ext

-   SoftAP\_ExcludeUnencrypted\_ext

-   SoftAP\_SendRecv\_ext

-   SoftAP\_PrivacyExemptList\_ext

The SoftAP\_AssociationCompletion suite consists of the following:

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
<td><p>Pre-configuration</p></td>
<td><ul>
<li><p>Start testsoft access point.</p></li>
<li><p>Query supported authentication/cipher types.</p></li>
<li><p>Ignore open none.</p></li>
<li><p>Start access point comm helper.</p></li>
<li><p>Start DUT comm helper.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p></p></td>
<td><p>Validate that the DUT softap sends the PHY_FREQEUNCY_ADOPTED indication when started.</p></td>
</tr>
<tr class="odd">
<td><p></p></td>
<td><p>Verify that the association completion indication contains valid IE beacon information while using RSNA authentication and CCMP cipher.</p></td>
</tr>
<tr class="even">
<td><p></p></td>
<td><p>Verify that the association completion indication contains valid IE beacon information while using RSNA authentication and CCMP cipher. Additional IE for beacon is present.</p></td>
</tr>
<tr class="odd">
<td><p></p></td>
<td><p>Verify the adapter sends a valid disassociation indication for client disassociation.</p></td>
</tr>
<tr class="even">
<td><p></p></td>
<td><p>Verify the adapter sends a valid disassociation indication for ExtAP disassociation.</p></td>
</tr>
</tbody>
</table>

 

The SoftAP\_Authentication\_ext suite consists of the following:

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
<td><p>Pre-configuration</p></td>
<td><ul>
<li><p>Start testsoft access point as extensible station.</p></li>
<li><p>Query supported authentication/cipher types.</p></li>
<li><p>Ignore open none.</p></li>
<li><p>Start access point comm helper.</p></li>
<li><p>Start DUT comm helper.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>VerifyMinimumRequirement</p></td>
<td><p>Verify whether the adapter supports WPA2PSK/AES as the minimum authentication.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyAuthenticationWithSupportedAuthCipher</p></td>
<td><ul>
<li><p>Verify the SUT[0] successfully connects to SoftAP using {1} authentication and {2} cipher.</p></li>
<li><p>Verify the SUT[1] successfully connects to SoftAP using {1} authentication and {2} cipher.</p></li>
<li><p>Verify the data transmission fails with mismatched keys.</p></li>
<li><p>Verify the broadcast data transmission fails with mismatched default keys.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>VerifyMismatchAuthMode</p></td>
<td><p>Verify the DUT does not successfully connect to an access point with mismatched authentication or cipher.</p></td>
</tr>
</tbody>
</table>

 

SoftAP\_ConnectedOIDs\_ext - Running OIDs tests when Virtualization is enabled:

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
<td><p>Pre-configuration</p></td>
<td><ul>
<li><p>Start testsoft access point as extensible station.</p></li>
<li><p>Query supported authentication/cipher types.</p></li>
<li><p>Ignore open none.</p></li>
<li><p>Start access point comm helper.</p></li>
<li><p>Start DUT comm helper.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>AP_INIT</p></td>
<td><ul>
<li><p>Verifying query on OID_DOT11_ENUM_BSS_LIST returns NDIS_STATUS_SUCCESS.</p></li>
<li><p>Verify OID_DOT11_INCOMING_ASSOCIATION_DECISION results for ExtAP-Init State.</p></li>
<li><p>Verifying OID_DOT11_ADDITIONAL_IE behavior for ExtAP-Init state.</p></li>
<li><p>Checking whether changing modes removes the IE.</p></li>
<li><p>Set IE and start ExtAP.</p></li>
<li><p>Verifying probe response IE.</p></li>
<li><p>Verifying Additional Beacon IE.</p></li>
<li><p>Verifying reset clears the IEs set earlier.</p></li>
<li><p>Verifying query on dot11 statistics.</p></li>
<li><p>Verifying that we get proper results on OID_DOT11_DISASSOCIATE_PEER_REQUEST.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>AP_Running</p></td>
<td><ul>
<li><p>Verifying query on OID_DOT11_ENUM_BSS_LIST returns NDIS_STATUS_SUCCESS.</p></li>
<li><p>Verify OID_DOT11_INCOMING_ASSOCIATION_DECISION results for ExtAP-OP State, without clients.</p></li>
<li><p>Set IE Before Connect/Scan operation.</p></li>
<li><p>Verifying probe response IE.</p></li>
<li><p>Verifying probe Beacon IE.</p></li>
<li><p>Verifying query on dot11 statistics.</p></li>
<li><p>Verifying proper results on OID_DOT11_DISASSOCIATE_PEER_REQUESTConnect SUT[0] to AP.</p></li>
<li><p>One_Client_connected.</p></li>
<li><p>Verifying query on OID_DOT11_ENUM_BSS_LIST returns NDIS_STATUS_SUCCESS.</p></li>
<li><p>Verifying query on dot11 statistics.</p></li>
<li><p>Verifying that we get proper results on OID_DOT11_DISASSOCIATE_PEER_REQUEST.</p></li>
<li><p>Connect SUT[1] to AP.</p></li>
<li><p>TWO_CLIENT_CONNECTED.</p></li>
<li><p>Verifying query on OID_DOT11_ENUM_BSS_LIST returns NDIS_STATUS_SUCCESS.</p></li>
<li><p>Verifying query on dot11 statistics.</p></li>
<li><p>Verifying proper results on OID_DOT11_DISASSOCIATE_PEER_REQUEST.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

SoftAP\_OIDs\_ext - Running OIDs tests when Virtualization is enabled:

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
<td><p>Pre-configuration</p></td>
<td><ul>
<li><p>Start testsoft access point as extensible station.</p></li>
<li><p>Query supported authentication/cipher types.</p></li>
<li><p>Ignore open none.</p></li>
<li><p>Start access point comm helper.</p></li>
<li><p>Start DUT comm helper.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>OID_DOT11_CURRENT_OPERATION_MODE_Handler</p></td>
<td><ul>
<li><p>Setting/Querying Opmode to ExtSta.</p></li>
<li><p>Setting/Querying Opmode to ExtAP-Init.</p></li>
<li><p>Trying to set OpMode while scan is in progress. Verifying Opmode should not be changed.</p></li>
<li><p>Start AP.</p></li>
<li><p>Trying to set Opmode to while AP is running. Verifying proper error code.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>OID_DOT11_START_AP_REQUEST_Handler</p></td>
<td><ul>
<li><p>Verifying starting SoftAP from ExtSta-Init fails.</p></li>
<li><p>Verifying starting SoftAP from ExtAP-Init succeeds.</p></li>
<li><p>Verifying starting SoftAP from ExtAP-OP state fails.</p></li>
<li><p>Verifying starting SoftAP when all PHYs are OFF fails.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>OID_DOT11_RESET_REQUEST_Handler</p></td>
<td><ul>
<li><p>Checking whether reset with reset type dot11_reset_type_phy fails in ExtAP-Init.</p></li>
<li><p>Checking whether reset with reset type dot11_reset_type_phy_and_mac succeeds in ExtAP-Init.</p></li>
<li><p>Checking whether reset with reset type dot11_reset_type_phy fails in ExtAP-OP.</p></li>
<li><p>Checking whether reset with reset type dot11_reset_type_phy_and_mac succeeds in ExtAP-OP.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>OID_DOT11_NIC_POWER_STATE_Handler</p></td>
<td><ul>
<li><p>Verifying Setting and Querying power mode on ExtAP-Init succeeds.</p></li>
<li><p>Start AP.</p></li>
<li><p>Verifying that changing power state succeeds for ExtAP-OP state.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>OID_DOT11_DESIRED_SSID_LIST_Handler</p></td>
<td><ul>
<li><p>Verifying error code for empty ssid list OID_DOT11_DESIRED_SSID_LIST in ExtAP-Init state.</p></li>
<li><p>Verifying when no SSID list is set, the OID call results empty list.</p></li>
<li><p>Verifying error code for empty ssid OID_DOT11_DESIRED_SSID_LIST in ExtAP-Init state.</p></li>
<li><p>Verifying OID_DOT11_DESIRED_SSID_LIST with proper SSID ExtAP-Init state.</p></li>
<li><p>Verifying Query on OID_DOT11_DESIRED_SSID_LIST in ExtAP-Init state.</p></li>
<li><p>Start AP.</p></li>
<li><p>Verifying Query on OID_DOT11_DESIRED_SSID_LIST, in ExtAP-OP mode.</p></li>
<li><p>Verifying error code for set on OID_DOT11_DESIRED_SSID_LIST, in ExtAP-OP mode.</p></li>
<li><p>Verifying reset clears the SSID currently set.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>OID_DOT11_CURRENT_CHANNEL_Handler</p></td>
<td><ul>
<li><p>Validating that setting invalid channel fails.</p></li>
<li><p>Setting AC Flags.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>OID_DOT11_AUTO_CONFIG_ENABLED_Handler</p></td>
<td><ul>
<li><p>Verifying AC flags OIDs for ExtAP-Init state.</p></li>
<li><p>Starting the AP.</p></li>
<li><p>Verifying AC flags OIDs for ExtAP-OP state.</p></li>
<li><p>Cleanup.</p></li>
<li><p>Setting AC flags to default value.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>OID_DOT11_DESIRED_PHY_LIST_Handler</p></td>
<td><ul>
<li><p>Checking error code while setting empty list.</p></li>
<li><p>Checking error code while setting invalid PHY id.</p></li>
<li><p>Setting/Querying default PHY ID list.</p></li>
<li><p>Verifying phy list is same as set in ExtAP-OP mode.</p></li>
<li><p>Starting the AP.</p></li>
<li><p>Verifying error code while setting phy list in ExtAP-OP mode.</p></li>
<li><p>Verifying query phy list in ExtAP-OP mode.</p></li>
<li><p>Cleanup.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>OID_DOT11_CURRENT_PHY_ID_Handler</p></td>
<td><ul>
<li><p>Saving the original Phy list.</p></li>
<li><p>Setting current phy.</p></li>
<li><p>Starting/stopping AP on the phy.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

The SoftAP\_BVT\_ext suite consists of the following:

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
<td><p>Pre-configuration</p></td>
<td><ul>
<li><p>Start testsoft access point as extensible station.</p></li>
<li><p>Query supported authentication/cipher types.</p></li>
<li><p>Ignore open authentication with no encryption.</p></li>
<li><p>Start access point comm helper.</p></li>
<li><p>Start DUT comm helper.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p></p></td>
<td><p>Verify that the SUT can connect to SoftAP.</p></td>
</tr>
<tr class="odd">
<td><p></p></td>
<td><p>Verify data transmission across the SUT and SoftAP.</p></td>
</tr>
<tr class="even">
<td><p></p></td>
<td><p>Verify that the SUT can connect to infrastructure and IBSS networks after connecting to EXTAP. This does not apply to devices that support InstantGo.</p></td>
</tr>
</tbody>
</table>

 

The SoftAP\_ClientDisconnect\_ext suite consists of the following:

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
<td><p>TestDisconnect</p></td>
<td><p>Connect the SUT to the SoftAP and then do an implicit disconnect.</p></td>
</tr>
<tr class="even">
<td><p>TestDisconnect</p></td>
<td><p>Connect the SUT to the SoftAP and verify the notification when the SUT explicitly disconnects.</p></td>
</tr>
<tr class="odd">
<td><p>TestDisconnect</p></td>
<td><p>Connect the SUT to the SoftAP, start a data transfer, and then verify the notification when the SUT explicitly disconnects.</p></td>
</tr>
</tbody>
</table>

 

The SoftAP\_Notifications\_ext suite consists of the following:

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
<td><p>Verify that all expected events are received when {0} is added. Run this test case for ASSOC_DECISION_NONE, ASSOC_DECISION_SUCCESS, ASSOC_DECISION_FAILURE, and ASSOC_DECISION_MAX.</p></td>
</tr>
</tbody>
</table>

 

The SoftAP\_WPS\_ext suite consists of the following:

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
<td><p>ValidateWPSOnTransitions</p></td>
<td><ol>
<li><p>Verify that WPS is disabled when adapter is reset.</p></li>
<li><p>Verify the error code when set to ExtSTA mode.</p></li>
<li><p>Verify that enabling WPS in ExtAP Init mode works.</p></li>
<li><p>Verify that disabling WPS in ExtAP Init mode works.</p></li>
<li><p>Verify that enabling WPS in ExtAP OP mode works.</p></li>
<li><p>Verify that disabling WPS in ExtAP OP mode works.</p></li>
<li><p>Verify the WPS Disabled ExtAP OP to ExtAP Init transition.</p></li>
<li><p>Verify the WPS Enabled ExtAP OP to ExtAP Init transition.</p></li>
<li><p>Verify that the WPS disabled status is maintained across ExtAP init to ExtAP OP transitions.</p></li>
<li><p>Verify the WPS enabled status is maintained across ExtAP init to ExtAP OP transitions.</p></li>
</ol></td>
</tr>
<tr class="even">
<td><p>VerifyWPSConnection</p></td>
<td><ul>
<li><p>Verify the ExtAP-Client connection attempt when WPS is Enabled and the cipher is WEP.</p></li>
<li><p>Verify the ExtAP-Client connection attempt when WPS is disabled and the cipher is WEP.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>VerifyManagementPackets</p></td>
<td><ul>
<li><p>Verify the beacon packet before and after WPS is enabled without additional IE.</p></li>
<li><p>Verify the ProbeResonse packet before and after WPS is enabled without additional IE.</p></li>
<li><p>Verify the beacon packet before and after WPS is enabled with additional IE.</p></li>
<li><p>Verify the ProbeResonse packet before and after WPS is enabled with additional IE.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>VerifyConnectionPacketsForWPS</p></td>
<td><p>Validate that the ExtAP generates authentication, association response, and deauth packets</p></td>
</tr>
<tr class="odd">
<td><p>VerifyDisconnectIndications</p></td>
<td><ul>
<li><p>Validate the disassociate indications on the client when WPS is enabled on ExtAP with WPS client connected and with non-WPS client.</p></li>
<li><p>Validate the disassociate indications on the client when WPS is enabled on ExtAP with WPS client connected and without non-WPS client.</p></li>
<li><p>Validating the disassociate indications on ExtAP when WPS is enabled on ExtAP with WPS client connected and with non-WPS client.</p></li>
<li><p>Validating the disassociate indications on ExtAP when WPS is enabled on ExtAP with WPS client connected and without non-WPS client.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

The SoftAP\_ExludeUnencrypted\_ext suite consists of the following:

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
<td><p>VerifyAuthenticationWithSupportedAuthCipher</p></td>
<td><ul>
<li><p>Verify the DUT successfully connects to an access point using {0} authentication and {1} cipher.</p></li>
<li><p>Verify the functionality of OID_DOT11_EXCLUDE_UNENCRYPTED with &lt;Auth&gt; authentication and &lt;Cipher&gt; cipher by sending plaintext data from the access point to the DUT while the OID is set to true.</p></li>
<li><p>Verify the functionality of OID_DOT11_EXCLUDE_UNENCRYPTED with &lt;Auth&gt; authentication and &lt;Cipher&gt; cipher by sending plaintext data from the access point to the DUT while the OID is set to FALSE.</p></li>
<li><p>Verify the DUT successfully connects to an access point using {0} authentication and {1} cipher.</p></li>
<li><p>Verify OID_DOT11_EXCLUDE_UNENCRYPTED does not affect sending encrypted data from the access point to the DUT while the OID is set to true with {0} authentication and {1} cipher.</p></li>
<li><p>Verify OID_DOT11_EXCLUDE_UNENCRYPTED does not affect sending encrypted data from the access point to the DUT while the OID is set to false with {0} authentication and {1} cipher.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

The SoftAP\_SendRecv\_ext suite consists of the following:

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
<li><p>Verify whether the SUT can connect to SoftAP.</p></li>
<li><p>Set the keys on client 0.</p></li>
<li><p>Verify the data transmission from SUT[0] to SoftAP.</p></li>
<li><p>Verify whether the SUT can connect to SoftAP.</p></li>
<li><p>Set the keys on client 1.</p></li>
<li><p>Verify the data transmission from SUT[1] to SoftAP.</p></li>
<li><p>Verify the data transmission from SUT[0] to SUT[1].</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

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
<td><p>VerifyDefaultValues</p></td>
<td><p>Query for OID_DOT11_PRIVACY_EXEMPTION_LIST and verify all the default values.</p></td>
</tr>
<tr class="even">
<td><p>TestPrivacyExemptList</p></td>
<td><ul>
<li><p>Verify that setting or querying the privacy exempt list succeeds.</p></li>
<li><p>Verify that resetting the privacy exempt list clears it.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>ValidatePrivacyExemptListBehavior</p></td>
<td><ul>
<li><p>The starting test case for Exempt on Key mapping unavailable. Unicast EAPOL ethertype traffic where we set the keys.</p></li>
<li><p>The starting test case for Exempt on Key mapping unavailable. Unicast EAPOL ethertype traffic where we do not set the keys.</p></li>
<li><p>Verify data transmission.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

The SoftAP\_PrivacyExemptList\_ext suite consists of the following:

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

 

 






