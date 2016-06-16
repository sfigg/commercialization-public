---
author: joshbax-msft
title: DXVA2 Video Decoder Test
description: DXVA2 Video Decoder Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 588d79c1-2453-4e4b-a6aa-a299ae9f6470
---

# DXVA2 Video Decoder Test


Display WDDM drivers must support the DXVA 2.0 Video Decoder DDI as of June 1 2007, at that time Premium WDDM drivers must support at least the following GUIDs:

-   DXVA2\_ModeMPEG2\_VLD or DXVA2\_ModeMPEG2\_iDCT

-   DXVA2\_ModeWMV9\_B (Mo-Comp + Post-Proc) or DXVA2\_ModeWMV9\_C (iDCT + Mo-Comp + Post-Proc)

-   DXVA2\_ModeVC1\_B (Mo-Comp + Post-Proc) or DXVA2\_ModeVC1\_C (iDCT + Mo-Comp + Post-Proc) or DXVA2\_ModeVC1\_D (VLD + IDCT + Mo-Comp + Post-Proc)

**Note**  
It is not a requirement to implement the "Post-Proc" stage on DXVA2\_ModeWMV9 and DXVA2\_ModeVC1 GUIDs.

 

If the display adapter implements the DXVA2\_ModeMPEG2\_VLD GUID, then it must also implement the DXVA2\_ModeMPEG2\_iDCT or DXVA2\_ModeMPEG2\_MoComp GUID.

If the display adapter supports hardware-accelerated decode of H.264, then it must implement support for the DXVA\_ModeH264\_MoComp or DXVA\_ModeH264\_VLD GUID.

This topic applies to the following test jobs:

-   DXVA2 Video Decoder Test

-   DXVA2 Video Decoder Test (WoW64)

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.WDDM.Render.VideoDecoding</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
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
<td><p><strong>ShellRunner -x Premium -c WLP_GRAPHICS_0054.pro -l &quot;[WTTRunWorkingDir]\s98wtt_u.dll&quot;</strong></p></td>
<td><p>This command runs the DXVA2 Video Decoder Test test job and the DXVA2 Video Decoder Test (WoW64) test job.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command line help for this test binary, type **/h**.

 

### File List

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
<td><p>Configdisplay.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\tools\</p></td>
</tr>
<tr class="even">
<td><p>DXVA2APITest.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\streaming\dxva\</p></td>
</tr>
<tr class="odd">
<td><p>Dxva2playbacktests.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\streaming\dxva\</p></td>
</tr>
<tr class="even">
<td><p>Dxvadecoderbase.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\streaming\dxva\</p></td>
</tr>
<tr class="odd">
<td><p>Input.dva</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\streaming\dxva\</p></td>
</tr>
<tr class="even">
<td><p>ReferenceVideoProcessor.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\streaming\dxva\</p></td>
</tr>
<tr class="odd">
<td><p>s98wtt_u.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\common\</p></td>
</tr>
<tr class="even">
<td><p>ShellRunner.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\common\wdk\</p></td>
</tr>
<tr class="odd">
<td><p>TDRWatch.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\</p></td>
</tr>
<tr class="even">
<td><p>WLP_GRAPHICS_0025.pro</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\</p></td>
</tr>
</tbody>
</table>

 

 

 






