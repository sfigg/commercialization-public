---
author: joshbax-msft
title: DXGI Stereo Present
description: DXGI Stereo Present
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1d50868c-0bcd-4840-a51a-3ca5aa2dd165
---

# DXGI Stereo Present


This automated test measures conformance of DXGI Stereo Swapchains, specifically presentation swapchains.

This topic applies to the following test jobs:

-   DXGI Stereo Present

-   DXGI Stereo Present (WoW64)

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.AdapterRender.D3D10WDDM12.Stereoscopic3DArraySupport</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~20 minutes</p></td>
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

This test can only be run on configurations that support the Stereo feature. Specifically, this test requires the following software and hardware:

-   A WDDM 1.2 driver

-   A monitor supporting Stereo output through HDMI 1.4

-   Hardware capable of driving a stereo monitor connected through HDMI 1.4

-   A display driver capable of creating and presenting stereo swapchains.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

This test will always return Pass if stereo presentation is handled correctly. The test will fail if not run on a valid stereo configuration. It is also possible that the Windowed and DComp tests will fail if DWM is not in a stereo mode, even if the machine is capable of displaying stereo content. To review test details, review the test log from the HCK Studio.

## More information


This test include test cases that verify specific instances of swapchains:

-   Windowed Swapchains

-   Fullscreen Swapchains

-   DComp Swapchains

### Windowed swapchains

These test cases determine conformance of windowed stereo swapchains. It will determine if the expected unique results are presented to each eye from the arrayed swapchain. Temporary mono is tested if the driver claims to support it. Conformance is determined by ensuring that the content for the right eye is not presented. Also for windowed mode, dirty and scroll rects are tested with stereo. The driver should apply the various rects correctly for both the left and right buffers. The test will also cycle on supported display formats.

### Fullscreen swapchains

These test cases determine conformance of fullscreen stereo swapchains. The test will cycle on a varied subset of the supported stereo modes. It will determine if the expected unique results are presented to each eye from the arrayed swapchain. Temporary mono is tested if the driver claims to support it. Conformance is determined by ensuring that the content for the right eye is not presented.

### DComp swapchains

These test cases determine conformance of windowless presentation of stereo content. It will determine if the expected unique results are presented to each eye from the arrayed swapchain. Temporary mono is tested if the driver claims to support it. Conformance is determined by ensuring that the content for the right eye is not presented. Dirty and scroll rects are tested with stereo. The driver should apply the various rects correctly for both the left and right buffers. The test will also cycle on supported display formats.

### Command syntax

Standard command line syntax for WGF11 tests. Nothing unique to this test.

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
<td><p><strong>DXGIStereoPresent</strong></p></td>
<td><p>Runs the test job.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type **/?**

 

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
<td><p><em>&lt;testbinroot&gt;</em>\nttest\windowstest\tools\</p></td>
</tr>
<tr class="even">
<td><p>D3d10ref.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3d10SDKLayers.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3d11ref.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3d11SDKLayers.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3dcompiler_test.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\windowstest\graphics\d3d\support</p></td>
</tr>
<tr class="odd">
<td><p>D3dx10_test.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\windowstest\graphics\d3d\support</p></td>
</tr>
<tr class="even">
<td><p>D3dx11_TEST.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>DXGIStereoPresent.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\nttest\windowstest\graphics\d3d\api\</p></td>
</tr>
<tr class="even">
<td><p>TDRWatch.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\windowstest\graphics\</p></td>
</tr>
</tbody>
</table>

 

 

 






