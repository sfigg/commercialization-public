---
title: File IO 2 Tests
Description: File IO 2 Tests
ms.assetid: 92a67bf2-8c99-48c0-91c5-cea9075dd332
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# File IO 2 Tests

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/92a67bf2-8c99-48c0-91c5-cea9075dd332">http://msdn.microsoft.com/en-us/library/windows/hardware/92a67bf2-8c99-48c0-91c5-cea9075dd332</b>


</conditional_block>

This automated test verifies basic file I/O on the driver stack.

You can use the test to verify the following information:

-   The context in which the test or variation ran (for example, x86, file system, local/remote, language, build number)

-   Pass, fail, and variation count numbers

-   If failed, information that can help determine the cause of failure

The File IO 2 tests are based on TAEF:

-   To list the tests, run the following:

    `te FileIOTestA.dll /list`

-   To run all tests with priority zero (the highest priority, which is the default priority in RunFileIo2.cmd) on a particular test volume, run the following:

    `TE.exe FileIOTestA.dll /select:@Priority=0  /p:Volume=%DRIVE_LETTER%`

For more information about the behavior of file systems, see <xref hlink="http://go.microsoft.com/fwlink/?LinkId=236047">File System Behavior in the Microsoft Windows Environment</b>.

## Test details

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><mark type="bullet_intro">Specifications</b></td>
<td><ul>
<li>Filter.Driver.FileSystem.MiniFilter</li>
<li>Filter.Driver.AntiVirus.MiniFilter</li>
<li>Filter.Driver.FileSystem.Functionality</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Platforms</b></td>
<td><ul>
<li><tla rid="win_threshold_mobile"></tla> ARM</li>
<li><tla rid="win_threshold_desktop"></tla> x86</li>
<li><tla rid="win_threshold_desktop"></tla> x64</li>
<li><tla rid="win_threshold_server"></tla> x64</li>
</ul></td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Supported Releases</b></td>
<td><ul>
<li><tla rid="win_10"></tla></li>
<li><tla rid="win_10_th2"></tla></li>
<li><tla rid="win_10_rs1"></tla></li>
<li>Windows 10, version 1703</li>
<li>Windows 10, version 1709</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Expected run time (in minutes)</b></td>
<td>300</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Category</b></td>
<td>Development</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Timeout (in minutes)</b></td>
<td>300</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Requires reboot</b></td>
<td>false</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Requires special configuration</b></td>
<td>false</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Type</b></td>
<td>automatic</td>
</tr>
</tbody>
</table>

## Additional documentation

Tests in this feature area might have additional documentation, including prerequisites, setup, and troubleshooting information, that can be found in the following topic(s):

-   <xref rid="p_hlk_test.filter_driver_additional_documentation">Filter.Driver additional documentation</b>

## Running the test

For more information about requirements, see <xref rid="p_hlk_test.file_system_testing_prerequisites">File System Testing Prerequisites</b>.

In addition, this test requires extra hard drive space for four simple 2,048-megabyte (MB) partitions and two simple 1,024-MB partitions.

Before you run the test, you must add the following partitions to the test computer.

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
<tr class="odd">
<td><p>REFS</p></td>
<td><p>REFS</p></td>
<td><p>10240mb</p></td>
<td><p>o:</p></td>
</tr>
</tbody>
</table>

RunFileIO.cmd contains references to environment variables that you can change to allow for skipping of certain file systems.

## Troubleshooting

For generic troubleshooting of HLK test failures, see <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.

For general troubleshooting information, see <xref rid="p_hlk_test.troubleshooting_file_system_testing">Troubleshooting File System Testing</b>.

This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Lab Kit (Windows HLK) Studio.

The test uses Ntlog for logging the test results. Any failure is logged with the Win32® **GetLastError()** code.

## More information

## Command syntax

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
<td><p><strong>te FileIOTestA.dll /select:@Priority=0 /p:Volume=%DRIVE_LETTER%</strong></p></td>
<td><p></p></td>
</tr>
</tbody>
</table>

## File list

| File                | Location                                                                                                       |
|---------------------|----------------------------------------------------------------------------------------------------------------|
| AttachFilter.cmd    | \[WTT\\TestBinRoot\]\\NTTest\\BASETEST\\Core\_File\_Services\\FilterManager\\TestSuite\\Scripts\\FileSystems\\ |
| IsREFSSupported.vbs | \[WTT\\TestBinRoot\]\\NTTest\\BASETEST\\Core\_File\_Services\\FilterManager\\TestSuite\\Scripts\\FileSystems\\ |
| FioChild.exe        | \[WTT\\TestBinRoot\]\\base\\fs\\test\\Shared\_Tests\\FileIO2\\                                                 |
| FioDetours.dll      | \[WTT\\TestBinRoot\]\\base\\fs\\test\\Shared\_Tests\\FileIO2\\                                                 |
| FileIOTestA.dll     | \[WTT\\TestBinRoot\]\\base\\fs\\test\\Shared\_Tests\\FileIO2\\                                                 |
| FileIOTestW.dll     | \[WTT\\TestBinRoot\]\\base\\fs\\test\\Shared\_Tests\\FileIO2\\                                                 |
| ReadAsync.exe       | \[WTT\\TestBinRoot\]\\base\\fs\\test\\Shared\_Tests\\FileIO2\\                                                 |
| WriteAsync.exe      | \[WTT\\TestBinRoot\]\\base\\fs\\test\\Shared\_Tests\\FileIO2\\                                                 |
| RunFileIo2.cmd      | \[WTT\\TestBinRoot\]\\base\\fs\\test\\Core\_File\_Services\\FilterManager\\TestSuite\\Scripts\\FileSystems\\   |
| WrapFileIO2.cmd     | \[WTT\\TestBinRoot\]\\base\\fs\\test\\Core\_File\_Services\\FilterManager\\TestSuite\\Scripts\\FileSystems\\   |

## Parameters

| Parameter name                                     | Parameter description                                                                                |
|----------------------------------------------------|------------------------------------------------------------------------------------------------------|
| <mark type="bullet_intro">NTFS\_DRIVE\_LETTER</b>  | The drive letter for the NTFS volume that the File IO 2 test will run on.                            |
| <mark type="bullet_intro">CNTFS\_DRIVE\_LETTER</b> | The drive letter for the Compressed NTFS volume that the File IO 2 test will run on.                 |
| <mark type="bullet_intro">FAT\_DRIVE\_LETTER</b>   | The drive letter for the FAT volume that the File IO 2 test will run on.                             |
| <mark type="bullet_intro">FAT32\_DRIVE\_LETTER</b> | The drive letter for the FAT32 volume that the FileIO 2 test will run on.                            |
| <mark type="bullet_intro">EXFAT\_DRIVE\_LETTER</b> | The drive letter for the ExFat volume that the File IO 2 test will run on.                           |
| <mark type="bullet_intro">UDF\_DRIVE\_LETTER</b>   | The drive letter for the UDF volume that the File IO 2 test will run on.                             |
| <mark type="bullet_intro">RUN\_MODE</b>            | Leave this on BVT.                                                                                   |
| <mark type="bullet_intro">LLU\_LclAdminUser</b>    | LLU for execute                                                                                      |
| <mark type="bullet_intro">LLU\_NetAccessOnly</b>   | LLU for copy                                                                                         |
| <mark type="bullet_intro">REFS\_DRIVE\_LETTER</b>  | The drive letter for the ReFS volume that the test will run on. Enter NONE if not &gt;= Win8 Server. |





