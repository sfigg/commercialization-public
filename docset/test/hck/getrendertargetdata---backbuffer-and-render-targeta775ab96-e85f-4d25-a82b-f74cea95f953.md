---
author: joshbax-msft
title: GetRenderTargetData - Backbuffer and Render Target
description: GetRenderTargetData - Backbuffer and Render Target
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f170b188-e78f-47e7-94b9-55fa66f92720
---

# GetRenderTargetData - Backbuffer and Render Target


This automated test verifies that the IDirect3DDevice9::GetRenderTargetData method in Microsoft® Direct3D® 9 can be used to extract the contents of back buffers and basic render targets.

The test first creates the source and destination surfaces. The test then cycles through various surface formats and usage specifications. If either surface cannot be created, that configuration is skipped. After the surfaces are created, the render-target surface is filled with a textured quad. Next, the source is copied to the destination with the GetRenderTargetData method, and a surface comparison is performed to verify that the two surface contents are the same.

This topic applies to the following test jobs:

-   GetRenderTargetData - Backbuffer and Render Target

-   GetRenderTargetData - Backbuffer and Render Target (WoW64)

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
<td><p>~8 minutes</p></td>
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

In addition, this test requires the following software and hardware.

-   Microsoft DirectX® 9.0 or later

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

## More information


This section will include test-related content that may not aid the tester in running or troubleshooting the test, but is information that is good to know, but not necessary for running the test.

This test validates the functional and operational specifications for the IDirect3DDevice9::GetRenderTargetData method. The GetRenderTargetData method provides a way to copy the contents of a render-target surface to a system-memory surface. There are several restrictions on the source and destination surfaces that you must meet for this copy to succeed:

-   The source surface must be a regular render-target surface, or a specific level of a render-target texture (MIP map or cube texture).

-   The source must be POOL\_DEFAULT and D3DMULTISAMPLE\_NONE.

-   The destination surface must be either an off-screen plain surface, or a texture (MIP map or cube) that is created with POOL\_SYSTEMMEM.

-   The source and destination surfaces must be the same dimension and format.

The following table shows the matrix of surface combinations that this test covers, and the command options that the test uses to select the type of surface.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Surface</th>
<th>Offscreen plain</th>
<th>MIP-map texture</th>
<th>Cube texture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Back buffer</p></td>
<td><p>-grtdbb</p></td>
<td><p>-grtdbbt</p></td>
<td><p>-grtdbbct</p></td>
</tr>
<tr class="even">
<td><p>Render target</p></td>
<td><p>-grtdrt</p></td>
<td><p>-grtdrtt</p></td>
<td><p>-grtdrtct</p></td>
</tr>
<tr class="odd">
<td><p>MIP-map texture</p></td>
<td><p>-grtdts</p></td>
<td><p>-grtdtt</p></td>
<td><p>-grtdtct</p></td>
</tr>
<tr class="even">
<td><p>Cube texture</p></td>
<td><p>-grtdcts</p></td>
<td><p>-grtdctt</p></td>
<td><p>-grtdctct</p></td>
</tr>
</tbody>
</table>

 

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
<td><p><strong>Getrendertargetdata.exe -grtdbb -grtdbbt -grtdbbct -grtdrt -grtdrt -grtdrtt -grtdrtct -M:1 -dx9 -whql -logclean</strong></p></td>
<td><p>Runs the test job, including options for specific surfaces. For more information about which option to use, see the table earlier in this topic.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command line help for this test binary, type **/h**.

 

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
<td><p>Getrendertargetdata.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\</p></td>
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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20GetRenderTargetData%20-%20Backbuffer%20and%20Render%20Target%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




