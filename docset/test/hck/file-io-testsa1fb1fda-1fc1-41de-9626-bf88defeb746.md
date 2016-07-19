---
author: joshbax-msft
title: File IO Tests
description: File IO Tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 35b2ea51-1771-4a1b-bef8-9027d2dbb957
---

# File IO Tests


This automated test verifies basic file I/O on the driver stack.

You can use the test to verify the following information:

-   The context in which the test or variation ran (for example, x86, file system, local/remote, language, build number)

-   Pass, fail, and variation count numbers

-   If failed, information that can help determine the cause of failure

The test can run the following isolated variations:

-   To run the FileIO regression test, at a command prompt, type **Runkarr x: e:** (where *x* is the test drive and *e* is a local auxiliary drive, and both are not the system drives).

-   To run the FileIO build verification test (BVT) with more debug information, at a command prompt, type **Runkarr x: e: -bvt:f -v** (where *x* is the test drive and *e* is a local auxiliary drive, and both are not the system drives).

-   To run an individual variation, at a command prompt, type **Runkarr x: e: -t 1,2,3,5:10,12** (where *x* is the test drive and *e* is a local auxiliary drive, and both are not the system drives). This runs variations 1, 2, 3, 5, 10, and 12.

-   To turn on debugging information, at a command prompt, type **Runkarr x: e: -t 1,2,3,5:10,12 -v** (where *x* is the test drive and *e* is a local auxiliary drive, and both are not the system drives).

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
<td><p>~300 minutes</p></td>
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


For more information about requirements, see [File System Testing Prerequisites](file-system-testing-prerequisites.md).

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


For general troubleshooting information, see [Troubleshooting File System Testing](troubleshooting-file-system-testing.md).

This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

The test uses Ntlog for logging the test results. Any failure is logged with the Win32® **GetLastError()** code.

To interpret the log, follow these steps:

1.  +Call+ 291; Call 1 to AKRNFIL2 SdkCompletionPorts (test \#131); verlevel=3 pcnt=100 seed=19890

2.  +TEST\_PARAMETERS+ NO Parameters

3.  +Test\_Case+ 6 SdkCompletionPorts: TestCancelAsyncFileIo I/O.

4.  +VER\_RESULT+ SEV2 ConfirmLock: ReadFile failed when it should not. nBytesRead: 0 bRet: 0 GLE=33.

5.  +VER\_RESULT+ SEV2 CheckCompletionIo: Failed in ConfirmLock.

6.  Search for variations that are marked as **BLOCK** or **SEV**.

7.  Determine the API that failed (for example, **ReadFile**).

8.  Determine the parameters that were passed into the API, if any.

9.  Determine the returned value of the API (for example, **bRet: 0**).

10. Determine the value of **GetLastError()** (for example, **GLE=33**). This will provide useful information about what is wrong, such as ERROR\_INVALID\_HANDLE or ERROR\_NETNAME\_DELETED.

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
<td><p>Ntlog.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\CommonTest\Ntlog\</p></td>
</tr>
<tr class="even">
<td><p>Ntlogger.ini</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\CommonTest\Ntlog\</p></td>
</tr>
<tr class="odd">
<td><p>Betacomp.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\CommonTest\Rats\</p></td>
</tr>
<tr class="even">
<td><p>Dups.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\CommonTest\Rats\</p></td>
</tr>
<tr class="odd">
<td><p>Entry.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\CommonTest\Rats\</p></td>
</tr>
<tr class="even">
<td><p>GetDoc.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\CommonTest\Rats\</p></td>
</tr>
<tr class="odd">
<td><p>LOG.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\CommonTest\Rats\</p></td>
</tr>
<tr class="even">
<td><p>Parse.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\CommonTest\Rats\</p></td>
</tr>
<tr class="odd">
<td><p>Rats.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\CommonTest\Rats\</p></td>
</tr>
<tr class="even">
<td><p>Rats.ini</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\CommonTest\Rats\</p></td>
</tr>
<tr class="odd">
<td><p>Ratsutil.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\CommonTest\Rats\</p></td>
</tr>
<tr class="even">
<td><p>Ratsshr.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\CommonTest\Rats\</p></td>
</tr>
<tr class="odd">
<td><p>RATS_ENG.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\CommonTest\Rats\</p></td>
</tr>
<tr class="even">
<td><p>Shrmem.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\CommonTest\Rats\</p></td>
</tr>
<tr class="odd">
<td><p>Statw32.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\CommonTest\Rats\</p></td>
</tr>
<tr class="even">
<td><p>Timerw32.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\CommonTest\Rats\</p></td>
</tr>
<tr class="odd">
<td><p>Tshrmem.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\CommonTest\Rats\</p></td>
</tr>
<tr class="even">
<td><p>Wrap0.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\CommonTest\Rats\</p></td>
</tr>
<tr class="odd">
<td><p>Wrap1.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\CommonTest\Rats\</p></td>
</tr>
<tr class="even">
<td><p>Wrap3.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\CommonTest\Rats\</p></td>
</tr>
<tr class="odd">
<td><p>Wrapinline.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\\CommonTest\Rats\</p></td>
</tr>
<tr class="even">
<td><p>Wrapit.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\CommonTest\Rats\</p></td>
</tr>
<tr class="odd">
<td><p>Wtscript.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\CommonTest\Rats\</p></td>
</tr>
<tr class="even">
<td><p>Dbcsstrs.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\NTTest\CommonTest\dbcsstrs\</p></td>
</tr>
<tr class="odd">
<td><p>Detoured.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BaseTest\Core_File_Services\Shared_Tools\Detours\</p></td>
</tr>
<tr class="even">
<td><p>Rats2wtt.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BaseTest\Core_File_Services\Shared_Tools\Detours\</p></td>
</tr>
<tr class="odd">
<td><p>Setdll.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\\BaseTest\Core_File_Services\Shared_Tools\Detours\</p></td>
</tr>
<tr class="even">
<td><p>Withdll.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BaseTest\Core_File_Services\Shared_Tools\Detours\</p></td>
</tr>
<tr class="odd">
<td><p>AKRNFIL2.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Attribex.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Attribs.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Cdsetup.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Charmap.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Chinf.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Chldread.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Chldsize.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Copyfile.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Crdirex.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Crutil.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Cutil.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Delf.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Dirent.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Eautil.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Expath.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Findex.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Fssortkey.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Fstype.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Genrdwr.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Getdrive.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Getdtype.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Getfree.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Getftype.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Getinf.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Getres.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Getset.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Getshort.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Getsize.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Gettime.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Getvol.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Growpage.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Longname.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Lotsdir.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Lotsfile.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Names.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Parselog.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Rasync.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Readch.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Rother.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Runiorat.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Runkarr.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Setfp.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Settime.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Setvol.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Srchpath.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Tempfile.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Wasync.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Wother.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="even">
<td><p>Writech.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\[WTT\Processor]\</p></td>
</tr>
<tr class="odd">
<td><p>Allwin32filbvt.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Cdfs.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Cdfs.nam</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Cdhct.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Cdrom1.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Davbvt.rat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Example.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Fat.nam</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Fatlong.nam</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Filcdfs.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Filcdfs.rat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Fildblsp.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Fildblsp.rat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Fileio.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Fileio.rat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Fileio_2.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Filesysdrives.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Filesysdrives.vbs</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>File_io.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>File_iog.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Filidw.rat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Filsdk.rat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Filst1.rat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Hctcd.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Hctcd.rat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Hctdrive.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Hctdrive.rat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Hctflop.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Hctflop.rat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Hcttest.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Hlink.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Hlinkidw.rat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Hlinksdk.rat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Hlinkst1.rat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Hpfs.nam</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Maphctc.rat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Maphctd.rat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Maphcte.rat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Maphctf.rat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Maphctg.rat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Maphcth.rat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Maphcti.rat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Netware.nam</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Nfs.nam</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Nfsbvt.rat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Nfsio.rat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Novell.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Ntfs.nam</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Nwclong.nam</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Nwcompat.nam</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Recomp.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Runtestfilbvtllu.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Run_fileio_bvt_new.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Sc-rats.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>Setfio.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="even">
<td><p>Trydrive.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BVTBIN\Win32FilBVT\common\</p></td>
</tr>
<tr class="odd">
<td><p>RunFileIO.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BASETEST\Core_File_Services\FilterManager\TestSuite\Scripts\FileSystems\</p></td>
</tr>
<tr class="even">
<td><p>WrapFileIO.cmd</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\BASETEST\Core_File_Services\FilterManager\TestSuite\Scripts\FileSystems</p></td>
</tr>
<tr class="odd">
<td><p>filbvt.rat</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\BVTBIN\Win32FilBVT\common</p></td>
</tr>
<tr class="even">
<td><p>IsREFSSupported.vbs</p></td>
<td><p>[WTT\TestBinRoot]\NTTest\BASETEST\Core_File_Services\FilterManager\TestSuite\Scripts\FileSystems</p></td>
</tr>
</tbody>
</table>

 

 

 






