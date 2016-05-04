---
author: joshbax-msft
title: DMR renders correct metadata (DISP-01)
description: DMR renders correct metadata (DISP-01)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e59f7d8d-fa06-43b6-a2d2-f2f8e87816ec
---

# DMR renders correct metadata (DISP-01)


This test verifies the following:

-   If a digital media renderer (DMR) displays the title of an item during playback, by default, the title must be extracted from the dc:title value associated with the item or from an internal metadata field within the file.

-   If the DMR displays the date of a picture during playback, by default, the date must be extracted from the dc:date value associated with the picture or from an internal metadata field within the file.

-   If the DMR displays the size of a file during playback, the value must describe the correct file size. A DMR can obtain the file size from the res@size attribute, from an internal metadata field in the file, or from its own size computation. After determining the file size, the DMR may round the value to any desired precision, such as zero decimal digits or one decimal digit, in order to show the value in a user interface.

-   If an average user measures the duration of an A/V or audio item using a standard clock as Tuser, and if the DMR displays the content duration as Tdisp, then for all cases, the displayed duration must comply with: 0.9 Tuser &lt; Tdisp &lt; 1.1 Tuser.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Media.DMR.Base.DisplayedMetadata</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
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
<td><p>WDKData_MSCP</p></td>
<td><p>The MSCP</p></td>
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
<th>Command option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>NetMediaLogoTests.exe NETMEDIA_0144 /dmrID=[Query WDKData_DeviceUUID] /mscp=[WDKData_MSCP]</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type **/h**.

 

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

 

 

 






