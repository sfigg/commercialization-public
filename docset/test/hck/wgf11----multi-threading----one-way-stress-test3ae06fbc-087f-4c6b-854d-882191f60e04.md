---
author: joshbax-msft
title: WGF11 -- Multi-threading -- one-way stress test
description: WGF11 -- Multi-threading -- one-way stress test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 401a2b8c-6c90-4960-af3a-19900a54fc44
---

# WGF11 -- Multi-threading -- one-way stress test


This automated test verifies the requirements listed in the test details table.

The content in this topic applies to the following test jobs:

-   WGF11 -- Multi-threading -- one-way stress test

-   WGF11 -- Multi-threading -- one-way stress test (FeatureLevel 10.0)

-   WGF11 -- Multi-threading -- one-way stress test (FeatureLevel 10.0) (WoW64)

-   WGF11 -- Multi-threading -- one-way stress test (WoW64)

-   WGF11 -- Multi-threading -- two-way stress test

-   WGF11 -- Multi-threading -- two-way stress test - do not bind

-   WGF11 -- Multi-threading -- two-way stress test - do not bind (FeatureLevel 10.0)

-   WGF11 -- Multi-threading -- two-way stress test - do not bind (FeatureLevel 10.0) (WoW64)

-   WGF11 -- Multi-threading -- two-way stress test - do not bind (WoW64)

-   WGF11 -- Multi-threading -- two-way stress test - immediate context

-   WGF11 -- Multi-threading -- two-way stress test - immediate context (FeatureLevel 10.0)

-   WGF11 -- Multi-threading -- two-way stress test - immediate context (FeatureLevel 10.0) (WoW64)

-   WGF11 -- Multi-threading -- two-way stress test - immediate context (WoW64)

-   WGF11 -- Multi-threading -- two-way stress test (FeatureLevel 10.0)

-   WGF11 -- Multi-threading -- two-way stress test (FeatureLevel 10.0) (WoW64)

-   WGF11 -- Multi-threading -- two-way stress test (WoW64)

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.AdapterRender.D3D101Core.D3D101CorePrimary Device.Graphics.AdapterRender.D3D111Core.D3D111CorePrimary Device.Graphics.AdapterRender.D3D11Core.D3D11CorePrimary Device.Graphics.AdapterRender.D3D11DriverCommandLists.D3D11CoreB Device.Graphics.AdapterRender.D3D11DriverConcurrentObjectCreation.D3D11CoreA</p>
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
<td><p>Certification Reliability</p></td>
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
<td><p>Te.exe D3D11Chess.dll /select:&quot;@Name='D3D11Stress::OneWayStress#*' and @Data:DriverType='D3D_DRIVER_TYPE_HARDWARE' and @Data:FeatureLevel='D3D_FEATURE_LEVEL_10_0'&quot;</p></td>
<td><p>Runs both the WGF11 -- Multi-threading -- one-way stress test (FeatureLevel 10.0) test job and the Multi-threading -- one-way stress test (FeatureLevel 10.0) (WoW64) case.</p></td>
</tr>
<tr class="even">
<td><p>te.exe D3D11Chess.dll /select:&quot;@Name='D3D11Stress::OneWayStress#*' and @Data:DriverType='D3D_DRIVER_TYPE_HARDWARE' and @Data:FeatureLevel='D3D_FEATURE_LEVEL_11_0'&quot;</p></td>
<td><p>Runs both the WGF11 -- Multi-threading -- one-way stress test (FeatureLevel 11.0) test job and the WGF11 -- Multi-threading -- one-way stress test (FeatureLevel 11.0) (WoW64) test job.</p></td>
</tr>
<tr class="odd">
<td><p>te.exe D3D11Chess.dll /select:&quot;@Name='D3D11Stress::TwoWayStress#*' and @Data:DriverType='D3D_DRIVER_TYPE_HARDWARE' and @Data:FeatureLevel='D3D_FEATURE_LEVEL_10_0' and @Data:ScenarioId='2'&quot;</p></td>
<td><p>Runs both the WGF11 -- Multi-threading -- two-way stress test - do not bind (FeatureLevel 10.0) test job and the WGF11 -- Multi-threading -- two-way stress test - do not bind (FeatureLevel 10.0) (WoW64) test job.</p></td>
</tr>
<tr class="even">
<td><p>te.exe D3D11Chess.dll /select:&quot;@Name='D3D11Stress::TwoWayStress#*' and @Data:DriverType='D3D_DRIVER_TYPE_HARDWARE' and @Data:FeatureLevel='D3D_FEATURE_LEVEL_11_0' and @Data:ScenarioId='2'&quot;</p></td>
<td><p>Runs both the WGF11 -- Multi-threading -- two-way stress test - do not bind (FeatureLevel 11.0) test job and the WGF11 -- Multi-threading -- two-way stress test - do not bind (FeatureLevel 11.0) (WoW64) test job.</p></td>
</tr>
<tr class="odd">
<td><p>te.exe D3D11Chess.dll /select:&quot;@Name='D3D11Stress::TwoWayStress#*' and @Data:DriverType='D3D_DRIVER_TYPE_HARDWARE' and @Data:ScenarioId='3' and @Data:FeatureLevel='D3D_FEATURE_LEVEL_10_0'&quot;</p></td>
<td><p>Runs both the WGF11 -- Multi-threading -- two-way stress test - immediate context (FeatureLevel 10.0) test job and the WGF11 -- Multi-threading -- two-way stress test - immediate context (FeatureLevel 10.0) (WoW64) test job.</p></td>
</tr>
<tr class="even">
<td><p>te.exe D3D11Chess.dll /select:&quot;@Name='D3D11Stress::TwoWayStress#*' and @Data:DriverType='D3D_DRIVER_TYPE_HARDWARE' and @Data:ScenarioId='3' and @Data:FeatureLevel='D3D_FEATURE_LEVEL_11_0'&quot;</p></td>
<td><p>Runs both the WGF11 -- Multi-threading -- two-way stress test - immediate context (FeatureLevel 11.0) test job and the WGF11 -- Multi-threading -- two-way stress test - immediate context (FeatureLevel 11.0) (WoW64) test job.</p></td>
</tr>
<tr class="odd">
<td><p>te.exe D3D11Chess.dll /select:&quot;@Name='D3D11Stress::TwoWayStress#*' and @Data:DriverType='D3D_DRIVER_TYPE_HARDWARE' and @Data:FeatureLevel='D3D_FEATURE_LEVEL_10_0' and @Data:ScenarioId='1'&quot;</p></td>
<td><p>Runs both the WGF11 -- Multi-threading -- two-way stress test (FeatureLevel 10.0) test job and the WGF11 -- Multi-threading -- two-way stress test (FeatureLevel 10.0) (WoW64) test job.</p></td>
</tr>
<tr class="even">
<td><p>te.exe D3D11Chess.dll /select:&quot;@Name='D3D11Stress::TwoWayStress#*' and @Data:DriverType='D3D_DRIVER_TYPE_HARDWARE' and @Data:FeatureLevel='D3D_FEATURE_LEVEL_11_0' and @Data:ScenarioId='1'&quot;</p></td>
<td><p>Runs both WGF11 -- Multi-threading -- one-way stress test the WGF11 -- Multi-threading -- two-way stress test (FeatureLevel 11.0) test job and the WGF11 -- Multi-threading -- two-way stress test (FeatureLevel 11.0) (WoW64) test job.</p></td>
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
<td><p><em>&lt;[testbinroot]&gt;</em>\TestBinRoot]\nttest\windowstest\tools\</p></td>
</tr>
<tr class="even">
<td><p>D3D10ProxyDriver.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\TestBinRoot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3d11_1SDKLayers.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\OSBinRoot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3D11Chess.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\TestBinRoot]\nttest\windowstest\graphics\d3d\chess\</p></td>
</tr>
<tr class="odd">
<td><p>D3D11ProxyDriver.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\TestBinRoot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3d11ref.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\OSBinRoot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3d11SDKLayers.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\OSBinRoot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3D11Stress.Configuration.pict</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\TestBinRoot]\nttest\windowstest\graphics\d3d\chess\</p></td>
</tr>
<tr class="odd">
<td><p>D3D11Stress.OneWay.pict</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\TestBinRoot]\nttest\windowstest\graphics\d3d\chess\</p></td>
</tr>
<tr class="even">
<td><p>D3D11Stress.ThreeWay.pict</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\TestBinRoot]\nttest\windowstest\graphics\d3d\chess\</p></td>
</tr>
<tr class="odd">
<td><p>D3D11Stress.TwoWay.pict</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\TestBinRoot]\nttest\windowstest\graphics\d3d\chess\</p></td>
</tr>
<tr class="even">
<td><p>D3dcompiler_test.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\OSBinRoot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3dx10_test.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\OSBinRoot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3dx11_TEST.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\OSBinRoot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>TDRWatch.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\</p></td>
</tr>
</tbody>
</table>

 

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
<td><p>WGF11Async.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\conf</p></td>
</tr>
</tbody>
</table>

 

 

 






