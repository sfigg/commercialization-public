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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WHQL%20FPO%20optimization%20check%20for%20kernel%20video%20driver%28s%29%20%281.1%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




