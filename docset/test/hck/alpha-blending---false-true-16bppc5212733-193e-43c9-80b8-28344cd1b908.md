---
author: joshbax-msft
title: Alpha Blending - FALSE-TRUE 16bpp
description: Alpha Blending - FALSE-TRUE 16bpp
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f70868aa-e899-486d-8f61-6dfdd5b4f80a
---

# Alpha Blending - FALSE-TRUE 16bpp


This automated test measures the minimum supported Direct X renderer capability of a graphics adapter or chipset.

This topic applies to the following test jobs:

-   Alpha Blending - FALSE-TRUE 16bpp

-   Alpha Blending - FALSE-TRUE 16bpp (WoW64)

-   Alpha Blending - FALSE-TRUE 2-10-10-10

-   Alpha Blending - FALSE-TRUE 2-10-10-10 (WoW64)

-   Alpha Blending - FALSE-TRUE 32bpp

-   Alpha Blending - FALSE-TRUE 32bpp (WoW64)

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
<td><p>~30 minutes</p></td>
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

## More information


For an N-bit-per-component RGB frame buffer format, the lowest N bits must contain the blue component, the next N bits must contain the green component, the next N bits must contain the red component, and the remaining 32-(3 x N) bits may contain alpha. The resulting 32-bit value must be stored in memory in little-endian format.

**Note**  
This requirement is “If-Implemented” for Windows Server.

 

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
<td><p><strong>Alphabld -DisplayMode:?x?xR5G6B5 -M:1 -whql -logclean -dx9</strong></p></td>
<td><p>Runs the Alpha Blending - FALSE-TRUE 16bpp (32-bit) test case.</p></td>
</tr>
<tr class="even">
<td><p><strong>Alphabld -DisplayMode:?x?xR5G6B5 -M:1 -whql -logclean</strong></p></td>
<td><p>Runs the Alpha Blending - FALSE-TRUE 16bpp (64-bit) test case.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Alphabld -dx9 -winmode:full -displaymode:800x600xA2R10G10B10 -srcalphainvsrcalpha -M:1 -whql -logclean -dx9</strong></p></td>
<td><p>Runs the Alpha Blending - FALSE-TRUE 2-10-10-10 (32-bit) test case.</p></td>
</tr>
<tr class="even">
<td><p><strong>Alphabld -dx9 -winmode:full -displaymode:800x600xA2R10G10B10 -srcalphainvsrcalpha -M:1 -whql -logclean</strong></p></td>
<td><p>Runs the Alpha Blending - FALSE-TRUE 2-10-10-10 (64-bit) test case.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Alphabld -DisplayMode:?x?xX8R8G8B8 -M:1 -whql -logclean -dx9</strong></p></td>
<td><p>Runs the Alpha Blending - FALSE-TRUE 32bpp (32-bit) test case.</p></td>
</tr>
<tr class="even">
<td><p><strong>Alphabld -DisplayMode:?x?xX8R8G8B8 -M:1 -whql -logclean</strong></p></td>
<td><p>Runs the Alpha Blending - FALSE-TRUE 32bpp (64-bit) test case.</p></td>
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
<td><p>Alphabld.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Configdisplay.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\tools</p></td>
</tr>
<tr class="odd">
<td><p>D3d10ref.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3d11ref.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\support\</p></td>
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
<td><p>d3dx10_test.dll</p></td>
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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Alpha%20Blending%20-%20FALSE-TRUE%2016bpp%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




