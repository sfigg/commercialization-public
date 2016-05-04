---
author: joshbax-msft
title: WGF11 Geometry Shader
description: WGF11 Geometry Shader
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4f1cfbd3-c6d7-4071-8d5f-0ffb7bba6337
---

# WGF11 Geometry Shader


This automated test verifies verifies D3D graphics driver/hardware conformance for geometry shader features that are not specifically tested elsewhere.

This topic applies to the following test jobs:

-   WGF11 Geometry Shader

-   WGF11 Geometry Shader (WoW64)

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.AdapterRender.D3D101Core.D3D101CorePrimary Device.Graphics.AdapterRender.D3D10Core.D3D10CorePrimary Device.Graphics.AdapterRender.D3D111Core.D3D111CorePrimary Device.Graphics.AdapterRender.D3D11Core.D3D11CorePrimary</p>
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

 

## Prerequisites


Before you run the test, complete the test setup as described in the test requirements: [Graphic Adapter or Chipset Testing Prerequisites](graphic-adapter-or-chipset-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

The test might return SKIP if it is run with a feature level that doesn't support the feature being tested. The test might return BLOCKED if there is an uncaught exception (framework catches it at the end and logs it).

## More information


The following items outline the Geometry Shader Conformance Test Plan:

**Geometry Shader Input**

-   Verifies support for all input primitive types:

    -   Line

    -   Point

    -   Triangle

    -   LineAdj

    -   TriangleAdj

-   PrimitiveID

    -   Verifies that primitive ordering is respected.

    -   PS test should test this for cases where there is no GS in the pipeline.

    -   Cycle on Draw() and DrawInstanced().

        **Note**  
        Make sure that the id resets to zero for each instance drawn.

         

-   InstanceID

**Geometry Shader Output**

-   RenderTargetArrayIndex

-   Position

-   Limits

    **Note**  
    Maximum GS invocation output data size (components \* vertices) go up to 1024.

     

-   Ordering (Verifies that primitive ordering is respected.)

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
<td><p><strong>Wgf11geometryshader</strong></p></td>
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
<td><p>Wgf11geometryshader.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\conf</p></td>
</tr>
</tbody>
</table>

 

 

 






