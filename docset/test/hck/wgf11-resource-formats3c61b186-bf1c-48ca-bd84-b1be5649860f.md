---
author: joshbax-msft
title: WGF11 Resource Formats
description: WGF11 Resource Formats
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a082f614-085a-4bc1-9e67-88220215244d
---

# WGF11 Resource Formats


This automated test verifies D3D graphics driver/hardware conformance for shader resource views and the texture formats that are outlined in the D3D11 functional specification.

This topic applies to the following test jobs:

-   WGF11 Resource Formats

-   WGF11 Resource Formats - BGRA Support on 10.x

-   WGF11 Resource Formats - BGRA Support on 10.x (WoW64)

-   WGF11 Resource Formats (WoW64)

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.AdapterRender.D3D101Core.D3D101CorePrimary Device.Graphics.AdapterRender.D3D101WDDM12.D3D101v12Primary Device.Graphics.AdapterRender.D3D10Core.D3D10CorePrimary Device.Graphics.AdapterRender.D3D10WDDM12.D3D10v12Primary Device.Graphics.AdapterRender.D3D111Core.D3D111CorePrimary Device.Graphics.AdapterRender.D3D11Core.D3D11CorePrimary Device.Graphics.AdapterRender.D3D11WDDM12.D3D11v12Primary</p>
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

All test cases return PASS or FAIL. Review the test results in the log file from the DTM Studio for specific details about failures. The test might return SKIP if a format is not supported by the device. The test might return BLOCKED if there is an uncaught exception (framework catches it at the end and logs it).

## More information


**ResourceFormats** (tests mainly ShaderResourceViews)

There are various formats available for resources. They vary mainly in number of components, type, precision, and whether or not they are compressed.

-   Render target is a four-component, 32-bit float format. The formats tested are converted to this format. Results must be within 1-ULP(Unit Least Precision) per component of expected result.

-   Compressed and other special formats are decoded as specified in the test and compared against the hardware's (or REF's) results (again, 1-ULP tolerance).

-   Three types of source data are used: tiles, gradients, and stripes. Each data type is parameterized, such as gradient colors, tile and stripe size, and so on.

-   Depending on the resource type (all five types are tested) the test cycles through different values for height, width, and depth. This includes non-square and non-pow-2 values.

-   Hit all shader resource slots throughout the test run.

-   Verify multiple use input resources.

-   Example: Use a texture as vertex input and shader resource input in the same Draw() call.

-   Test input/output resources (for example: D3D10\_BIND\_SHADER\_RESOURCE | D3D10\_BIND\_RENDERTARGET)

-   Try using first pass to initialize resource data.

**DepthReadback** Verifies driver behavior when using a depth buffer from one pass as a shader resource in a subsequent pass.

**CheckFormatSupport** Verifies that the driver supports the required formats and their capabilities based on the format table in the spec.

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
<td><p><strong>Wgf11resourceformats</strong></p></td>
<td><p>Runs the test. Without any options, the test enumerates devices.</p></td>
</tr>
<tr class="even">
<td><p><strong>-FeatureLevel:XX.X</strong></p></td>
<td><p>Sets the feature level tested, where XX.X is the Feature Level the test will run at: 10.0, 10.1, or 11.0.</p></td>
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
<td><p>Wgf11resourceformats.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\conf</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WGF11%20Resource%20Formats%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




