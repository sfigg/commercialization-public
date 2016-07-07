---
author: joshbax-msft
title: WHQL FPO optimization check for kernel video driver(s) (1.1)
description: WHQL FPO optimization check for kernel video driver(s) (1.1)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d273e29e-347b-4cc4-b3fb-777bfbe64781
---

# WHQL FPO optimization check for kernel video driver(s) (1.1)


This automated test validates that the stack records generated in event traces can be traversed through the video driver code. In video code, frame point optimization is turned off for debugging purposes.

This document is applicable to the following test jobs:

-   WHQL FPO optimization check for kernel video driver(s) (1.1)

-   WHQL FPO optimization check for kernel video driver(s) (1.2)

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.WDDM11.Base</p>
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


When the test is run, the screen flashes a few times and it outputs an fpo\_check.xml file. In the bottom of that file, it logs a pass or fail. When running, the test sets up a listener for ETW events, and then performs video work. During this time, it processes the profile event logged by the kernel, with stackwalk events enabled. For each event, it checks if the video kernel is on the stack. If so, it walks the stack looking for the operating system routine that called the video driver. If it is able to successfully find the module that called the video driver (in every case) the test passes. Otherwise, it fails.

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
<td><p><strong>Fpo_check</strong></p></td>
<td><p>Without any options, the test enumerates display devices.</p></td>
</tr>
<tr class="even">
<td><p><strong>Fpo_check 1.1</strong></p></td>
<td><p>This command runs the WHQL FPO optimization check for kernel video driver(s) (1.1) test job.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Fpo_check 1.2</strong></p></td>
<td><p>WHQL FPO optimization check for kernel video driver(s) (1.2)</p></td>
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
<td><p>Fpo_check</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\AVCore\Audio\WDK\</p></td>
</tr>
</tbody>
</table>

 

 

 






