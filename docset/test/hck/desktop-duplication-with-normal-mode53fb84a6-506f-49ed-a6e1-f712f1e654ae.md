---
author: joshbax-msft
title: Desktop Duplication with Normal Mode
description: Desktop Duplication with Normal Mode
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 41079441-f841-4899-ad40-45002109d2e5
---

# Desktop Duplication with Normal Mode


This automated test performs GDI rendering; specifically, ColorFill and screen to screen BitBlt, with desktop duplication APIs. The per-pixel match is applied to check the functionality of duplication APIs. This test is executed with DWM on.

**Note**  
When the test is run in legacy mode, the test applies GDI rendering with desktop duplication APIs that simulates the delay in the communication channels. The per-pixel match is applied to check the functionality of duplication APIs. This test is executed with DWM on

 

This topic applies to the following test jobs:

-   Desktop Duplication with Latency Mode

-   Desktop Duplication with Normal Mode

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.WDDM12.DisplayOnly.Base Device.Graphics.WDDM12.DisplayRender.Base</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
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

## More information


This test document is applicable to the following test jobs:

-   Desktop Duplication Normal Mode

-   Desktop Duplication Legacy Mode

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
<td><p><strong>DuplTestGdi /fullscreen /all</strong></p></td>
<td><p>This command runs the Desktop Duplication Normal Mode test job.</p></td>
</tr>
<tr class="even">
<td><p><strong>DuplTestGdi /fullscreen /latencymode /all</strong></p></td>
<td><p>This command runs the Desktop Duplication Legacy Mode test job.</p></td>
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
<td><p>DuplTestGdi.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\wddm\bin\</p></td>
</tr>
</tbody>
</table>

 

 

 






