---
author: joshbax-msft
title: Blt - Color Key - VMem to Primary
description: Blt - Color Key - VMem to Primary
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: edb8f2d4-a2eb-4ee5-bb99-0e76a05cf60f
---

# Blt - Color Key - VMem to Primary


This automated test performs color-keyed blts from offscreen video memory to the primary memory.

Blt results are compared against a simulation by using either Graphics Device Interface (GDI) operations or the test's internal software blitter. Images are expected to match exactly.

Drivers must support source color key blts between video memory surfaces. Destination color key blts and "space" blts are optional.

This test consists of the following Fnddraw cases:

-   BLT, DESTKEY Space, VMem to Primary

-   BLT, single DESTKEY, VMem to Primary

-   BLT, SRCKEY Space, VMem to Primary

-   BLT, single SRCKEY, VMem to Primary

This topic applies to the following test jobs:

-   Blt - Color Key - VMem to Primary

-   Blt - Color Key - VMem to Primary (WoW64)

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

Before running this test, turn off the screen saver and disable power management. Mode changes and full-screen applications can cause failures, so you should avoid them.

## More information


Most of the Microsoft® DirectDraw tests (including the Blt - Color Key - Video Memory to Primary Memory test) are located in Fnddraw.exe. You can run Fnddraw.exe outside of the Display Compatibility Test (DCT) shell, and select initial tests. On the **Tests** menu, click **Select Tests**.

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
<td><p><strong>Fnddraw ..\pro\dd_ckvv.pro -r -c -p&quot;m%MONITOR%</strong></p></td>
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
<td><p><em>[testbinroot]\multimediatest\video\ddraw</em></p></td>
</tr>
<tr class="even">
<td><p><em>Fnswtt.dll</em></p></td>
<td><p><em>[testbinroot]\multimediatest\video\ddraw</em></p></td>
</tr>
<tr class="odd">
<td><p><em>Dd_ckvv.pro</em></p></td>
<td><p><em>[testbinroot]\multimediatest\video\ddraw\pro</em></p></td>
</tr>
</tbody>
</table>

 

**Note**  
You do not need Fnswtt.dll to run this test. It is used only for Windows Test Technology (WTT) logging.

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Blt%20-%20Color%20Key%20-%20VMem%20to%20Primary%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




