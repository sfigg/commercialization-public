---
author: joshbax-msft
title: Video Acceleration - Bad Data (WoW64)
description: Video Acceleration - Bad Data (WoW64)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: adc7af00-8b68-414b-a763-7bac75a7db10
---

# Video Acceleration - Bad Data (WoW64)


This is an automated test. \[This content isn't available yet.\]

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.WDDM.DisplayRender.Stability Device.Graphics.XDDM.Stability</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 8 (x64) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows Server 2012 R2</p></td>
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
<td><p><strong>Vabaddata.exe -whql</strong></p></td>
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
<td><p>BadDataConfig.xml</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\streaming\</p></td>
</tr>
<tr class="even">
<td><p>BadDataStream.dva</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\streaming\</p></td>
</tr>
<tr class="odd">
<td><p>DXVASourceTest.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\streaming\</p></td>
</tr>
<tr class="even">
<td><p>NoCorruptions.xml</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\streaming\</p></td>
</tr>
<tr class="odd">
<td><p>Vabaddata.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\streaming\</p></td>
</tr>
</tbody>
</table>

 

 

 






