---
author: joshbax-msft
title: DXGI Presentation testing - FSPresentMS
description: DXGI Presentation testing - FSPresentMS
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0d1f204b-527b-4dba-8cf6-6097251772eb
---

# DXGI Presentation testing - FSPresentMS


This automated test verifies several aspects of the implementation of IDXGISwapChain::Present method.

This topic applies to the following test jobs:

-   DXGI Presentation testing - FSPresentMS

-   DXGI Presentation testing - FSPresentMS (WoW64)

-   DXGI Presentation testing - Other

-   DXGI Presentation testing - Other - multihead

-   DXGI Presentation testing - Other - multihead (WoW64)

-   DXGI Presentation testing - Other (WoW64)

-   DXGI Presentation testing - WinpresentMS

-   DXGI Presentation testing - WinpresentMS (WoW64)

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
<td><p>~10 minutes</p></td>
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

**Note**  
If you run the **DXGI Presentation testing - Other - multihead** or **DXGI Presentation testing - Other - multihead (WoW64)** test on a system without multiple monitors, you will be prompted to add a second monitor. If your device family does not support multimon, select "Continue" to force the test to run in single monitor configuration. Some tests can only be run on systems with multiple monitors, in which case the test will be skipped.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

## More information


The test creates swap chains, both full-screen and within windows. It also creates back buffers in all supported back buffer formats, by using dimensions that match or differ from those of the output window. Because of this variety, the test comprehensively tests stretching and color-converting Present operations. Full-screen test cases make use of both flip-based and copy-based Present operations.

The test also verifies that the different DirectX Graphics Infrastructure (DXGI) swap effects are implemented correctly. It uses timing-based test cases to verify the correct implementation of presentation intervals.

The test automatically verifies presented images by using the IDXGIOutput::GetDisplaySurfaceData method to retrieve the images. It compares these images with the surfaces that were used to initialize the back buffers.

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
<td><p><strong>DXGIPresent.exe FSPresentMS -whql -logclean</strong></p></td>
<td><p>This command runs both the DXGI Presentation testing - FSPresentMS test job and the DXGI Presentation testing - FSPresentMS (WoW64) test job.</p></td>
</tr>
<tr class="even">
<td><p><strong>DXGIPresent.exe WinPresent WinpresentSmallWindow FSPresent FSpresentRotation FSPresentMulti -whql -logclean</strong></p></td>
<td><p>This command runs both the DXGI Presentation testing - Other test job and the DXGI Presentation testing - Other (WoW64) test job.</p></td>
</tr>
<tr class="odd">
<td><p><strong>DXGIPresent.exe WinpresentMS -whql -logclean</strong></p></td>
<td><p>This command runs both the DXGI Presentation testing - WinpresentMS test job and the DXGI Presentation testing - WinpresentMS (WoW64) test job.</p></td>
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
<td><p><em>&lt;testbinroot&gt;</em>\nttest\ windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3d11ref.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\ windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3d11SDKLayers.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\ windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3dcompiler_test.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\ windowstest\graphics\d3d\support</p></td>
</tr>
<tr class="odd">
<td><p>D3dx10_test.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\ windowstest\graphics\d3d\support</p></td>
</tr>
<tr class="even">
<td><p>D3dx11_TEST.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\ windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>DXGIPresent.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\windowstest\graphics\d3d\conf\</p></td>
</tr>
<tr class="even">
<td><p>TDRWatch.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\windowstest\graphics\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20DXGI%20Presentation%20testing%20-%20FSPresentMS%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




