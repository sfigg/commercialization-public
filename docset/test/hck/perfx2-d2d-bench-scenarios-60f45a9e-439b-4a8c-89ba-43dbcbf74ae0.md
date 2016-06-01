---
author: joshbax-msft
title: PerfX2 D2D Bench Scenarios
description: PerfX2 D2D Bench Scenarios
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: de08e283-81ce-43e3-9a65-dd52eb7ca7f3
---

# PerfX2 D2D Bench Scenarios


This automated test validates D2D/DImage/DWM/IE scenarios and validates that the goals are being met.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.Graphics.DisplayRender.Performance</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~30 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

## More information


### Parameters

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>TopologyConfigSaveFile</p></td>
<td><p>The topology save file.</p>
<p>Default value: saved_topology.bin</p></td>
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
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>AutoShell PerfXDWM_wlk.xml</strong></p></td>
<td><p>This command runs the PerfX2 DWM Scenarios test job.</p></td>
</tr>
<tr class="even">
<td><p><strong>AutoShell D2DScenarios_IE_wlk.xml</strong></p></td>
<td><p>This command runs the PerfX2 IE10 Scenarios test job.</p></td>
</tr>
<tr class="odd">
<td><p><strong>AutoShell D2DScenarios_Bench_wlk.xml</strong></p></td>
<td><p>This command runs the PerfX2 D2D Bench Scenarios test job.</p></td>
</tr>
<tr class="even">
<td><p><strong>AutoShell DImageScenarios_wlk.xml</strong></p></td>
<td><p>This command runs the PerfX2 DImage Scenarios test job.</p></td>
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
<td><p>AutoShell.exe</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="even">
<td><p>D2DScenarios.dll</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="odd">
<td><p>D2DScenarios_Bench_WLK.xml</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="even">
<td><p>D2DScenarios_IE_wlk.xml</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="odd">
<td><p>DCEPerfWindow.exe</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="even">
<td><p>DImageScenarios.dll</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="odd">
<td><p>DImageScenarios_WLK.xml</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="even">
<td><p>DwmWindowOperations.dll</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="odd">
<td><p>mshtmpad.exe</p></td>
<td><p><em>[WoW64TestBinRoot]</em>\nttest\windowstest\graphics\PerfX2\D2D\IE\</p></td>
</tr>
<tr class="even">
<td><p>perfctrl.dll</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="odd">
<td><p>PerfXDWM_wlk.xml</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="even">
<td><p>perf_d2d.dll</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="odd">
<td><p>perf_d3d.dll</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="even">
<td><p>perf_dwm.dll</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="odd">
<td><p>perf_dx.dll</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="even">
<td><p>perf_perfx2.dll</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="odd">
<td><p>PerfXDWM_WLK.xml</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="even">
<td><p>TestX.man</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="odd">
<td><p>TestX_Core.dll</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="even">
<td><p>TestX_d3d11.dll</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="odd">
<td><p>TestX_dimage.dll</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="even">
<td><p>TestX_dxgi.dll</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="odd">
<td><p>TestX_External.dll</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="even">
<td><p>TestX_InfoSources.dll</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="odd">
<td><p>TestX_Profile.dll</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="even">
<td><p>TestX_Remote.dll</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="odd">
<td><p>TestX_Utility.dll</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
<tr class="even">
<td><p>TestX_Widget.dll</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\windowstest\graphics\perfx2\</p></td>
</tr>
</tbody>
</table>

 

 

 






