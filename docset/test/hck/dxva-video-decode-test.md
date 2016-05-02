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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20DXVA%20Video%20Decode%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




