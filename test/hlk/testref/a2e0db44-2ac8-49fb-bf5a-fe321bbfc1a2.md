---
title: Present Validation 2 (FullScreen) (WoW64)
Description: Present Validation 2 (FullScreen) (WoW64)
ms.assetid: c1b1b28a-32fe-4145-b2c6-59708fc44996
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Present Validation 2 (FullScreen) (WoW64)

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/c1b1b28a-32fe-4145-b2c6-59708fc44996">http://msdn.microsoft.com/en-us/library/windows/hardware/c1b1b28a-32fe-4145-b2c6-59708fc44996</b>


</conditional_block>

This automated test verifies that all modes that the **EnumAdapterModes** method reports for the device are available to applications.

The test uses the following parameters: back buffer format, screen resolution, present intervals, swap effects, and multisample types.

The DoNotWait test calls the swap chain's **Present** method in a loop, passes the **D3DPRESENT\_DONOTWAIT** option (in full-screen mode), and uses the **D3DPRESENT\_INTERVAL\_ONE** value. As a result, the driver's queue of frames will exceed the allowed maximum of three. The DoNotWait test expects the driver to return control to the application by using the **D3DERR\_WASSTILLDRAWING** error code. If the error code is not returned, the test fails.

The LockDoNotWait test is similar to the DoNotWait test but occurs on a surface (the back buffer). The same behavior is expected of the driver. If the error code is not returned, the test fails.

This topic applies to the following test jobs:

-   Present Validation 2 (FullScreen)

-   Present Validation 2 (FullScreen) (WoW64)

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
<li>Device.Graphics.AdapterRender.MinimumDirectXLevel</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Platforms</b></td>
<td><ul>
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
<td>9</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Category</b></td>
<td>Compatibility</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Timeout (in minutes)</b></td>
<td>9</td>
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

## More information

The test displays on-screen pass-or-fail compliance and writes the results to a log file that is named Present2.xml. Present2.xml is written to the %windir%\\dxlogs directory.

If the call to the **Reset** method fails, you can check the values that the test used for the back buffer format and size in the log file. If the image comparison fails, the test prints the image-comparison statistics, just like the other Present Validation tests in the group.

The following table lists the image surfaces that the test uses. If you specify the **-Save** command option, the test saves these files.

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
<td><p>Texture.dds</p></td>
<td><p>The texture that is used to fill the quad that is used in <strong>Present</strong> operations.</p></td>
</tr>
<tr class="even">
<td><p>SourceSurface.bmp</p></td>
<td><p>The source surface in the back buffer. For full-screen <strong>Present</strong> operations, this surface is the whole buffer.</p></td>
</tr>
<tr class="odd">
<td><p>DestSurface.bmp</p></td>
<td><p>The destination surface in the front buffer. For full-screen <strong>Present</strong> operations, this surface is the whole buffer.</p></td>
</tr>
<tr class="even">
<td><p>RefSurface.bmp</p></td>
<td><p>The reference surface, as computed by the Microsoft® Direct3D® API.</p></td>
</tr>
<tr class="odd">
<td><p>DiffSurface.bmp</p></td>
<td><p>The difference between the front buffer and the reference image.</p></td>
</tr>
<tr class="even">
<td><p>FrontBuffer.bmp</p></td>
<td><p>The contents of the front buffer.</p></td>
</tr>
</tbody>
</table>

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
<td><p><strong>Present2_fullscreen.exe -M:1 -dx9 -whql -logclean</strong></p></td>
<td><p>Runs the Present Validation 2 (FullScreen) test job.</p></td>
</tr>
<tr class="even">
<td><p><strong>Present2_fullscreen.exe -M:1 -whql -logclean</strong></p></td>
<td><p>Runs the Present Validation 2 (FullScreen) (WoW64) test job.</p></td>
</tr>
</tbody>
</table>

>[!NOTE]
For command-line help for this test binary, type **/?**.


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
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\windowstest\tools</p></td>
</tr>
<tr class="even">
<td><p>D3d10ref.dll</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3d11ref.dll</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3dcompiler_test.dll</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3dref9.dll</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3dx10_test.dll</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3dx11_test.dll</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3dx9_test.dll</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>Fpstate.dll</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\windowstest\graphics\d3d\utility\</p></td>
</tr>
<tr class="even">
<td><p>Modechange.exe</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\windowstest\graphics\d3d\utility\</p></td>
</tr>
<tr class="odd">
<td><p>Present2_fullscreen.exe</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\</p></td>
</tr>
<tr class="even">
<td><p>TDRWatch.exe</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\windowstest\graphics\</p></td>
</tr>
<tr class="odd">
<td><p>Vbswap.x</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\windowstest\graphics\d3d\conf\</p></td>
</tr>
</tbody>
</table>

## Parameters

| Parameter name                                         | Parameter description                                 |
|--------------------------------------------------------|-------------------------------------------------------|
| <mark type="bullet_intro">MODIFIEDCMDLINE</b>          | Additional command line arguments for test executable |
| <mark type="bullet_intro">LLU\_NetAccessOnly</b>       | LLU Name of net user                                  |
| <mark type="bullet_intro">MONITOR</b>                  | Display device to test                                |
| <mark type="bullet_intro">ConfigDisplayCommandLine</b> | Custom Command Line for ConfigDisplay. Default: logo  |
| <mark type="bullet_intro">TDRArgs</b>                  | /get or /set                                          |





