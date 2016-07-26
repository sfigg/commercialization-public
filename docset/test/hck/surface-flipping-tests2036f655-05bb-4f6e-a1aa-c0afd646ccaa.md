---
author: joshbax-msft
title: Surface Flipping Tests
description: Surface Flipping Tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9b59c251-5e49-4697-8e4f-0b4d74e6a5cb
---

# Surface Flipping Tests


This automated test makes sure that the Microsoft® DirectDraw video card supports surface flipping, flip status reporting, and vertical blank querying.

This test runs the following test cases:

-   SURF\_GetFlipStatus

-   API\_GetVerticalBlankStatus

-   PC98\_22 (PC97 20) Perform Double Buffer Swaps with No Tearing

This topic applies to the following test jobs:

-   Surface Flipping Tests

-   Surface Flipping Tests (WoW64)

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.AdapterRender.MinimumDirectXLevel</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~15 minutes</p></td>
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

In addition, this test requires the following software and hardware:

-   Microsoft DirectX® 7.0 or later versions

-   Video card with DirectDraw capabilities

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

## More information


Most of the DirectDraw tests are in Fnddraw.exe. You can run Fnddraw.exe outside the Windows HCK Studio, and then select initial tests. On the **Tests** menu, click **Select Tests**.

The test titles that are listed in the DCT shell do not directly match the test names in Fnddraw.exe. In fact, the names in the DCT often refer to a group of Fnddraw tests. You can obtain the Fnddraw test names from the DCT log file.

You can pause many Fnddraw tests (especially Blt-related tests) to give you time to visually analyze the Blt results. Use the Pause key to pause and resume.

Use the Esc key to stop a test run. This might take a minute or two. Some tests are more responsive than others.

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
<td><p><strong>fnddraw.exe dd_flip.pro -l&quot;fnswtt.dll&quot; -r -c -p&quot;m1&quot; /WTTLogDevStr:$logfile</strong></p></td>
<td><p>Runs the Surface Flipping test job and the Surface Flipping Tests (WoW64) test job. The <em>%MONITOR%</em> parameter must be replaced with a 1-based index that corresponds to the display that you are testing.</p></td>
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
<td><p>Configdisplay.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\tools\</p></td>
</tr>
<tr class="even">
<td><p>Dd_flip.pro</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\video\ddraw\pro</p></td>
</tr>
<tr class="odd">
<td><p>Fnddraw.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\video\ddraw</p></td>
</tr>
<tr class="even">
<td><p>Fnswtt.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\video\ddraw</p></td>
</tr>
<tr class="odd">
<td><p>TDRWatch.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\</p></td>
</tr>
</tbody>
</table>

 

 

 






