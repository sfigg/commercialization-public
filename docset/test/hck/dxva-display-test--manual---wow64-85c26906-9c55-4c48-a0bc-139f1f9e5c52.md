---
author: joshbax-msft
title: DXVA Display Test (Manual) (WoW64)
description: DXVA Display Test (Manual) (WoW64)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7919dd4b-bd4d-4849-9df2-244f87eb3f3e
---

# DXVA Display Test (Manual) (WoW64)


This manual test verifies the requirements listed in the test details table.

This topic applies to the following test jobs:

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.WDDM.Render.VideoProcessing</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 8 (x64) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Graphic Adapter or Chipset Testing Prerequisites](graphic-adapter-or-chipset-testing-prerequisites.md).

Since this job requires user intervention, you must pick a machine in your pool that is used for the submission, and apply the following constraint to the machine: `Display\PrimaryMachine`

Make sure this machine is capable of running all manual tests required for logo. Depending on the type of submission, this may require the following features/configurations:

-   TV-Out Support

-   Multimon

-   Hot Plug detection support

Choose one machine in your pool, set the necessary dimension and then schedule all jobs with (manual) in the title at the same time. You can do this before or after the rest of the automated jobs so that they at least get sent down to the system in bulk.

You can set the dimension for this test by using either of the following methods:

-   From a command prompt, rung the following command: *WTTCmd.exe /ConfigReg /Add /Value:Display\\PrimaryMachine /Data:""*

-   Use this procedure:

    1.  Pick a relevant computer in the machine pool via the job monitor.

    2.  Right click the desired machine, and then click **Edit**.

    3.  Add this dimension to the list.

    4.  Click **Save**.

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
<td><p><strong>DXVADisplayTest.exe -whql</strong></p></td>
<td><p>Runs this test job.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type `/h`

 

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
<td><p>DXVADisplayTest.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\streaming\</p></td>
</tr>
<tr class="even">
<td><p>DXVAStream.dva</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\streaming\</p></td>
</tr>
<tr class="odd">
<td><p>DXVASourceTest.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\streaming\</p></td>
</tr>
<tr class="even">
<td><p>DXVAStreamMpeg1.dva</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\\multimediatest\streaming\</p></td>
</tr>
<tr class="odd">
<td><p>modechange.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\d3d\utility\</p></td>
</tr>
</tbody>
</table>

 

 

 






