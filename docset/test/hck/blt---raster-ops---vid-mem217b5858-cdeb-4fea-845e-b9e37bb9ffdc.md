---
author: joshbax-msft
title: Blt - Raster Ops - Vid Mem
description: Blt - Raster Ops - Vid Mem
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5ec46769-ede8-41b5-ab91-875d8fef2e66
---

# Blt - Raster Ops - Vid Mem


This automated test ensures that the display driver correctly performs all reported Microsoft DirectDraw Blt raster operations. Only the SRCCOPY Raster operation is required.

This topic applies to the following test jobs:

-   Blt - Raster Ops - Vid Mem

-   Blt - Raster Ops - Vid Mem (WoW64)

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
<td><p>~10 minutes</p></td>
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

-   DirectX® version 7.0 or later

-   Display adapter with DDraw capabilities

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

Turn off the screen saver and disable the power management before you run this test. Mode changes and full-screen applications can cause failures, so you should avoid them.

## More information


Most of the Microsoft DirectDraw tests (including the Automatic Stereo test) are located in Fnddraw.exe. You can run Fnddraw.exe outside of the Display Compatibility Test (DCT) shell, and select individual tests. On the **Tests** menu, click **Select Tests**.

The test titles that are listed in the DCT shell do not directly match the test names in Fnddraw.exe. In fact, the names in the DCT often refer to a group of Fnddraw tests. You can obtain the Fnddraw test case names from the DCT log file.

You can pause many Fnddraw tests (especially blt-related tests) to give you time to analyze the blt results. Use the Pause key to pause and resume.

Use the Esc key to stop a test run. Be aware that some tests are more responsive than others.

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
<td><p><strong>Fnddraw dd_rop.pro -r -c -p&quot;m%MONITOR%&quot;</strong></p></td>
<td><p>Replace the %MONITOR% parameter with a 1-based index that corresponds to the display that you are testing.</p></td>
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
<td><p><em>Fnddraw.exe</em></p></td>
<td><p><em>[testbinroot]\nttest\windowstest\graphics\d3d\conf\</em></p></td>
</tr>
<tr class="even">
<td><p><em>Fnswtt.dll</em></p></td>
<td><p><em>[testbinroot]\nttest\windowstest\tools\</em></p></td>
</tr>
<tr class="odd">
<td><p><em>Dd_rop.pro</em></p></td>
<td><p><em>[testbinroot]\nttest\windowstest\graphics\d3d\conf\pro\</em></p></td>
</tr>
</tbody>
</table>

 

**Note**  
You do not need Fnswtt.dll to run this test. It is used only for Windows HCK logging.

 

 

 






