---
author: joshbax-msft
title: D3DQuery Conformance Test
description: D3DQuery Conformance Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 051b6159-88b6-4eff-962e-eb548b6e8517
---

# D3DQuery Conformance Test


This automated test checks for driver support for Microsoft® DirectX® 9.0 asynchronous notifications.

Specifically, this test validates the functional and operational specifications for the DirectX 9.0 asynchronous notification API. This API provides an efficient and flexible mechanism to query the driver for state or statistical information. The query is run either synchronously (the application waits) or asynchronously (the application does not wait). The asynchronous notification API consists of the IDirect3DDevice9::CreateQuery, IDirect3DDevice9::Issue, and IDirect3DDevice9::GetData methods.

The Microsoft Direct3D® API defines a fixed set of query types, and the driver supports the query types that it chooses during setup. This test validates only the query types that the driver supports. All other query types are not validated.

This topic applies to the following test jobs:

-   D3DQuery Conformance Test

-   D3DQuery Conformance Test (WoW64)

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
<td><p>~2 minutes</p></td>
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

In addition, this test requires the following software:

-   Microsoft DirectX 9.0 or later

-   High definition TV screen.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

The driver returns D3DERR\_NOTAVAILABLE if the query type is not supported.

The test writes the test results to the D3DQuery.xml log file, and indicates success or failure on screen. The test log is written to the %windir%\\dxlogs directory.

## More information


There are general properties that are common to all or to a subset of query types. These properties are validated for each appropriate query type. For example, the test checks that asynchronous queries are performed in parallel with the CPU execution. It counts the number of iterations required to fetch the data with the GetData method.

There are also specific properties that are unique to a query type. These properties are validated for that query type, and typically involve verifying that the data that a query returns conforms to the expected value. For example, in the occlusion query, the test verifies that the number of processed pixels corresponds to the exposed area of the rendered primitive.

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
<td><p><strong>D3DQuery -M:1 -dx9 -whql -logclean</strong></p></td>
<td><p>This command runs the D3DQuery Conformance test job.</p></td>
</tr>
<tr class="even">
<td><p><strong>D3DQuery -M:1 -whql -logclean</strong></p></td>
<td><p>This command runs the D3DQuery Conformance (WoW64) test job.</p></td>
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
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\tools</p></td>
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
<td><p>D3DQuery.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\conf\</p></td>
</tr>
<tr class="odd">
<td><p>D3dcompiler_test.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3dref.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support</p></td>
</tr>
<tr class="odd">
<td><p>D3dref8.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3dref9.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3dx10_test.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3dx11_TEST.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3dx8d.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3dx9_TEST.dll</p></td>
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
<td><p>TDRWatch.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\</p></td>
</tr>
<tr class="even">
<td><p>Vbswap.x</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\conf\</p></td>
</tr>
</tbody>
</table>

 

 

 






