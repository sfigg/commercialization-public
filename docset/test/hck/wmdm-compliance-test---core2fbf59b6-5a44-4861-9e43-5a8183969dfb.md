---
author: joshbax-msft
title: WMDM Compliance Test - Core
description: WMDM Compliance Test - Core
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 10ffaa05-1fd3-4e71-b55b-5edcd2c3ec9d
---

# WMDM Compliance Test - Core


This test validates common WMDM scenarios for Portable Media Devices by exercising content transfer, device initialization, and content cancellation scenarios at the WMDM level.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Portable.Core.MediaSync</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows 8.1 x64 Windows 8.1 x86 Windows Vista Client x64 Windows Vista Client x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Device.Portable Testing Prerequisites](deviceportable-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Portable Testing](troubleshooting-deviceportable-testing.md).

## More information


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
<td><p>wmdmcopy.exe</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wmdm\wmdmcopy\</p></td>
</tr>
<tr class="even">
<td><p>test.mp3</p></td>
<td><p><em>[Wow64TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wmdm\wmdmcopy\wdk\</p></td>
</tr>
<tr class="odd">
<td><p>test.wma</p></td>
<td><p><em>[Wow64TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wmdm\wmdmcopy\wdk\</p></td>
</tr>
<tr class="even">
<td><p>proghelp.dll</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wmdm\proghelp\</p></td>
</tr>
<tr class="odd">
<td><p>s98wtt.dll</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\Common\</p></td>
</tr>
<tr class="even">
<td><p>test.asf</p></td>
<td><p><em>[Wow64TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wmdm\wmdmcopy\wdk\</p></td>
</tr>
<tr class="odd">
<td><p>test.wav</p></td>
<td><p><em>[Wow64TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wmdm\wmdmcopy\wdk\</p></td>
</tr>
<tr class="even">
<td><p>test.wmv</p></td>
<td><p><em>[Wow64TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wmdm\wmdmcopy\wdk\</p></td>
</tr>
<tr class="odd">
<td><p>WmdmCopy_Content_Transfer_From_Device_Cancellation.pro</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wmdm\wmdmcopy\</p></td>
</tr>
<tr class="even">
<td><p>WmdmCopy_Content_Transfer_Cancellation.pro</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wmdm\wmdmcopy\</p></td>
</tr>
<tr class="odd">
<td><p>WmdmCopy_Initialize_Device_Storage.pro</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wmdm\wmdmcopy\</p></td>
</tr>
</tbody>
</table>

 

 

 






