---
author: joshbax-msft
title: D3D9 Overlay - CreateAdditionalSwapChain
description: D3D9 Overlay - CreateAdditionalSwapChain
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8afab580-b2ea-4635-af70-60d3a29a39e0
---

# D3D9 Overlay - CreateAdditionalSwapChain


This manual test calls into CreateAdditionalSwapChain with valid and invalid parameters. It attempts to check the largest overlay size, as well as the smallest reported as supported by the driver.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.WDDM11.DisplayRender.D3D9Overlay.D3D9Overlay</p>
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
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Graphic Adapter or Chipset Testing Prerequisites](graphic-adapter-or-chipset-testing-prerequisites.md).

In addition, this test requires the following:

-   A device driver with D3D9 support that exposes D3DCAPS\_OVERLAY.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

The test calls into CheckDeviceOverlayType with valid and invalid parameters. It attempts to check the largest overlay size, as well as the smallest reported as supported by the driver.

The test might return SKIP if the driver does not expose D3DCAPS\_OVERLAY. Some cases might skip if the back buffer format or mode is not supported during D3D device creation.

## More Information


This test executes multiple test cases targeting IDirect3D9Ex::CreateDevice with IDirect3D9ExDevice::CreateSwapChain. It uses different sizes of both valid and invalid display modes, flags, and overlay sizes. It also tests different types of swap chain creations.

The test runs the following test jobs:

CreateDeviceEx:

-   Verify successful creation of non-RGB backbuffer if non-RGB overlay is supported.

-   Verify swapeffect fails full screen and is successfully windowed.

-   Verify swapeffect fails when using an interface other than D3D9OverlayExtended.

-   Verify that Multisampling fails.

-   Test case in which a D3D9Ex overlay device has been created by one process, and then another process attempts to create another D3D9Ex swap chain.

-   Verify CreateDeviceEx with D3DPRESENTFLAG\_OVERLAY\_LIMITEDRGB successfully limits color range during present time of 16 to 235 if supported by the driver. For more information, see the PresentEx test cases below.

-   Verify CreateDeviceEx with D3DPRESENTFLAG\_OVERLAY\_YCbCr\_BT709 successfully increases luma and chroma sampling, as well as limiting the RGB values to between 16 and 235 during present time if supported by the driver. For more information, see the PresentEx test cases below.

-   Verify CreateDeviceEx with D3DPRESENTFLAG\_OVERLAY\_YCbCr\_xvYCC successfully increases RGB color range between 1 and 255 during present time if supported by the driver. For more information, see the PresentEx test cases below.

-   Verify CreateDeviceEx with unsupported D3DPRESENTFLAG (fails or succeeds).

CreateAdditionalSwapChain:

-   Verify creation of additional swap chains fails both through CreateAdditionalSwapChain and through reset of an existing swap chain.

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
<td><p><strong>D3D9OverlayTest CreateAdditionalSwapChain -whql -logclean</strong></p></td>
<td><p>This command runs the D3D9 Overlay – CreateAdditionalSwapChain test job. Without any options, the test enumerates all but some extreme cases.</p></td>
</tr>
<tr class="even">
<td><p><strong>TestCasePriority:[0, 1, 2]</strong></p></td>
<td><p>Specifies the priority of the test cases to run. 0 will run build verification test (BVT)level test cases 1,2 more aggressive test cases.</p></td>
</tr>
<tr class="odd">
<td><p><strong>LogLevel[0, 1, 2]</strong></p></td>
<td><p>The test has the ability to be very verbose in its logging methods. By default, level 0 is set; however, level one will gather increased logging info per test cases including many stream states/blt states set. Level 2 will gather all adjusted stream states and blt states, as well as any configuration information.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command line help for this test binary, type **/?**.

 

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
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\\windowstest\tools\</p></td>
</tr>
<tr class="even">
<td><p>D3D9OverlayTest.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\func\</p></td>
</tr>
<tr class="odd">
<td><p>TDRWatch.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\</p></td>
</tr>
</tbody>
</table>

 

 

 






