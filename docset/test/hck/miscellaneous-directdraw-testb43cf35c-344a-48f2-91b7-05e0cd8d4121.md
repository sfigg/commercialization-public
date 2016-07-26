---
author: joshbax-msft
title: Miscellaneous DirectDraw Test
description: Miscellaneous DirectDraw Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: fb147862-b045-42bc-a46f-4d4d48b3ab9c
---

# Miscellaneous DirectDraw Test


These automated tests are regression tests for various driver bugs that have been reported in the past.

This set of tests contains tests for

-   Page flipping between a large number of back buffers.

-   Color Fill Blt calls, in which an unnecessary source surface is provided.

-   Color Converting Blts. Although drivers are not required to support these, they must at least provide graceful failure.

-   1x1 pixel overlays.

**Note**  
All of these tests are contained in the Fnddraw.exe file, and you can select these tests in the dd\_misc.pro profile.

 

This topic applies to the following test jobs:

-   Miscellaneous DirectDraw Tests

-   Miscellaneous DirectDraw Tests (WoW64)

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirement(s)</strong></p></td>
<td><p>Device.Graphics.AdapterRender.MinimumDirectXLevel</p>
<p>See the [device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Run time</strong></p></td>
<td><p>~5 minutes</p></td>
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
<td><p><strong>Fnddraw dd_misc.pro -r</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command line help for this test binary, type **/h**.

 

### File List

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
<td><p>Fnddraw.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\video\ddraw</p></td>
</tr>
<tr class="even">
<td><p>dd_misc.pro</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\video\ddraw\pro</p></td>
</tr>
</tbody>
</table>

 

 

 






