---
author: joshbax-msft
title: IntegrityStream Test
description: IntegrityStream Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 25947b46-c972-4026-ac0d-4489261c1c0e
---

# IntegrityStream Test


This automated test tests **FSCTL\_GET\_INTEGRITY\_INFORMATION** and **FSCTL\_SET\_INTEGRITY\_INFORMATION**.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Filter.Driver.AntiVirus.MiniFilter Filter.Driver.FileSystem.Functionality Filter.Driver.FileSystem.MiniFilter</p>
<p>[See the filter hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254485)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~30 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [File System Testing Prerequisites](file-system-testing-prerequisites.md). In addition, add one partition to the Windows environment.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Label</th>
<th>File System</th>
<th>Size</th>
<th>Expected Drive Letter</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>REFS</p></td>
<td><p>REFS</p></td>
<td><p>10240mb</p></td>
<td><p>o:</p></td>
</tr>
</tbody>
</table>

 

## Troubleshooting


For general troubleshooting information, see [Troubleshooting File System Testing](troubleshooting-file-system-testing.md).

If you encounter any test failures, run with the option **-l** to have the test print additional information on variation failures. For example: **IntegrityStream -p o: -l**

If the problem does not reproduce, look for “Seed” in the log that has the failure and run: **IntegrityStream -p o: -l -s &lt;seed&gt;**

## More Information


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
<td><p>-p &lt;drive&gt;</p></td>
<td><p>Specify the drive letter of the REFS volume where test files will be created</p></td>
</tr>
<tr class="even">
<td><p>-l</p></td>
<td><p>Show step-by-step information in the log</p></td>
</tr>
<tr class="odd">
<td><p>-v &lt;variation number&gt;</p></td>
<td><p>Run only this variation. Used for reproducing an issue. Find the variation number in the log where the failure originally appeared.</p></td>
</tr>
<tr class="even">
<td><p>-s &lt;seed&gt;</p></td>
<td><p>Seed for random numbers. Used for reproducing the same values in a failed run. Find the seed in the log where the failure originally appeared.</p></td>
</tr>
</tbody>
</table>

 

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
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\refs\integritystream.exe</p></td>
<td><p>\nttest\</p></td>
</tr>
<tr class="even">
<td><p>[WTT\OSBinRoot]\NTTest\CommonTest\NTLog\ntlog.dll</p></td>
<td><p>[This content isn't available yet.]</p></td>
</tr>
<tr class="odd">
<td><p>[WTT\OSBinRoot]\NTTest\CommonTest\NTLog\ntlogger.ini</p></td>
<td><p>[This content isn't available yet.]</p></td>
</tr>
<tr class="even">
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\shared_libs\stresslog.dll</p></td>
<td><p>[This content isn't available yet.]</p></td>
</tr>
<tr class="odd">
<td><p>[WTT\TestBinRoot]\NTTest\BASETEST\Core_File_Services\FilterManager\TestSuite\Scripts\FileSystems\IsREFSSupported.vbs</p></td>
<td><p>[This content isn't available yet.]</p></td>
</tr>
<tr class="even">
<td><p>[WTT\TestBinRoot]\NTTest\BASETEST\Core_File_Services\FilterManager\TestSuite\Scripts\FileSystems\IsREFSSupported.vbs</p></td>
<td><p>[This content isn't available yet.]</p></td>
</tr>
<tr class="odd">
<td><p>[WTT\TestBinRoot]\NTTest\BASETEST\Core_File_Services\FilterManager\TestSuite\Scripts\FileSystems\IsREFSSupported.vbs</p></td>
<td><p>[This content isn't available yet.]</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20IntegrityStream%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




