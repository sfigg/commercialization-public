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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20DXVA%20Display%20Test%20%28Manual%29%20%28WoW64%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




