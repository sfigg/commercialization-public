---
author: joshbax-msft
title: D3D9 Overlay - CheckDeviceOverlayType
description: D3D9 Overlay - CheckDeviceOverlayType
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 705eebee-91be-4984-b8ea-40b85280a678
---

# D3D9 Overlay - CheckDeviceOverlayType


This manual test executes multiple test cases targeting IDirect3D9ExOverlayExtension::CheckDeviceOverlayType. It uses different sizes of both valid and invalid display modes, including rotated modes.

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

-   A device driver with D3D9 support that exposes D3DCAPS\_OVERLAY

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

The test calls into CheckDeviceOverlayType with valid and invalid parameters. It attempts to check the largest overlay size, as well as the smallest reported as supported by the driver.

The test might return SKIP if the driver does not expose D3DCAPS\_OVERLAY. Some cases might skip if the back buffer format or mode is not supported during D3D device creation.

## More information


The test runs the following test jobs:

CheckDeviceOverlayType:

-   Verify failure if Adapter index is out range.

-   Verify a NULL if pDisplayMode returns the same results as a pDisplayMode filled in with the current display mode.

-   Verify D3DERR\_UNSUPPORTEDOVERLAYFORMAT by finding a successful overlay type, and cycling on OverlayFormats.

-   Verify D3DERR\_UNSUPPORTEDOVERLAY is returned for an invalid width and height. The job finds a successful overlay type, and cycling on non-standard overlays sizes.

CheckDeviceOverlayType with CreateDeviceEx interaction:

-   Verify that a successful call to CheckDeviceOverlayType can result in a successful call to CreateDeviceEx.

    **Warning**  
    This will always be the case until driver support is added.

     

-   Verify that a failed call to CheckDeviceOverlayType results in a failed call to CreateDeviceEx.

    **Warning**  
    This test case will fail until driver support is added.

     

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
<td><p><strong>D3D9OverlayTest CheckDeviceOverlayType -whql -logclean</strong></p></td>
<td><p>This command runs the D3D9 Overlay - CheckDeviceOverlayType test job.</p></td>
</tr>
<tr class="even">
<td><p><strong>TestCasePriority:[0, 1, 2]</strong></p></td>
<td><p>Specifies the priority of the test cases to run. 0 runs build verification level (BVT) level test cases; 1 and 2 run more aggressive test cases.</p></td>
</tr>
<tr class="odd">
<td><p><strong>LogLevel[0, 1, 2]</strong></p></td>
<td><p>The test has the ability to be very verbose in its logging methods. By default, level 0 is set; level 1 gathers increased logging information per test cases, including many stream states/blt states set; and level 2 gathers all adjusted stream states and blt states, as well as any configuration information.</p></td>
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
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\tools\</p></td>
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

 

 

 






