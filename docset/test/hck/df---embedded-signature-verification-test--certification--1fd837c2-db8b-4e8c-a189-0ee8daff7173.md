---
author: joshbax-msft
title: DF - Embedded Signature Verification Test (Certification)
description: DF - Embedded Signature Verification Test (Certification)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 44b7e74d-344f-4b6d-a4ba-10320926b21e
---

# DF - Embedded Signature Verification Test (Certification)


This test validates that the boot start driver under test is embedded and signed.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.DevFund.Reliability.BootDriverEmbeddedSignature</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Device.Fundamentals Reliability Testing Prerequisites](devicefundamentals-reliability-testing-prerequisites.md).

If you see an error similar to “&lt;driver name&gt; is not a signed driver”, you can use signtool.exe to get more information about the digital signature to better troubleshoot the issue. For example, you could run the following command to find out more about pci.sys: **signtool.exe verify /pa /v c:\\Windows\\system32\\drivers\\pci.sys**.

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
<td><p><strong>Wpa2PskAesSsid</strong></p></td>
<td><p>This parameter is required only if the device under test or one of its child devices is a WiFi adapter. Provide the SSID of a WPA2 AES WiFi network that the test can use to test the WiFi adapter.</p>
<p>Default value: kitstestssid</p></td>
</tr>
<tr class="even">
<td><p><strong>Wpa2PskPassword</strong></p></td>
<td><p>This parameter is required only if the device under test or one of its child devices is a WiFi adapter. Provide password of the WPA2 AES WiFi network that is specified by using the <strong>Wpa2PskAesSsid</strong> parameter.</p>
<p>Default value: password</p></td>
</tr>
</tbody>
</table>

 

### File list

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>File</th>
<th>Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>EmbeddedSignature.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\EmbeddedSignature.exe</p></td>
</tr>
<tr class="even">
<td><p>Signtool.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\Signtool.exe</p></td>
</tr>
</tbody>
</table>

 

 

 






