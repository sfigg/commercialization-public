---
author: joshbax-msft
title: DX11 Video Content Protection FeatureLevel 11
description: DX11 Video Content Protection FeatureLevel 11
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4a5535f5-c8a9-4ea4-9206-53e51920c139
---

# DX11 Video Content Protection FeatureLevel 11


This automated test verifies the requirements listed in the test details table.

This topic applies to the following test jobs:

-   DX11 Video Content Protection FeatureLevel 11

-   DX11 Video Content Protection FeatureLevel 9

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.WDDM.Render.VideoDecoding Device.Graphics.WDDM12.Render.D3D11VideoProcessing</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8 (x86) Windows 8.1 x86</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Graphic Adapter or Chipset Testing Prerequisites](graphic-adapter-or-chipset-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

## More information


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
<td><p><strong>ShellRunner.exe -c DX11API_ContentProtection_FL11.pro -l [WTTRunWorkingDir]\s98wtt_u.dll</strong></p></td>
<td><p>Runs the test job.</p></td>
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
<td><p>DX11API_ContentProtection_FL11.pro</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\streaming\dxva\</p></td>
</tr>
<tr class="even">
<td><p>DXVA_H264Filters.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\streaming\dxva\</p></td>
</tr>
<tr class="odd">
<td><p>DXVA2APITest.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\streaming\dxva\</p></td>
</tr>
<tr class="even">
<td><p>dxva2playbacktests.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\streaming\dxva\</p></td>
</tr>
<tr class="odd">
<td><p>dxvadecoderbase.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\streaming\dxva\</p></td>
</tr>
<tr class="even">
<td><p>Input.dva</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\streaming\dxva\</p></td>
</tr>
<tr class="odd">
<td><p>s98wtt_u.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\common\</p></td>
</tr>
<tr class="even">
<td><p>shellrunner.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\common\wdk\</p></td>
</tr>
</tbody>
</table>

 

 

 






