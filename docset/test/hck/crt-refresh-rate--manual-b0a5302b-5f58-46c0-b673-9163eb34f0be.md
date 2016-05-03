---
author: joshbax-msft
title: CRT Refresh Rate (Manual)
description: CRT Refresh Rate (Manual)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: be1c6c64-88d8-4f93-b07f-d3709f70c9ac
---

# CRT Refresh Rate (Manual)


This manual test verifies that the monitor supports ergonomic timing standards for CRTs. It also verifies the preferred display mode of the monitor (both CRT and LCD) based on the monitor's extended display identification data (EDID). In addition, the test checks for the support of the industry-standard timings for 640 × 480 pixel format at 60-Hertz (Hz) refresh.

This document is applicable to the following test jobs:

-   CRT Refresh Rate (Manual) test job

-   Flat Panel Refresh Rate (Manual) test job

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Display.Monitor.EDID</p>
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


When you start the test, the following occur:

1.  If the test finds any modes that have ergonomic timings (CRTs), it changes to them, one by one. The test then displays a message so that you can verify that each mode is visible.

2.  The test changes to the preferred mode and then displays a message so that you can verify that it is visible.

3.  The test changes to 640 × 480 at 60 Hz and then displays a message so that you can verify that it is visible (**/DVI** option).

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
<td><p><strong>Ratesupport.exe</strong></p></td>
<td><p>With no options specified, the test enumerates the monitor attached to the test computer.</p></td>
</tr>
<tr class="even">
<td><p><strong>/LCD</strong></p></td>
<td><p>Runs the test for LCDs. (Ergonomic timing is not verified.) If this option is not specified, the test assumes that the monitor is a CRT and verifies ergonomic modes.</p></td>
</tr>
<tr class="odd">
<td><p><strong>/DVI</strong></p></td>
<td><p>Checks for the support of 640 × 480 at 60 Hz.</p></td>
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
<td><p>Ratesupport.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\windowstest\graphics\wddm\bin\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20CRT%20Refresh%20Rate%20%28Manual%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




