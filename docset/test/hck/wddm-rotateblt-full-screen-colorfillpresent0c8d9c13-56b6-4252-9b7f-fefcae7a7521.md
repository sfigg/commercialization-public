---
author: joshbax-msft
title: WDDM RotateBlt Full Screen ColorFillPresent
description: WDDM RotateBlt Full Screen ColorFillPresent
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f7124ffc-e607-49a6-aaf2-202a4c05b644
---

# WDDM RotateBlt Full Screen ColorFillPresent


This automated test verifies the requirements listed in the test details table.

This topic applies to the following test jobs:

-   WDDM RotateBlt Full Screen ColorFillPresent

-   WDDM RotateBlt Full Screen ColorFillPresent (WoW64)

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.AdapterRender.D3D10Core.D3D10CorePrimary Device.Graphics.WDDM.DisplayRender.Base</p>
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

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

## More information


RotateBlt.exe is an automated test application that verifies the following:

-   Present-blt and colorfill-presents are correctly rotated when the blt intersects with a GDI sprite (DWM off)

-   Present-blts are correctly stretched in rotated modes (DWM off)

-   Present-blts are correctly clipped in rotated modes (DWM off)

-   Blts from a CDD shadow surface to a shared primary are correctly rotated

-   Blts from a shared primary to a CDD shadow surface are correctly rotated

-   Windowed modes present-blts are correctly color converted in a rotated mode, including sRGB conversions (DWM off)

-   Full-screen presentation operations from rotation aware apps are not rotated by the driver

-   GetFrontBufferData performs rotating copy from a primary surface to the application-provided system memory destination for non-rotation aware applications

The program performs the following tests for each specified mode of each specified monitor. Each test is performed with the DWM disabled:

1.  Shadow buffer to CDD primary blt test

2.  CDD primary to shadow buffer blt test

3.  D3D render target to CDD primary blt test

4.  D3D render target to staging buffer blt test

5.  D3D color-fill operation to the primary surface in full screen mode

6.  IDirectD3D9 render target to primary blt test in full screen mode

The test performs the following test cases:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Test case</th>
<th>Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Shadow buffer to CDD primary blt</p></td>
<td><p>This test case renders to the screen via GDI methods. It then gets the contents of the primary surface via WDDM kernel entry points, and compares the contents of the primary surface with the contents rendered via GDI. If the contents differ too much, the test case fails.</p></td>
</tr>
<tr class="even">
<td><p>CDD primary to shadow buffer blt</p></td>
<td><p>This test case uses WDDM kernel entry points to set the contents of the CDD primary. It then uses GDI APIs to blt from the screen to an off-screen surface. The test case then compares the contents of the off-screen surface to the contents set in the shared primary. If the contents differ too much, the test case fails.</p></td>
</tr>
<tr class="odd">
<td><p>D3D render target to CDD primary blt</p></td>
<td><p>This test case uses D3D9 APIs to render a scene into a render target. It then calls the Present API to copy the contents of the render target to the shared primary. The test case then compares the contents of the render target to the contents of the shared primary. If the contents differ too much, the test case fails.</p></td>
</tr>
<tr class="even">
<td><p>D3D render target to staging buffer blt</p></td>
<td><p>This test case performs the same actions as the D3D render target to CDD primary blt test case. During each present call, a GDI sprite intersects with the rendering window. The test case verifies that the correct results appear in the shared primary surface.</p></td>
</tr>
<tr class="odd">
<td><p>D3D color-fill operation to the primary surface in full screen mode</p></td>
<td><p>This test case uses D3D API ColorFill to render a scene into a render target. It then calls the Present API with no D3DKMT_PRESENT rotate bit set to copy the contents of the render target to the shared primary. The test case then compares the contents of the render data to the contents of the shared primary. If the contents differ too much, the test case fails.</p></td>
</tr>
<tr class="even">
<td><p></p></td>
<td><p>This test case uses IDirectD3D9 API to render a scene into a render target. It then calls <strong>GetFrontBufferData</strong> performs rotating copy of primary surface contents. The test case then compares the contents of the render data to the contents of the shared primary. If the contents differ too much, the test case fails.</p></td>
</tr>
</tbody>
</table>

 

### Command syntax

The test is run using RotateBlt.exe with the following command line syntax:

`RotateBlt.exe [save] [[Window] [WinGdi][WinCdd][WinD3d][fullscreen] [D3D]] [width:XXX] [height:XXX] [BPP:XXX] [Rotation:XXX] [Monitor:X]`

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
<td><p>RotateBlt.exe</p></td>
<td><p>Runs the test jobs.</p></td>
</tr>
<tr class="even">
<td><p>Save</p></td>
<td><p>Saves the images to disk whenever a test case fails.</p></td>
</tr>
<tr class="odd">
<td><p>Screen</p></td>
<td><p>Saves the Desktop images for all test cases, not just test failures.</p></td>
</tr>
<tr class="even">
<td><p>Window</p></td>
<td><p>Runs all window device test cases.</p></td>
</tr>
<tr class="odd">
<td><p>WinGdi</p></td>
<td><p>Runs all of the Windows GDI test cases.</p></td>
</tr>
<tr class="even">
<td><p>WinCdd</p></td>
<td><p>Runs all of the Windows CDD test cases.</p></td>
</tr>
<tr class="odd">
<td><p>WinD3D</p></td>
<td><p>Runs all of the Windows D3D test cases.</p></td>
</tr>
<tr class="even">
<td><p>FullScreen</p></td>
<td><p>Runs all of the full screen device test cases that use Device Driver Interfaces.</p></td>
</tr>
<tr class="odd">
<td><p>D3D</p></td>
<td><p>Runs all of the full screen device test cases that use Direct3D Interfaces.</p></td>
</tr>
<tr class="even">
<td><p>Width</p></td>
<td><p>Specifies the width of the primary surface. If this is not specified, then the width is cycled through the set (800, 1024, 1280, and 1600).</p></td>
</tr>
<tr class="odd">
<td><p>Height</p></td>
<td><p>Specifies the height of the primary surface. If this is not specified, then the height is cycled through the set (600, 768, 900, 1024, and 1280).</p></td>
</tr>
<tr class="even">
<td><p>BPP</p></td>
<td><p>Specifies the number of bits per pixel in the primary. If this is not specified, then the bits per pixel is cycled through the set (32, 16).</p></td>
</tr>
<tr class="odd">
<td><p>Rotation</p></td>
<td><p>Specifies the rotation of the display. If this is not specified, the rotation is cycled through the set (0, 90, 180, and 270).</p></td>
</tr>
<tr class="even">
<td><p>Monitor</p></td>
<td><p>Sets the monitor to test using a 1-based index. If this is not specified, then the primary monitor is tested.</p></td>
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
<td><p>Configdisplay.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\tools\</p></td>
</tr>
<tr class="even">
<td><p>RotateBlt.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>TDRWatch.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WDDM%20RotateBlt%20Full%20Screen%20ColorFillPresent%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




