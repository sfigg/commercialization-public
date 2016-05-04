---
author: joshbax-msft
title: Monitor - Digital Link Protection Test
description: Monitor - Digital Link Protection Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e0c195a6-c88e-4c9c-9417-77b6cb119fc2
---

# Monitor - Digital Link Protection Test


This automated test verifies High-Bandwidth Digital Content Protection (HDCP) support for a given monitor. The test first queries the connector types available on the graphics chipset. If a digital connector is available and supports HDCP, it will try to turn on HDCP.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Display.Monitor.DigitalLinkProtection</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~20 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Display Monitor Testing Prerequisites](display-monitor-testing-prerequisites.md).

In addition, this test requires the following:

-   Graphics adapter or chipset that supports the HDCP feature.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

This test returns Pass or Fail. For internal monitors, such as laptops, the test returns SKIP if the reported connection type is OPM\_CONNECTOR\_TYPE\_LVDS.To review test details, review the test log from Windows HCK Studio.

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
<td><p><strong>Shellrunner.exe</strong></p></td>
<td><p>Without any options, the test enumerates the monitor.</p></td>
</tr>
<tr class="even">
<td><p><strong>-c [profile]</strong></p></td>
<td><p>Starts the application and runs the test cases that are specified in the .profile file. (For this test, that is the WLP_Display_009.pro file).</p></td>
</tr>
<tr class="odd">
<td><p><strong>-l [dll file]</strong></p></td>
<td><p>Starts the application and specifies the .dll file to be run. (For this test, that is the s98wtt_u.dll file.)</p></td>
</tr>
<tr class="even">
<td><p><strong>-x [string]</strong></p></td>
<td><p>Starts the test and selects the test level to be run. (For this test, that is the premium level.)</p></td>
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
<td><p>s98wtt_u.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Shellrunner.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\common\wdk\</p></td>
</tr>
<tr class="odd">
<td><p>WLP_Display_009.pro</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\wmmftest\</p></td>
</tr>
</tbody>
</table>

 

 

 






