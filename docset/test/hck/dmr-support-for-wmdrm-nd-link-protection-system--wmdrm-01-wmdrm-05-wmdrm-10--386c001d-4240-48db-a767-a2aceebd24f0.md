---
author: joshbax-msft
title: DMR support for WMDRM-ND Link Protection System (WMDRM-01 WMDRM-05 WMDRM-10)
description: DMR support for WMDRM-ND Link Protection System (WMDRM-01 WMDRM-05 WMDRM-10)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7310e87d-2555-42b7-b5b1-612c6bfc8088
---

# DMR support for WMDRM-ND Link Protection System (WMDRM-01 WMDRM-05 WMDRM-10)


This test verifies that if a digital media renderer (DMR) implements WMDRM-ND, the implementation adheres to DLNA guidelines (WMDRM-01), is capable of decoding a given set of audio profiles (WMDRM-05), and is capable of decoding a given set of A/V profiles if is an A/V DMR (WMDRM-10), as specified below.

**WMDRM-01** (Applies to A/V DMR and Audio DMR)

If a device implements WMDRM-ND, the implementation must adhere to the DLNA Guidelines for WMDRM-ND Link Protection.

**WMDRM-05** (Applies to A/V DMR and Audio DMR)

If a device implements WMDRM-ND, the implementation must decode and play all of the following audio profiles:

-   WMDRM\_WMALSL

-   WMDRM\_WMABASE

-   WMDRM\_WMAFULL

**WMDRM-10** (Applies to A/V DMR)

If a device implements WMDRM-ND, the implementation must decode and play all of the following A/V profiles:

-   WMDRM\_WMVMED\_BASE

-   WMDRM\_WMVMED\_FULL

-   WMDRM\_WMVHIGH\_FULL

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Media.DMR.Base.WMDRMNDLinkProtectionSupport</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~6 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Experiences</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Digital Media Renderer Testing Prerequisites](digital-media-renderer-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Media Testing](troubleshooting-devicemedia-testing.md).

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
<td><p>WDKData_DeviceUUID</p></td>
<td><p>The Device ID</p></td>
</tr>
<tr class="even">
<td><p>WDKData_WMDRM</p></td>
<td><p>Specifies whether the device supports WM-DRM Link Protection technology.</p></td>
</tr>
</tbody>
</table>

 

### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>NetMediaLogoTests.exe NETMEDIA_0051 /dmrID=[Query WDKData_DeviceUUID] /wmdrm=[WDKData_WMDRM]</strong></p></td>
<td><p>Runs the test.</p></td>
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
<td><p>NetMediaLogoTests.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\sharing\netmedialogotests</p></td>
</tr>
</tbody>
</table>

 

 

 






