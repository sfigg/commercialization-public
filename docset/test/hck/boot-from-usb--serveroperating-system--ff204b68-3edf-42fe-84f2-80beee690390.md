---
author: joshbax-msft
title: Boot from USB (ServerOperating System)
description: Boot from USB (ServerOperating System)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: abf554ca-9202-4fa7-bce4-0971bd85044b
---

# Boot from USB (ServerOperating System)


\[This content isn't available yet.\]

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.USBBoot.BootFromUSB</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~15 minutes</p></td>
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


Before you run the test, see [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

## More information


### Parameters

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>CopyPathPWLogoDir</p></td>
<td><p>The location of the certification directory.</p></td>
</tr>
<tr class="even">
<td><p>LocalPWTestPath</p></td>
<td><p>The local location of the test directory.</p></td>
</tr>
<tr class="odd">
<td><p>CopyPwrtestDir</p></td>
<td><p>The power test directory to copy.</p></td>
</tr>
</tbody>
</table>

 

### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Host /beg</strong></p></td>
<td><p>This command starts the test.</p></td>
</tr>
<tr class="even">
<td><p><strong>Host /end</strong></p></td>
<td><p>This command completes the test.</p></td>
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
<td><p>Host.exe</p></td>
<td><p><em>[CopyPathPWLogoDir]</em>\</p></td>
</tr>
<tr class="even">
<td><p>Ufd.exe</p></td>
<td><p><em>[CopyPathPWLogoDir]</em>\</p></td>
</tr>
<tr class="odd">
<td><p>Winpe.wim</p></td>
<td><p><em>[OsBinRoot</em>\media\en-us\</p></td>
</tr>
<tr class="even">
<td><p>pwrtest.exe</p></td>
<td><p><em>[CopyPwrtestDir]</em>\</p></td>
</tr>
<tr class="odd">
<td><p>S3Resume.vbs</p></td>
<td><p><em>[CopyPwrtestDir]</em>\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Boot%20from%20USB%20%28ServerOperating%20System%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




