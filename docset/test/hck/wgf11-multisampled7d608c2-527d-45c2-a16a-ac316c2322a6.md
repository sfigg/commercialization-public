---
author: joshbax-msft
title: WGF11 Multisample
description: WGF11 Multisample
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6207dd22-b4f0-4541-9fd4-b7e9aa1d0ded
---

# WGF11 Multisample


This automated test verifies that the multisampling behavior of the device is consistent with the DX11 specification.

This topic applies to the following test jobs:

-   WGF11 Multisample

-   WGF11 Multisample (WoW64)

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.AdapterRender.D3D101Core.D3D101CorePrimary Device.Graphics.AdapterRender.D3D10Core.D3D10CorePrimary Device.Graphics.AdapterRender.D3D10Multisampling4X.D3D10CoreA Device.Graphics.AdapterRender.D3D10Multisampling8X.D3D10CoreB Device.Graphics.AdapterRender.D3D111Core.D3D111CorePrimary Device.Graphics.AdapterRender.D3D11Core.D3D11CorePrimary</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
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

Test cases return one of the following results:

-   Pass

-   Fail

-   Blocked

-   Skipped

The log file contains specific details about the test cases that are failed, blocked, or skipped. A test case returns Skipped if it is invalid according to the current hardware configuration (some features are optional and may not be supported by some hardware) and the command line options (some test cases are only valid for certain feature levels). A test case returns Blocked if the failure is caused by reasons other than the tested feature. To review test details, review the test log from the Windows HCK Manager.

## More information


This test examines the following:

-   Sample Count

-   Sample Positions for standard pattern

-   Area-to-Coverage

-   Sample Mask

-   Occlusion Query and Predicate for multisampled render target

-   Multisample Resolve

-   Centroid Attributes

-   Centroid Definition (only Feature Level 11.0 and above)

-   Sample Frequency Attributes, SV\_COVERAGE (only Feature Level 11.0 and above)

-   Depth test for multisampled render target

**Note**  
Test cases are arranged into sub-groups with different sample counts, quality levels and render targets formats.

 

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
<td><p><strong>Wgf11multisample.exe</strong></p></td>
<td><p>Runs the test jobs. Without any options, the test enumerates devices.</p></td>
</tr>
<tr class="even">
<td><p><strong>-FeatureLevel:XX.X</strong></p></td>
<td><p>Sets the feature level, where XX.X is the Feature Level the test will run at: 10.0, 10.1, or 11.0.</p></td>
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
<td><p>D3d11_1sdklayers.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3d11ref.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3d11sdklayers.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3dcompiler_test.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support</p></td>
</tr>
<tr class="even">
<td><p>D3dx10_test.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>d3dx11_test.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>TDRWatch.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\</p></td>
</tr>
<tr class="odd">
<td><p>Wgf11multisample.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\conf</p></td>
</tr>
</tbody>
</table>

 

 

 






