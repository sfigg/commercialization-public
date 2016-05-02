---
author: joshbax-msft
title: Syscache (SYSTEM)
description: Syscache (SYSTEM)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3681cf08-28b6-4360-8e25-86bd63a45697
---

# Syscache (SYSTEM)


This is a data validation test that runs on the system volume. It writes to a file and verifies that the data written is read back correctly. It can detect corruptions caused by anything in the path from firmware, drivers, file system, memory, etc. It uses standard Win32 file system and memory management APIs to read and write data from the file.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.StorageAndBoot.BootPerformance</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~15 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

When the test fails, the log contains all of the information you need to analyze the failure. Look for the following information to reproduce the error:

-   The "Write Attribute". Look up the table of write attributes to find how the data was written to the file.

-   The "Read Attribute". Look up the table of read attributes to find out how the data was read back from the file.

-   The offset at which the error occurred.

-   The region of the file in which the error occurred. The test typically writes entire region using a single write (with the exception of the FILE\_FLAG\_SECTOR\_CHUNKS option, where it writes one sector at a time).

## More information


Syscache opens a file with a certain flag/attribute and writes to the file. Each chosen flag may span several runs on the file.

A run is defined as a set of the following sequence:

-   Create/open a file.

-   Truncate the file size to 0.

-   Write to the file.

-   Close the file.

-   Open the file again.

-   Read the file.

-   Verify the contents of the file.

-   Close the file.

There is a set of zero and non-zero regions in the file. Zero regions are areas in the file where no data was written. Non-zero regions are areas in the file where data was written. The pattern is a DWORD of the format RRPPPPPP. The top two bytes are the run number, and the next 3 bytes are the one's complement of the offset of this DWORD in the file.

The following attributes are used for writing a file:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Write attribute</th>
<th>Explanation</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>FILE_ATTRIBUTE_NORMAL</p></td>
<td><p>See [CreateFile function](http://msdn.microsoft.com/library/windows/desktop/aa363858.aspx).</p></td>
</tr>
<tr class="even">
<td><p>FILE_FLAG_SEQUENTIAL_SCAN</p></td>
<td><p>See [CreateFile function](http://msdn.microsoft.com/library/windows/desktop/aa363858.aspx).</p></td>
</tr>
<tr class="odd">
<td><p>FILE_FLAG_NO_BUFFERING</p></td>
<td><p>See [CreateFile function](http://msdn.microsoft.com/library/windows/desktop/aa363858.aspx).</p></td>
</tr>
<tr class="even">
<td><p>FILE_FLAG_WRITE_THROUGH</p></td>
<td><p>See [CreateFile function](http://msdn.microsoft.com/library/windows/desktop/aa363858.aspx).</p></td>
</tr>
<tr class="odd">
<td><p>FILE_ATTRIBUTE_TEMPORARY</p></td>
<td><p>See [CreateFile function](http://msdn.microsoft.com/library/windows/desktop/aa363858.aspx).</p></td>
</tr>
<tr class="even">
<td><p>NO_BUFFERING | WRITE_THROUGH</p></td>
<td><p>See [CreateFile function](http://msdn.microsoft.com/library/windows/desktop/aa363858.aspx).</p></td>
</tr>
<tr class="odd">
<td><p>FILE_ATTRIBUTE_SPARSE_FILE</p></td>
<td><p>The file is set to sparse.</p></td>
</tr>
<tr class="even">
<td><p>NORMAL APPEND_WRITE</p></td>
<td><p>Same as FILE_ATTRIBUTE_NORMAL; closes and reopening the file per write and appending the next region.</p></td>
</tr>
<tr class="odd">
<td><p>FILE_FLAG_SECTOR_CHUNKS</p></td>
<td><p>Same as FILE_FLAG_NO_BUFFERING, data is written one sector at a time.</p></td>
</tr>
<tr class="even">
<td><p>FILE_MAP</p></td>
<td><p>Same as FILE_ATTRIBUTE_NORMAL, data is written via memory mapping.</p></td>
</tr>
<tr class="odd">
<td><p>FILE_FLAG_OVEREXTEND</p></td>
<td><p>Same as FILE_ATTRIBUTE_NORMAL, data is written via memory mapping</p></td>
</tr>
</tbody>
</table>

 

The following attributes are used for reading from the file:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Read attribute</th>
<th>Explanation</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>FILE_MAP</p></td>
<td><p>FILE_ATTRIBUTE_NORMAL, data is read via memory mapping</p></td>
</tr>
<tr class="even">
<td><p>NO_BUFFERING</p></td>
<td><p>FILE_FLAG_NO_BUFFERING</p></td>
</tr>
<tr class="odd">
<td><p>NORMAL</p></td>
<td><p>FILE_ATTRIBUTE_NORMAL</p></td>
</tr>
<tr class="even">
<td><p>RANDOM_ACCESS</p></td>
<td><p>FILE_FLAG_RANDOM_ACCESS</p></td>
</tr>
<tr class="odd">
<td><p>SEQUENTIAL_SCAN</p></td>
<td><p>FILE_FLAG_SEQUENTIAL_SCAN</p></td>
</tr>
<tr class="even">
<td><p>TEMPORARY</p></td>
<td><p>FILE_FLAG_TEMPORARY</p></td>
</tr>
<tr class="odd">
<td><p>WRITE_THROUGH</p></td>
<td><p>FILE_FLAG_WRITE_THROUGH</p></td>
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
<td><p><strong>readwrit.exe -n 10 -d /logfile Syscache.log</strong></p></td>
<td><p>Runs the test.</p></td>
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
<td><p>readwrit.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\NTTest\BASETEST\core_file_services\cachemgr\</p></td>
</tr>
<tr class="even">
<td><p>ntlog.dll</p></td>
<td><p><em>&lt;[osbinroot]&gt;</em>\NTTest\CommonTest\NtLog\</p></td>
</tr>
<tr class="odd">
<td><p>ntlogger.ini</p></td>
<td><p><em>&lt;[osbinroot]&gt;</em>\NTTest\CommonTest\NtLog\</p></td>
</tr>
<tr class="even">
<td><p>stresslog.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\NTTest\basetest\core_file_services\shared_libs\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Syscache%20%28SYSTEM%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




