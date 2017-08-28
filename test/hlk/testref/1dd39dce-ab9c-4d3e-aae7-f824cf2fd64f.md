---
title: WGF11 Precision
Description: WGF11 Precision
ms.assetid: 7eb0e3d0-39b8-4fd3-b0a7-9e3cdf4a6295
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# WGF11 Precision

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/7eb0e3d0-39b8-4fd3-b0a7-9e3cdf4a6295">http://msdn.microsoft.com/en-us/library/windows/hardware/7eb0e3d0-39b8-4fd3-b0a7-9e3cdf4a6295</b>


</conditional_block>

This automated test ensures that when shaders specify the minimum partial precision flag (8, 10, or 16-bit) that IHVs do not use a lower precision for calculations. For example, the shader specifies 16-bit but the IHV uses 10-bit.

This topic is applicable to the following test cases:

-   WGF11 Precision

-   WGF11 Precision (WoW64)

-   WGF11 Precision FL9.3

-   WGF11 Precision FL9.3 (WoW64)

>[!NOTE]
Using higher precision than the minimum specified value is valid.


## Test details

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><mark type="bullet_intro">Specifications</b></td>
<td><ul>
<li>Device.Graphics.AdapterRender.D3D11PartialPrecision.D3D11CoreE</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Platforms</b></td>
<td><ul>
<li><tla rid="win_threshold_desktop"></tla> x86</li>
<li><tla rid="win_threshold_desktop"></tla> x64</li>
<li><tla rid="win_threshold_server"></tla> x64</li>
<li><tla rid="win_threshold_desktop"></tla> ARM64</li>
</ul></td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Supported Releases</b></td>
<td><ul>
<li><tla rid="win_10"></tla></li>
<li><tla rid="win_10_th2"></tla></li>
<li><tla rid="win_10_rs1"></tla></li>
<li>Windows 10, version 1703</li>
<li>Windows 10, version 1709</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Expected run time (in minutes)</b></td>
<td>2</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Category</b></td>
<td>Compatibility</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Timeout (in minutes)</b></td>
<td>2</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Requires reboot</b></td>
<td>false</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Requires special configuration</b></td>
<td>false</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Type</b></td>
<td>automatic</td>
</tr>
</tbody>
</table>

## Additional documentation

Tests in this feature area might have additional documentation, including prerequisites, setup, and troubleshooting information, that can be found in the following topic(s):

-   <xref rid="p_hlk_test.device_graphics_additional_documentation">Device.Graphics additional documentation</b>

## Running the test

Before you run the test, complete the test setup as described in the test requirements: <xref rid="p_hlk_test.graphic_adapter_or_chipset_testing_prerequisites">Graphic Adapter or Chipset Testing Prerequisites</b>.

## Troubleshooting

For generic troubleshooting of HLK test failures, see <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.

For troubleshooting information, see <xref rid="p_hlk_test.troubleshooting_devicegraphics_testing">Troubleshooting Device.Graphics Testing</b>.

This test will always return Pass if precision is handled correctly, or return Fail if not. To review test details, review the test log from the Windows HLK Manager.

If the partial precision test fails, try setting your driver to ignore the partial precision flags. If that passes, then it means that when you are attempting to follow the partial precision flags, you are using a lower precision than what the shader specified. E.g. The shader asked for 16-bit minimum, but you are using 8-bit or 10-bit. If you ignore the partial precision flags, and it still fails, ensure other conformance tests pass because the test relies on things like “sample” working correctly.

## More information

The partial precision group in WGF11Precision.exe ensures that when shaders specify the minimum partial precision flag (8, 10, or 16-bit) that IHVs do not use a lower precision for calculations. For example, the shader specifies 16-bit but the IHV uses 10-bit. Using higher precision than the minimum specified value is valid.

## Command syntax

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
<td><p><strong>WGF11Precision.exe</strong></p></td>
<td><p>Runs the test jobs.</p></td>
</tr>
</tbody>
</table>

>[!NOTE]
For command line help for this test binary, type **/?**.


## File list

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
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\windowstest\tools\</p></td>
</tr>
<tr class="even">
<td><p>D3d11_1sdklayers.dll</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3d11ref.dll</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3d11sdklayers.dll</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3dcompiler_test.dll</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\windowstest\graphics\d3d\support</p></td>
</tr>
<tr class="even">
<td><p>D3dx10_test.dll</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>d3dx11_test.dll</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>TDRWatch.exe</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\windowstest\graphics\</p></td>
</tr>
<tr class="odd">
<td><p>WGF11Precision.exe</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\windowstest\graphics\d3d\conf</p></td>
</tr>
</tbody>
</table>

## Parameters

| Parameter name                                         | Parameter description                                 |
|--------------------------------------------------------|-------------------------------------------------------|
| <mark type="bullet_intro">MODIFIEDCMDLINE</b>          | Additional command line arguments for test executable |
| <mark type="bullet_intro">LLU\_NetAccessOnly</b>       | LLU Name of net user                                  |
| <mark type="bullet_intro">ConfigDisplayCommandLine</b> | Custom Command Line for ConfigDisplay. Default: logo  |
| <mark type="bullet_intro">TDRArgs</b>                  | /get or /set                                          |





