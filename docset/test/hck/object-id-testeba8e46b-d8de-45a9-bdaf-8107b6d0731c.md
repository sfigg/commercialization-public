---
author: joshbax-msft
title: Object ID Test
description: Object ID Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 01e388f9-cde0-421a-8903-baeaa9c7cd9f
---

# Object ID Test


This automated test checks the following collection of FSCTLs:

-   FSCTL\_CREATE\_OR\_GET\_OBJECT\_ID

-   FSCTL\_DELETE\_OBJECT\_ID

-   FSCTL\_GET\_OBJECT\_ID

-   FSCTL\_SET\_OBJECT\_ID

-   FSCTL\_SET\_OBJECT\_ID\_EXTENDED

**Note**  
For more information about the behavior of file systems, see [File System Behavior in the Microsoft Windows Environment](http://go.microsoft.com/fwlink/?LinkId=236047).

 

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
<td><p>Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
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

 

## <a href="" id="bkmk-requirements"></a>Running the test


For more information about requirements, see [File System Testing Prerequisites](file-system-testing-prerequisites.md).

In addition, this test requires extra hard drive space for four simple 2,048-megabyte (MB) partitions and two simple 1,024-MB partitions.

Before you run the test, you must add the following partitions to the Windows environment.

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
<th>File system</th>
<th>Size</th>
<th>Expected drive letter</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>NTFS</p></td>
<td><p>NTFS</p></td>
<td><p>2,048 MB</p></td>
<td><p>g:</p></td>
</tr>
<tr class="even">
<td><p>CNTFS</p></td>
<td><p>NTFS (compressed)</p></td>
<td><p>2,048 MB</p></td>
<td><p>i:</p></td>
</tr>
<tr class="odd">
<td><p>FAT</p></td>
<td><p>FAT16</p></td>
<td><p>1,024 MB</p></td>
<td><p>k:</p></td>
</tr>
<tr class="even">
<td><p>FAT32</p></td>
<td><p>FAT32</p></td>
<td><p>1,024 MB</p></td>
<td><p>l:</p></td>
</tr>
<tr class="odd">
<td><p>ExFAT</p></td>
<td><p>ExFAT</p></td>
<td><p>2,048 MB</p></td>
<td><p>m:</p></td>
</tr>
<tr class="even">
<td><p>UDF</p></td>
<td><p>UDF</p></td>
<td><p>2,048 MB</p></td>
<td><p>n:</p></td>
</tr>
</tbody>
</table>

 

**Note**  
RunFileIO.cmd contains references to environment variables that you can change to allow for skipping of certain file systems.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting File System Testing](troubleshooting-file-system-testing.md).

All test cases return Pass or Fail. To review test case details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

## More information


The test runs variations for each of the six partitions that were described in the [Requirements](#bkmk-requirements) section.

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
<td><p><strong>runkarr %DRIVE_1% %DRIVE_2% -bvt</strong></p></td>
<td><p>Requires two drive letters and the <em>-bvt</em> parameter.</p></td>
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
<td><p>Oidtest.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\NTTest\basetest\core_file_services\ntfs\oid\</p></td>
</tr>
<tr class="even">
<td><p>RunObjectID.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\NTTest\BASETEST\Core_File_Services\FilterManager\TestSuite\Scripts\FileSystems\</p></td>
</tr>
<tr class="odd">
<td><p>WrapObjectID.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\NTTest\BASETEST\Core_File_Services\FilterManager\TestSuite\Scripts\FileSystems\</p></td>
</tr>
<tr class="even">
<td><p>Ntlog.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\NTTest\CommonTest\NTLog\</p></td>
</tr>
<tr class="odd">
<td><p>Ntlogger.ini</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\NTTest\CommonTest\NTLog\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Object%20ID%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




