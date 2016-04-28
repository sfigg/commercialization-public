---
author: joshbax-msft
title: NDISTest 6.5 - WLanAssociation
description: NDISTest 6.5 - WLanAssociation
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 81b84ce2-7b08-447e-8e1b-5eb72b283c18
---

# NDISTest 6.5 - WLanAssociation


This automated test associates and disassociates wireless LAN keys.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.ConformToNDIS Device.Network.WLAN.Base.MeetScanAndConnReq Device.Network.WLAN.Base.OnlyWDFOrNDIS630Calls Device.Network.WLAN.Base.PermitIEToRequestAndResponseAF Device.Network.WLAN.Base.SupportVirtualWiFi Device.Network.WLAN.CSBBase.ConformToNDIS Device.Network.WLAN.CSBBase.MeetScanAndConnReq Device.Network.WLAN.CSBBase.OnlyWDFOrNDIS630Calls Device.Network.WLAN.CSBBase.PermitIEToRequestAndResponseAF Device.Network.WLAN.CSBBase.SupportVirtualWiFi Device.Network.WLAN.CSBSoftAP.SupportSoftAP Device.Network.WLAN.SoftAP.SupportSoftAP</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~12 minutes</p></td>
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

-   Association\_cmn

-   Association\_ext

-   Disassociate\_cmn

The Association\_cmn suite consists of the following:

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
<li><p>Start testsoft access point</p></li>
<li><p>Query supported authentication/cipher types</p></li>
<li><p>Ignore open none</p></li>
<li><p>Start access point comm helper</p></li>
<li><p>Start DUT comm helper</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>VerifyAssociateWithDifferentPHY</p></td>
<td><p>Configure access point for each PHY type support by DUT and then verify that the DUT can successfully connect by using each PHY type.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyResetWhileJoinAdhoc</p></td>
<td><p>Verify the DUT can successfully handle a reset while attempting to connect to IBSS.</p></td>
</tr>
<tr class="even">
<td><p>VerifyAssociateWithSpecifiedNetwork</p></td>
<td><p>Verify the association information when connected to an IBSS network.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyAssociateWithOneAPConfiguredToReject</p></td>
<td><p>Verify the DUT can successfully connect to a different access point in the same ESS if a connection attempt is rejected by the first access point.</p></td>
</tr>
<tr class="even">
<td><p>Verify32BytesSSID</p></td>
<td><p>Verify the DUT can successfully connect to an access point with a 32 byte SSID.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyAssociateWithApStaAp</p></td>
<td><p>Verify the DUT can successfully switch between AP and IBSS networks.</p></td>
</tr>
<tr class="even">
<td><p>VerifyAssociateWithBSSAP</p></td>
<td><p>Verify the DUT can successfully connect to an access point when an IBSS is present with the same SSID. This is not applicable to devices that support InstantGo.</p></td>
</tr>
<tr class="odd">
<td><p>UnloadLoadAssociate</p></td>
<td><p>Verify the DUT can successfully connect after a driver was loaded or unloaded.</p></td>
</tr>
<tr class="even">
<td><p>AssociateUnloadLoad</p></td>
<td><p>Verify the DUT can successfully load and unload while connecting.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyDriverUnloadDuringConnect</p></td>
<td><p>Unload the miniport driver while the DUT is attempting to connect and then verify the driver unloads successfully.</p></td>
</tr>
<tr class="even">
<td><p>VerifyDriverResetDuringConnect</p></td>
<td><p>Verify the DUT successfully resets while attempting to connect to an access point.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyAssociateWithAPRejection</p></td>
<td><p>Verify the DUT can successfully handle an association rejection from an access point.</p></td>
</tr>
<tr class="even">
<td><p>VerifyAssociateWithAPDeauthenticate</p></td>
<td><p>Verify the DUT can successfully handle a deauthentication from an access point while associating.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyAssociateWithAPDisassociate</p></td>
<td><p>Verify the DUT successfully handles a disassociate from an access point while associating.</p></td>
</tr>
<tr class="even">
<td><p>VerifyAssociateWithAPIgnoreRequest</p></td>
<td><p>Verify the DUT successfully handles no association response from an access point.</p></td>
</tr>
</tbody>
</table>

 

The Association\_ext suite consists of the following:

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
<li><p>Start testsoft access point</p></li>
<li><p>Query supported authentication/cipher types</p></li>
<li><p>Ignore open none</p></li>
<li><p>Start access point comm helper</p></li>
<li><p>Start DUT comm helper</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>Before set OID_DOT11_ASSOCIATION_PARAMS, associate DUT and get default IEs.</p></td>
<td><p>Get the default IEs.</p></td>
</tr>
<tr class="odd">
<td><p>After set OID_DOT11_ASSOCIATION_PARAMS, associate DUT and get IEs.</p></td>
<td><p>Set one custom IE and then verify it.</p></td>
</tr>
<tr class="even">
<td><p>After set OID_DOT11_ASSOCIATION_PARAMS, associate DUT and get IEs.</p></td>
<td><p>Set two more custom IEs and then verify all three.</p></td>
</tr>
<tr class="odd">
<td><p>After reset OID_DOT11_ASSOCIATION_PARAMS, associate DUT and get IEs.</p></td>
<td><p>After reset, verify that the custom IEs are gone.</p></td>
</tr>
</tbody>
</table>

 

The Diassociate\_cmn suite consists of the following:

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
<li><p>Start testsoft access point</p></li>
<li><p>Query supported authentication/cipher types</p></li>
<li><p>Ignore open none</p></li>
<li><p>Start access point comm helper</p></li>
<li><p>Start DUT comm helper</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>VerifySTADisassociation</p></td>
<td><p>Verify the DUT successfully indicates a disconnection after receiving OID_DOT11_DISCONNECT_RESET.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyAPDisassociate</p></td>
<td><ul>
<li><p>Clearing all actions on the access point, connect to the DUT to the access point, and then configure the access point for BeaconOnly action to prevent the DUT from associating again.</p></li>
<li><p>Verify the DUT successfully indicates a disconnection after receiving a disassociate frame from the access point.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>VerifyAPDeauthenticate</p></td>
<td><p>Verify the DUT successfully indicates a disconnection after receiving a disassociate frame from the access point.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyAPLoseConnection</p></td>
<td><p>Verify the DUT successfully indicates a disconnection when the access point is no longer available.</p></td>
</tr>
</tbody>
</table>

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20NDISTest%206.5%20-%20WLanAssociation%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




