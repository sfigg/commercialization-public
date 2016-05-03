---
author: joshbax-msft
title: Blt - Basic - VMem to Primary
description: Blt - Basic - VMem to Primary
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 189cdaa3-d741-49b9-a30f-51c5ee9137d0
---

# Blt - Basic - VMem to Primary


This automated test performs a variety of blt tests where both the source and destination are in video memory. Drivers must support these blts, using the DDCAPS\_BLT flag.

The test compares the blt results against its own simulation. The test expects the DirectDraw Blt and the simulation to match exactly.

This test consists of the following Fnddraw cases:

-   "BLT\_OnscreenOverlap" performs blts where the source and destination are on the same surface. To make this test more complicated, the blt rectangles are chosen such that they overlap.

-   "BLT\_BltFrontToBackBuff" performs a blt from the front buffer of a primary flipping chain to the back buffer.

-   "BLT\_BltFast From/To Same Surface" is the original overlapping blt test. For drivers, this test is a simpler version of the "Blt\_OnscreenOverlap" test.

-   "BLT Basic, VMem to Primary" performs a basic blt from an offscreen video memory surface to the primary surface. The blt is compared against a test-generated reference image. The images are expected to match exactly.

-   "BLT Basic, Offscreen Surfaces" performs blts from a variety of memory types.

This topic applies to the following test jobs:

-   Blt - Basic - VMem to Primary

-   Blt - Basic - VMem to Primary (WoW64)

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
<td><p>~45 minutes</p></td>
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

In addition, this test requires the following software and hardware.

-   DirectX® version 7.0 or later

-   Display adapter with DDraw capabilities

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

Turn off the screen saver and disable the power management before you run this test. Mode changes and full-screen applications can cause failures, so you should avoid them.

## More information


Most of the Microsoft® DirectDraw tests (including the Blt - Color Key - Video Memory to Primary Memory test) are located in Fnddraw.exe. You can run Fnddraw.exe outside of the Display Compatibility Test (DCT) shell, and select initial tests. On the **Tests** menu, click **Select Tests**.

The test titles that are listed in the DCT shell do not directly match the test names in Fnddraw.exe. In fact, the names in the DCT often refer to a group of Fnddraw tests. You can obtain the Fnddraw test case names from the DCT log file.

You can pause many Fnddraw tests (especially blt-related tests) to give you time to visually analyze the blt results. Use the Pause key to pause and resume.

Use the Esc key to stop a test run. Be patient because some tests are more responsive than others.

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
<td><p><strong>Fnddraw dd_vvb.pro -r -c -p&quot;m%MONITOR%&quot;</strong></p></td>
<td><p>Runs the test. Replace the %MONITOR% parameter with a 1-based index that corresponds to the display that you are testing.</p></td>
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
<td><p>Fnddraw.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\conf\</p></td>
</tr>
<tr class="even">
<td><p>Fnswtt.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\tools\</p></td>
</tr>
<tr class="odd">
<td><p>Dd_vvb.pro</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\conf\pro\</p></td>
</tr>
</tbody>
</table>

 

**Note**  
You do not need Fnswtt.dll to run this test. It is used only for Windows HCK logging.

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Blt%20-%20Basic%20-%20VMem%20to%20Primary%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




