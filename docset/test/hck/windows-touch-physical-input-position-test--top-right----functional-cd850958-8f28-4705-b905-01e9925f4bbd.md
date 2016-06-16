---
author: joshbax-msft
title: Windows Touch Physical Input Position Test (Top Right) - Functional
description: Windows Touch Physical Input Position Test (Top Right) - Functional
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: dfdbbd67-5d31-49e2-9324-b59aae1ffed0
---

# Windows Touch Physical Input Position Test (Top Right) - Functional


This test verifies that a Windows Touch device reports all inputs within plus or minus 1 millimeter of the top right of the physical input for all touchable areas.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Digitizer.Touch.HIDCompliantFirmware Device.Digitizer.Touch.PhysicalInputPosition</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~20 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Windows Touch Testing Prerequisites](windows-touch-testing-prerequisites.md).

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
<td><p><strong>Logo3.exe -config PhysicalInputPositionTopRightFunctional.json</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

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
<td><p>Logo3.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\digitizer\Win8Touch</p></td>
</tr>
<tr class="even">
<td><p>PhysicalInputPositionTopRightFunctional.json</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\digitizer\Win8Touch</p></td>
</tr>
</tbody>
</table>

 

 

 






