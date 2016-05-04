---
author: joshbax-msft
title: Palettized Textures Test
description: Palettized Textures Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 71019632-ddfa-475e-b7fa-a23b2cd238db
---

# Palettized Textures Test


This automated test verifies the requirements listed in the test details table.

This topic applies to the following test jobs:

-   Palettized Textures

-   Palettized Textures (WoW64)

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirement(s)</strong></p></td>
<td><p>Device.Graphics.AdapterRender.MinimumDirectXLevel</p>
<p>See the [device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 8 (x64) Windows Server 2012 (x64) Windows Server 2008 R2 (x64)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Run time</strong></p></td>
<td><p>~1 minutes</p></td>
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
<td><p><strong>Palalpha -M:1 -dx9 -whql -logclean</strong></p></td>
<td><p>Runs the Palettized Textures test job.</p></td>
</tr>
<tr class="even">
<td><p><strong>Palalpha -M:1 -whql -logclean</strong></p></td>
<td><p>Runs the Palettized Textures (WoW64) test job.</p></td>
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
<td><p>D3dref.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support</p></td>
</tr>
<tr class="even">
<td><p>D3dref8.dll</p></td>
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
<td><p>D3dx11_TEST.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3dx8d.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3dx9_TEST.dll</p></td>
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
<td><p>Palalpha.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>TDRWatch.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\</p></td>
</tr>
<tr class="even">
<td><p>Vbswap.x</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\conf\</p></td>
</tr>
</tbody>
</table>

 

 

 






