---
author: joshbax-msft
title: Installable File System Filter Test
description: Installable File System Filter Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f5a69ce5-8cf5-4f88-a439-7b529fc0c571
---

# Installable File System Filter Test


This automated test verifies whether the behavior in the file system stack is consistent with the typical behavior of a file system. This is a regression test suite.

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
<td><p>~120 minutes</p></td>
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


If you are running this test on Windows 8, it must be the Professional or Ultimate version of Windows 8; otherwise, the test may fail.

In addition, this test requires extra hard drive space for four simple 2,048-megabyte (MB) partitions and two simple 1,024-MB partitions.

Use a system with 2 local disks. One disk is the boot disk with the system partition, while a completely separate disk is partitioned according to the test requirements.

For more information about requirements, see [File System Testing Prerequisites](file-system-testing-prerequisites.md).

Before you run the test, add the following partitions to the Windows environment.

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

 

If the test system includes a policy of locking out new accounts, this test might return Blocked on the multiprocess variations if the local computer account Ifstest is locked out. You can then use Account Manager to unlock the account and rerun the suite. RunIFStest.cmd contains references to environment variables that you can change to allow for skipping of certain file systems.

RunIFStest.cmd contains references to environment variables that can be changed to allow for skipping of certain file systems.

## Troubleshooting


The test creates a temporary local computer account (Ifstest). It also expects to have additional partitioned volumes. Use a tool such as Minispy to see which I/O request packets (IRPs) are traveling on the file system stack. Compare passing (default Windows installations) with installations, including any failing driver. For documentation about the test variations, see [IFS Test](http://go.microsoft.com/fwlink/?LinkId=236053) in the MSDN® Library.

For general troubleshooting information, see [Troubleshooting File System Testing](troubleshooting-file-system-testing.md).

This test returns Pass or Fail. The test uses Ntlog for logging the test results. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

## More Information


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
<td><p>IfsTest.exe</p></td>
<td><p>g Virus /n .\Ifstest-Local-NtfsResults.log /N 356789AB /T /p /m /E /j /r c: -d \Ntfs -a \datacoh.exe /u ifstest /U *rw53w5</p></td>
</tr>
<tr class="even">
<td><p>-g &lt;suitename&gt;</p></td>
<td><p>Do not run &lt;suitename&gt;</p></td>
</tr>
<tr class="odd">
<td><p>/n &lt;logname&gt;</p></td>
<td><p>Create a long of name &lt;logname&gt;</p></td>
</tr>
<tr class="even">
<td><p>/N</p></td>
<td><p>Specify NTLOG levels. If not included, then the GUI dialog box appears. This is useful in a batch mode run of the test</p>
<p>NTLOG Levels</p>
<p>1 ABORT</p>
<p>2 SEV1</p>
<p>3 SEV2</p>
<p>4 SEV3</p>
<p>5 WARN</p>
<p>6 PASS</p>
<p>7 BLOCK</p>
<p>8 INFO</p>
<p>9 SYSTEM INFO</p>
<p>A DEBUG INFO</p>
<p>B TEST</p></td>
</tr>
<tr class="odd">
<td><p>/T</p></td>
<td><p>Enable trace of tests being done</p></td>
</tr>
<tr class="even">
<td><p>/p</p></td>
<td><p>Enable pagefile testing in CreatePagingFileTest.</p></td>
</tr>
<tr class="odd">
<td><p>/m</p></td>
<td><p>Enable dirty bit testing in MountedDirtyTest</p></td>
</tr>
<tr class="even">
<td><p>/E</p></td>
<td><p>Enable AllowExtendedDASDTest</p></td>
</tr>
<tr class="odd">
<td><p>/j</p></td>
<td><p>Enable support for tests involving the change journal.</p></td>
</tr>
<tr class="even">
<td><p>/r &lt;volumeletter&gt;</p></td>
<td><p>Path to second volume required in certain tests.</p></td>
</tr>
<tr class="odd">
<td><p>-d &lt;&gt;</p></td>
<td><p>System Path to FSD device object in FileSystemDeviceOpenTest.</p></td>
</tr>
<tr class="even">
<td><p>-a</p></td>
<td><p>Provide path to executable</p></td>
</tr>
<tr class="odd">
<td><p>/u</p></td>
<td><p>Username for test account</p></td>
</tr>
<tr class="even">
<td><p>/U</p></td>
<td><p>Password for test account</p></td>
</tr>
<tr class="odd">
<td><p>/t &lt;variation&gt;</p></td>
<td><p>Execute only one named variation</p></td>
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
<td><p>ntlog.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\CommonTest\Ntlog\</p></td>
</tr>
<tr class="even">
<td><p>ntlogger.ini</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\CommonTest\Ntlog\</p></td>
</tr>
<tr class="odd">
<td><p>chg.exe</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>chgfile.exe</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>chgnotif.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>cleanupfiles.cmd</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>closedel.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>createkc.exe</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>datacoh.exe</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>decrypt.exe</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>defrag.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>devctrl.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>dirinfo.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>dirpt.exe</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>eainfo.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>encrypt.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>encryptvirus.exe</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>enum.exe</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>esecurit.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>estream.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>fileinfo.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>filelock.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>forcedis.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>fsctlgen.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>fsctlvol.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>IFSCFG.exe</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>ifsmsg.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>ifstest-av.cmd</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>ifstest-av_wdk.cmd</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>ifstest.cmd</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>ifstest.exe</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>ifstestcleanup.cmd</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>ifstest_storagelogo.cmd</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>ifstest_wdk.cmd</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>ishell.exe</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>linkpt.exe</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>linktrak.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>mfile.exe</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>mountpt.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>objectid.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>opcreatg.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>opcreatp.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>oplocks.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>quotas.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>readwr.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>reparspt.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>ResetAutoLogon.vbs</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>restoresystem.cmd</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>seccache.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>securit.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>setupsystem.cmd</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>skel.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>sparse.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>virus.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>volinfo.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>writevirus.exe</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>xchg.exe</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>guidefile.dat</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="odd">
<td><p>virusfile1.evf</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\virusfiles\</p></td>
</tr>
<tr class="even">
<td><p>virusfile2.evf</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\virusfiles\</p></td>
</tr>
<tr class="odd">
<td><p>virusfile3.evf</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\virusfiles\</p></td>
</tr>
<tr class="even">
<td><p>virusfile4.evf</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\virusfiles\</p></td>
</tr>
<tr class="odd">
<td><p>createwttlog.vbs</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\virusfiles\</p></td>
</tr>
<tr class="even">
<td><p>chgjourn.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\LFS_Automation\common\</p></td>
</tr>
<tr class="odd">
<td><p>fbslog.dll</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\IFS_TEST_KIT\</p></td>
</tr>
<tr class="even">
<td><p>RunIFSTests.cmd</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\basetest\core_file_services\shared_libs\fbslog\</p></td>
</tr>
<tr class="odd">
<td><p>WrapIFSTests.cmd</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\BASETEST\Core_File_Services\FilterManager\TestSuite\Scripts\FileSystems\</p></td>
</tr>
<tr class="even">
<td><p>attachfilter.cmd</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\BASETEST\Core_File_Services\FilterManager\TestSuite\Scripts\FileSystems\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Installable%20File%20System%20Filter%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




