---
author: joshbax-msft
title: DXVA Video Decode Test
description: DXVA Video Decode Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6417da17-a732-476d-a2a2-d6a4b77ced9c
---

# DXVA Video Decode Test


This automated test verifies the requirements listed in the test details table.

This topic is applicable to the following test jobs:

-   DXVA Video Decode - H264

-   DXVA Video Decode - H264 Fuzz

-   DXVA Video Decode - H264 MultiInstance

-   DXVA Video Decode - H264 Quality

-   DXVA Video Decode - H264 Stress

-   DXVA Video Decode - WMV

-   DXVA Video Decode - WMV Fuzz

-   DXVA Video Decode - WMV MultiInstance

-   DXVA Video Decode - WMV Quality

-   DXVA Video Decode - WMV Stress

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirement(s)</strong></p></td>
<td><p>Device.Graphics.WDDM.Render.VideoDecoding</p>
<p>See the [device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Run time</strong></p></td>
<td><p>~2.5 hours</p></td>
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
<td><p><strong>Te.exe wlkdecdxva.dll /select: @TestType='Playback' and @InputType='H264' /enablewttlogging /labmode</strong></p></td>
<td><p>Runs the DXVA Video Decode - H264 test job</p></td>
</tr>
<tr class="even">
<td><p><strong>Te.exe wlkdecdxva.dll /select: @TestType='Fuzz' and @InputType='WMV' /enablewttlogging /labmode</strong></p></td>
<td><p>Runs the DXVA Video Decode - H264 Fuzz test job</p></td>
</tr>
<tr class="odd">
<td><p><strong>Te.exe wlkdecdxva.dll /select: @TestType='MultiInstance' and @InputType='WMV' /enablewttlogging /labmode</strong></p></td>
<td><p>Runs the DXVA Video Decode - H264 MultiInstance test job</p></td>
</tr>
<tr class="even">
<td><p><strong>Te.exe wlkdecdxva.dll /select: @TestType='Quality' and @InputType='WMV' /enablewttlogging /labmode</strong></p></td>
<td><p>Runs the DXVA Video Decode - H264 Quality test job</p></td>
</tr>
<tr class="odd">
<td><p><strong>Te.exe wlkdecdxva.dll /select: @TestType='Stress' and @InputType='WMV' /enablewttlogging /labmode</strong></p></td>
<td><p>Runs the DXVA Video Decode - H264 Stress test job</p></td>
</tr>
<tr class="even">
<td><p><strong>Te.exe wlkdecdxva.dll /select: @TestType='Playback' and @InputType='WMV' /enablewttlogging /labmode</strong></p></td>
<td><p>Runs the DXVA Video Decode - WMV test job</p></td>
</tr>
<tr class="odd">
<td><p><strong>Te.exe wlkdecdxva.dll /select: @TestType='Fuzz' and @InputType='WMV' /enablewttlogging /labmode</strong></p></td>
<td><p>Runs the DXVA Video Decode - WMV Fuzz job</p></td>
</tr>
<tr class="even">
<td><p><strong>Te.exe wlkdecdxva.dll /select: @TestType='MultiInstance' and @InputType='WMV' /enablewttlogging /labmode</strong></p></td>
<td><p>Runs the DXVA Video Decode - WMV MultiInstance test job</p></td>
</tr>
<tr class="odd">
<td><p><strong>Te.exe wlkdecdxva.dll /select: @TestType='Quality' and @InputType='WMV' /enablewttlogging /labmode</strong></p></td>
<td><p>Runs the DXVA Video Decode - WMV Quality test job</p></td>
</tr>
<tr class="even">
<td><p><strong>Te.exe wlkdecdxva.dll /select: @TestType='Stress' and @InputType='WMV' /enablewttlogging /labmode</strong></p></td>
<td><p>Runs the DXVA Video Decode - WMV Stress test job</p></td>
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
<td><p>Te.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\Testing\Runtimes\TAEF\x86\Te.exe</p></td>
</tr>
<tr class="even">
<td><p>Wlkdecdxva.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\DXVA\</p></td>
</tr>
</tbody>
</table>

 

 

 






