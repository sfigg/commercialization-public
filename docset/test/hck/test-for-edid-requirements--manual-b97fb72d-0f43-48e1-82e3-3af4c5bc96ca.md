---
author: joshbax-msft
title: Test for EDID Requirements (Manual)
description: Test for EDID Requirements (Manual)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 05b570df-fb81-4be1-aed3-5de997eb50a3
---

# Test for EDID Requirements (Manual)


This manual test verifies that the display device implements the extended-display identification data (EDID) data structure correctly.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Display.Monitor.EDID Device.Graphics.WDDM.Display.Base</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~1 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Display Monitor Testing Prerequisites](display-monitor-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

## More information


The display device test must meet the following specifications:

1.  Must have native timing set in the detailed timing block and for the preferred display mode

2.  Must implement monitor range limits unless display only supports discrete timings

3.  Must implement monitor name, suitable for presentation to the user (though optional for internal displays)

4.  Must contain unique monitor serial number in either the serial number field or in a detailed timing block (both OK) (though optional for internal displays)

5.  Recommended mode must be a progressive mode

6.  Must provide accurate physical dimensions, unless the device is a projector

7.  Display devices that support more than 8 bits per pixel use EDID 1.4 in order to describe the color capabilities.

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
<td><p><strong>CCDEdid.exe</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type **/h**.

 

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
<td><p>CCDEdid.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\windowstest\graphics\wddm\bin\</p></td>
</tr>
</tbody>
</table>

 

 

 






