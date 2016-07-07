---
author: joshbax-msft
title: NDISTest 6.5 - WlanEncryption
description: NDISTest 6.5 - WlanEncryption
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 073883bf-e8f7-48d7-a5f1-eebc79f91386
---

# NDISTest 6.5 - WlanEncryption


This automated test verifies WLANEncryption.

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
<td><p>~11 minutes</p></td>
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

-   Encryption\_cmn

-   Encryption\_ext

-   ExcludeUnencrypted\_ext

The Encryption\_cmn suite consists of the following:

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
<td><p>VerifyCipherKeyCache</p></td>
<td><ul>
<li><p>Verify the DUT receive data encrypted with {0} cipher.</p></li>
<li><p>Send data from the DUT to the access point. The access point should fail to receive the data because all of the cipher keys were deleted.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

The Encryption\_ext suite consists of the following:

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
<td><p>VerifyDefaultCipherAlgorithmValues</p></td>
<td><p>Verify the default values on the DUT for unicast and multicast cipher algorithms.</p></td>
</tr>
<tr class="even">
<td><p>VerifyExcludedMacAddressList</p></td>
<td><ul>
<li><p>Verify that the excluded MAC address list on the DUT is empty when in INIT state.</p></li>
<li><p>Verify that the DUT checks for correct information in a set request for OID_DOT11_EXCLUDED_MAC_ADDRESS_LIST.</p></li>
<li><p>Verify the DUT disassociates with the access point if the device address of the access point is in the excluded MAC address list.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

The ExcludeUnencrypted\_ext suite consists of the following:

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
<td><p>VerifyOIDWithSupportedAuthCipher</p></td>
<td><ul>
<li><p>Verify the functionality of OID_DOT11_EXCLUDE_UNENCRYPTED with {0} authentication and {1} cipher by sending plaintext data from the access point to the DUT while the OID is set to true.</p></li>
<li><p>Verify the functionality of OID_DOT11_EXCLUDE_UNENCRYPTED with {0} authentication and {1} cipher by sending plaintext data from the access point to the DUT while the OID is set to false.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

 

 






