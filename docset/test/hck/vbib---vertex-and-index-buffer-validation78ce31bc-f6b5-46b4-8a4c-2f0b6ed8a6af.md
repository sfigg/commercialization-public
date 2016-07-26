---
author: joshbax-msft
title: VBIB - Vertex and Index Buffer Validation
description: VBIB - Vertex and Index Buffer Validation
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6b6e5f8a-0ef3-47ca-b35b-56a964a2a5b2
---

# VBIB - Vertex and Index Buffer Validation


This automated test validates the use of a variety of vertex and index buffers.

This test contains following test groups, which test vertex and index buffers in different ways:

-   Buffer makes sure that simple objects can be rendered correctly.

-   LockActive makes sure that a selected vertex or index buffer can be rendered from, and locked across, multiple scenes and in one scene.

-   Priority makes sure that a selected vertex or index buffer can have its priority manipulated while it renders a scene.

-   SwitchRenderState ensures correct operation when switching between hardware and software vertex processing during a scene.

-   LostOnReset makes sure that all buffers must be released before a **Reset()**function will succeed.

-   HugeBuffer makes sure that a large object can be rendered correctly.

-   RelockDynamic makes sure that dynamic vertex and index buffers can be reused correctly in a single scene.

-   LockPointerAlias makes sure that, when a device is lost, pointers to vertex and index buffers that are obtained through the **Lock()** function do not cause exceptions.

-   InternalPointerAlias makes sure that, when a device is lost, internal buffer pointers do not cause exceptions (such as during calls to the **DrawPrimitive()** or **DrawIndexedPrimitive()** function).

This topic applies to the following test jobs:

-   VBIB - Vertex and Index Buffer Validation

-   VBIB - Vertex and Index Buffer Validation (WoW64)

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
<td><p>~6 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Basic Certification Functional</p></td>
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
<td><p><strong>VBIB.exe -M:1 -dx9 -whql -logclean</strong></p></td>
<td><p>Runs the VBIB - Vertex and Index Buffer Validation test job.</p></td>
</tr>
<tr class="even">
<td><p><strong>VBIB.exe- Vertex and Index Buffer Validation (WoW64)</strong></p></td>
<td><p>Runs the VBIB - Vertex and Index Buffer Validation (WoW64) test job.</p></td>
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
<td><p>D3d10ref.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\graphics\d3d\support\</p></td>
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
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support</p></td>
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
<td><p>Fpstate.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\utility\</p></td>
</tr>
<tr class="odd">
<td><p>Modechange.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\utility\</p></td>
</tr>
<tr class="even">
<td><p>TDRWatch.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\</p></td>
</tr>
<tr class="odd">
<td><p>VBIB.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest</p></td>
</tr>
<tr class="even">
<td><p>Vbswap.x</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\conf\</p></td>
</tr>
</tbody>
</table>

 

 

 






