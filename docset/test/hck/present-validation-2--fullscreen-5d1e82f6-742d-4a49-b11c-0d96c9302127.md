---
author: joshbax-msft
title: Present Validation 2 (FullScreen)
description: Present Validation 2 (FullScreen)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7616cd58-b469-4ffb-bf74-145e9ce461f2
---

# Present Validation 2 (FullScreen)


This automated test verifies that all modes that the **EnumAdapterModes** method reports for the device are available to applications.

The test uses the following parameters: back buffer format, screen resolution, present intervals, swap effects, and multisample types.

The DoNotWait test calls the swap chain's **Present** method in a loop, passes the **D3DPRESENT\_DONOTWAIT** option (in full-screen mode), and uses the **D3DPRESENT\_INTERVAL\_ONE** value. As a result, the driver's queue of frames will exceed the allowed maximum of three. The DoNotWait test expects the driver to return control to the application by using the **D3DERR\_WASSTILLDRAWING** error code. If the error code is not returned, the test fails.

The LockDoNotWait test is similar to the DoNotWait test but occurs on a surface (the back buffer). The same behavior is expected of the driver. If the error code is not returned, the test fails.

This topic applies to the following test jobs:

-   Present Validation 2 (FullScreen)

-   Present Validation 2 (FullScreen) (WoW64)

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
<td><p>~9 minutes</p></td>
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


The test displays on-screen pass-or-fail compliance and writes the results to a log file that is named Present2.xml. Present2.xml is written to the %windir%\\dxlogs directory.

If the call to the **Reset** method fails, you can check the values that the test used for the back buffer format and size in the log file. If the image comparison fails, the test prints the image-comparison statistics, just like the other Present Validation tests in the group.

The following table lists the image surfaces that the test uses. If you specify the **-Save** command option, the test saves these files.

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
<td><p>Texture.dds</p></td>
<td><p>The texture that is used to fill the quad that is used in <strong>Present</strong> operations.</p></td>
</tr>
<tr class="even">
<td><p>SourceSurface.bmp</p></td>
<td><p>The source surface in the back buffer. For full-screen <strong>Present</strong> operations, this surface is the whole buffer.</p></td>
</tr>
<tr class="odd">
<td><p>DestSurface.bmp</p></td>
<td><p>The destination surface in the front buffer. For full-screen <strong>Present</strong> operations, this surface is the whole buffer.</p></td>
</tr>
<tr class="even">
<td><p>RefSurface.bmp</p></td>
<td><p>The reference surface, as computed by the Microsoft® Direct3D® API.</p></td>
</tr>
<tr class="odd">
<td><p>DiffSurface.bmp</p></td>
<td><p>The difference between the front buffer and the reference image.</p></td>
</tr>
<tr class="even">
<td><p>FrontBuffer.bmp</p></td>
<td><p>The contents of the front buffer.</p></td>
</tr>
</tbody>
</table>

 

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
<td><p><strong>Present2_fullscreen.exe -M:1 -dx9 -whql -logclean</strong></p></td>
<td><p>Runs the Present Validation 2 (FullScreen) test job.</p></td>
</tr>
<tr class="even">
<td><p><strong>Present2_fullscreen.exe -M:1 -whql -logclean</strong></p></td>
<td><p>Runs the Present Validation 2 (FullScreen) (WoW64) test job.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type **/?**.

 

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
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\tools</p></td>
</tr>
<tr class="even">
<td><p>D3d10ref.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3d11ref.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3dcompiler_test.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3dref9.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3dx10_test.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3dx11_test.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3dx9_test.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>Fpstate.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\utility\</p></td>
</tr>
<tr class="even">
<td><p>Modechange.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\utility\</p></td>
</tr>
<tr class="odd">
<td><p>Present2_fullscreen.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\</p></td>
</tr>
<tr class="even">
<td><p>TDRWatch.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\</p></td>
</tr>
<tr class="odd">
<td><p>Vbswap.x</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\conf\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Present%20Validation%202%20%28FullScreen%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




