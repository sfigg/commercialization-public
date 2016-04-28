---
author: joshbax-msft
title: Verify WiFi Alliance Certification
description: Verify WiFi Alliance Certification
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7e28264e-b1e7-4d0a-a0ac-ea2255009704
---

# Verify WiFi Alliance Certification


This manual test suite validates whether the miniport passes the Windows Hardware Certification Kit (Windows HCK) WLAN certifications requirements.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.PassWiFiAllianceCertification Device.Network.WLAN.CSBBase.PassWiFiAllianceCertification</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~1 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Wireless LAN (802.11) Testing Prerequisites](wireless-lan--80211--testing-prerequisites.md).

This test will take in the parameters listed below in the [Command syntax](#syntax) section on this page. The test validates that the device is a properly formatted WFA Certification ID and that you have passed the required WFA certification tests for 802.11/WPA2/WPA, 802.11n, 802.11w, and WMM (STA).

-   

-   

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

## More information


### <a href="" id="syntax"></a>Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>WFA_CID String</strong></p></td>
<td><p>WFA Certification ID</p></td>
</tr>
<tr class="even">
<td><p><strong>CoreWiFi_Certified</strong></p></td>
<td><p>Defines whether the miniport passes the WFA Core Wifi.</p>
<p></p></td>
</tr>
<tr class="odd">
<td><p><strong>ElevenWCertified</strong></p></td>
<td><p>Defines whether the miniport passes WFA 11w Certification.</p></td>
</tr>
<tr class="even">
<td><p><strong>WMM_Certified</strong></p></td>
<td><p>Defines whether the miniport passes WFA WMM Certification.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Wireless LAN (802.11) Tests](wireless-lan--80211--tests.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Verify%20WiFi%20Alliance%20Certification%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





