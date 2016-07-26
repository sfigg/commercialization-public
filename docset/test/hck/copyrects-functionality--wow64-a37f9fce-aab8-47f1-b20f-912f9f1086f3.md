---
author: joshbax-msft
title: CopyRects Functionality (WoW64)
description: CopyRects Functionality (WoW64)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e9c6cd70-3f13-416d-af96-e363fbcb5b84
---

# CopyRects Functionality (WoW64)


This automated test verifies the functionality that the IDirect3DDevice8::CopyRects method provides by comparing surfaces that tested operations generate with reference surfaces that the test itself generates.

For each Microsoft Direct3D version 8 format, the test uses IDirect3D8::CheckDeviceFormat to determine the surface types, if any, that the driver supports. The test then generates representative surfaces for each combination of format and surface type and performs a set of CopyRects operations for each pair of source and destination surfaces that share the same format. These operations include full-surface copies, subrect copies with and without translation, and copies of multiple overlapping rectangles. In each case, the result of the operation is evaluated automatically by comparing the content of the destination surface with that of a reference surface that the test generates.

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
<td><p>Windows 7 (x64) Windows 8 (x64) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
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
<td><p><strong>Copyrects -M:1 -whql -logclean</strong></p></td>
<td><p>This command runs the CopyRects Functionality (WoW64) test job.</p></td>
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
<td><p>[testbinroot]\nttest\windowstest\tools</p></td>
</tr>
<tr class="even">
<td><p>Copyrects.exe</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\conf\</p></td>
</tr>
<tr class="odd">
<td><p>D3d10ref.dll</p></td>
<td><p>[testbinroot]\nttest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3d11ref.dll</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3dcompiler_test.dll</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3dref.dll</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\support</p></td>
</tr>
<tr class="odd">
<td><p>D3dref8.dll</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3dref9.dll</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3dx10_test.dll</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3dx11_TEST.dll</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3dx8d.dll</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3dx9_TEST.dll</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>Fpstate.dll</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\utility\</p></td>
</tr>
<tr class="even">
<td><p>Modechange.exe</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\utility\</p></td>
</tr>
<tr class="odd">
<td><p>TDRWatch.exe</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\</p></td>
</tr>
<tr class="even">
<td><p>Vbswap.x</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\conf\</p></td>
</tr>
</tbody>
</table>

 

 

 






