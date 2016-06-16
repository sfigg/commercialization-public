---
author: joshbax-msft
title: NDISTest 6.5 - WLanAuthentication
description: NDISTest 6.5 - WLanAuthentication
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a98c4b16-c06f-416f-8f6a-d2246387601e
---

# NDISTest 6.5 - WLanAuthentication


This automated test completes an 802.11 conformance test for testing authentication with either emulated or extensible wireless drivers and verifies the connection and data transmission with different authentication and cipher combinations supported on the network adapter with SoftAP.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.ConformToNDIS Device.Network.WLAN.Base.MeetScanAndConnReq Device.Network.WLAN.Base.OnlyWDFOrNDIS630Calls Device.Network.WLAN.Base.SupportVirtualWiFi Device.Network.WLAN.CSBBase.ConformToNDIS Device.Network.WLAN.CSBBase.MeetScanAndConnReq Device.Network.WLAN.CSBBase.OnlyWDFOrNDIS630Calls Device.Network.WLAN.CSBBase.SupportFiltering32MulticastAddresses Device.Network.WLAN.CSBBase.SupportVirtualWiFi Device.Network.WLAN.CSBSoftAP.SupportSoftAP Device.Network.WLAN.SoftAP.SupportSoftAP</p>
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

-   Authentication\_cmn

-   Association\_ext

The Authentication\_cmn suite consists of the following:

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
<li><p>Query supported authentication and cipher types</p></li>
<li><p>Ignore open none</p></li>
<li><p>Start access point comm helper</p></li>
<li><p>Start DUT comm helper</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>VerifyRoamFailIfAuthMismatch</p></td>
<td><p>Verify the DUT does not roam to a new access point with a different authentication algorithm. You must have two access points with the same SSID but configured with different authentication type. Connect to the first access point and then turn off the access point.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyMismatchPresharedKey</p></td>
<td><p>Verify the DUT does not successfully connect to an access point with mismatched shared keys.</p></td>
</tr>
<tr class="even">
<td><p>VerifyMismatchAuthMode</p></td>
<td><p>Verify a DUT does not successfully connect to an access point with mismatched authentication or cipher.</p></td>
</tr>
<tr class="odd">
<td><p>VerifyAuthenticationForAdhoc</p></td>
<td><p>Verify the DUT successfully connects to an IBSS using {0} authentication and {1} cipher. This is done for all authentication/ciphers supported in IBSS mode. It does not apply to devices that support InstantGo.</p></td>
</tr>
</tbody>
</table>

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

 

 






