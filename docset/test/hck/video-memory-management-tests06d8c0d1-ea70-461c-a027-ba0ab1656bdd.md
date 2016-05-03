---
author: joshbax-msft
title: Video Memory Management Tests
description: Video Memory Management Tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7bd73449-0b6b-4c45-a1f9-7129b1f248a9
---

# Video Memory Management Tests


This automated test verifies that video memory is accurately reported and managed.

The following Fnddraw.exe cases make up this test:

-   **MEMMAN\_GetAvailableVidMem.** This test case examines and compares memory values that are returned by various **GetAvailableVidMem** calls. The sum of Accelerated Graphics Port (AGP) memory and local video memory should equal the total video memory.

-   **MEMMAN - Video Memory Reuse Test.** This test verifies that freed video memory can be reallocated.

-   **MEMMAN - Rand Create/Release Video Memory Surfaces 100X Test.** This test randomly creates and releases video memory surfaces. As the test creates each surface, it writes a byte pattern to that surface. Upon release of that surface, the test reads back the byte pattern to verify surface integrity.

-   **MEMMAN - Consume All Video Mem Test.** This test tries to allocate all video memory (local and AGP). As the test allocates each surface, it writes a byte pattern to that surface. Before all surfaces are released, the test reads back the byte pattern to verify integrity.

This topic applies to the following test jobs:

-   Video Memory Management

-   Video Memory Management (WoW64)

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
<td><p>~1 minutes</p></td>
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

-   Microsoft® DirectX® 7.0 or later versions

-   Video card with Microsoft DirectDraw capabilities

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

## More information


Most of the DirectDraw tests (including the Blt - Exotic test) are in Fnddraw.exe. You can run Fnddraw.exe outside the DCT shell, and then select initial tests. On the **Tests** menu, click **Select Tests**.

The test titles that are listed in the DCT shell do not directly match the test names in Fnddraw.exe. In fact, the names in the DCT often refer to a group of Fnddraw tests. You can obtain the Fnddraw test names from the DCT log file.

You can pause many Fnddraw tests (especially Blt-related tests) to give you time to visually analyze the Blt results. Use the Pause key to pause and resume.

Use the Esc key to stop a test run. Be patient, because some tests are more responsive than others.

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
<td><p><strong>Fnddraw dd_vmem.pro -r -c -p&quot;m</strong><em>%MONITOR%</em><strong>&quot;</strong></p></td>
<td><p>Runs the Video Memory Management test job and the Video Memory Management (WoW64) test job. The <em>%MONITOR%</em> parameter must be replaced with a 1-based index that corresponds to the display that you are testing.</p></td>
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
<td><p>Dd_vmem.pro</p></td>
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

 

**Note**  
You do not need Fnswtt.dll to run this test. It is used only for Windows HCK logging.

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Video%20Memory%20Management%20Tests%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




