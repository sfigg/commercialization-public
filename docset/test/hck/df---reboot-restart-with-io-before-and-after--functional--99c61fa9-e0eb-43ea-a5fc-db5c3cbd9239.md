---
author: joshbax-msft
title: DF - Reboot restart with IO before and after (Functional)
description: DF - Reboot restart with IO before and after (Functional)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9e9cba68-d029-4a7c-9720-e10d2e859fcf
---

# DF - Reboot restart with IO before and after (Functional)


This test starts SimpleIO on devices, initiates a restart with IO running, and then runs SimpleIO again after the restart.

For information included in the Windows Driver Kit on this test, see [Reboot Tests (Device Fundamentals) (Windows Drivers)](http://msdn.microsoft.com/library/windows/hardware/jj673016.aspx).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.DevFund.Reliability.Discretional</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~4 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Device.Fundamentals Reliability Testing Prerequisites](devicefundamentals-reliability-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device Fundamentals Reliability Testing by using the Windows HCK](troubleshooting-device-fundamentals-reliability-testing-by-using-the-windows-hck.md).

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
<td><p><strong>WDTFREMOTESYSTEM</strong></p></td>
<td><p>This parameter is required only if the device under test, or one of its child devices, is a wired network adapter that does not have an IPv6 gateway address. If this parameter is required on your network, you must provide an IPv6 address that the test network adapter can ping to test network.</p>
<p>Example: fe80::78b6:810:9c12:46cd</p></td>
</tr>
<tr class="even">
<td><p><strong>Wpa2PskAesSsid</strong></p></td>
<td><p>This parameter is required only if the device under test or one of its child devices is a WiFi adapter. Provide the SSID of a WPA2 AES WiFi network that the test can use to test the WiFi adapter.</p>
<p>Default value: kitstestssid</p></td>
</tr>
<tr class="odd">
<td><p><strong>Wpa2PskPassword</strong></p></td>
<td><p>This parameter is required only if the device under test or one of its child devices is a WiFi adapter. Provide password of the WPA2 AES WiFi network that is specified by using the <strong>Wpa2PskAesSsid</strong> parameter.</p>
<p>Default value: password</p></td>
</tr>
</tbody>
</table>

 

 

 






