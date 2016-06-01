---
author: joshbax-msft
title: SD Paging Tests
description: SD Paging Tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d797cb1c-78b4-4ad8-a4dd-982e8a79e6dd
---

# SD Paging Tests


This test validates paging functionality by reading and writing a buffer of physical memory size under stress conditions.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.EMMC.BasicFunction</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~120 minutes</p></td>
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


Check the WTT Trace by performing the following steps:

-   View Task Log of Run SDBus Paging Test.

-   Open the log file SoCBootTest.wtl.

-   Check for messages that may solve the issue.

For additional troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

## More information


This test will enable paging with Driver Verifier’s Force Pending I/O Requests and Low Resources Simulation set. This will test two things:

-   The ability of a driver to accomplish forward progression (failed allocations simulate that) and to ensure that the driver cannot page itself out.

-   Force Pending I/O Requests will attempt to page the entire driver, thus producing an immediate stop error if the driver cannot protect against that.

### Command usage

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
<td><p><strong>SocBootTest.exe MemoryChokeIO</strong></p></td>
<td><p>Runs the MemoryChokeIO scenario of the SoCBootTest.</p></td>
</tr>
<tr class="even">
<td><p><strong>SocBootTest.exe DiskStress</strong></p></td>
<td><p>Runs the DiskStress scenario of the SoCBootTest.</p></td>
</tr>
<tr class="odd">
<td><p><strong>SocBootTest.exe MemoryStress</strong></p></td>
<td><p>Runs the MemoryStress scenario of the SoCBootTest.</p></td>
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
<th>Command option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>MemoryChokeIO</p></td>
<td><p>Runs MemoryChoke and BigFile in parallel.</p></td>
</tr>
<tr class="even">
<td><p>DiskStress</p></td>
<td><p>Runs DiskStress.</p></td>
</tr>
<tr class="odd">
<td><p>MemoryStress</p></td>
<td><p>Runs MemoryStress.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test, type **/?**.

 

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
<td><p>autocom.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\</p></td>
</tr>
<tr class="even">
<td><p>autocomManaged.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\managed\</p></td>
</tr>
<tr class="odd">
<td><p>BigFile.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\disk\</p></td>
</tr>
<tr class="even">
<td><p>DiskStress.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\sd\SDBoot\</p></td>
</tr>
<tr class="odd">
<td><p>MemoryChoke.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\sd\SDBoot\</p></td>
</tr>
<tr class="even">
<td><p>MemoryStress.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\sd\SDBoot\</p></td>
</tr>
<tr class="odd">
<td><p>SocBootTest.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\sd\SDBoot\SoCBootTest\</p></td>
</tr>
<tr class="even">
<td><p>SDHelper.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\sd\Tools\SDHelper\</p></td>
</tr>
<tr class="odd">
<td><p>etwprocessor.dll</p></td>
<td><p><em>&lt;[taefbinroot]&gt;</em>\</p></td>
</tr>
<tr class="even">
<td><p>wex.common.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\wextest\cue\testexecution\wlk\</p></td>
</tr>
<tr class="odd">
<td><p>wex.communication.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\wextest\cue\testexecution\</p></td>
</tr>
<tr class="even">
<td><p>ntlog.dll</p></td>
<td><p><em>&lt;[osbinroot]&gt;</em>\NTTEST\commontest\ntlog\</p></td>
</tr>
<tr class="odd">
<td><p>ntlogger.ini</p></td>
<td><p><em>&lt;[osbinroot]&gt;</em>\NTTEST\commontest\ntlog\</p></td>
</tr>
<tr class="even">
<td><p>stresslog.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\basetest\core_file_services\shared_libs\</p></td>
</tr>
<tr class="odd">
<td><p>fbslog.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\basetest\core_file_services\shared_libs\fbslog\</p></td>
</tr>
<tr class="even">
<td><p>rapidfile.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\basetest\core_file_services\shared_tests\wdk\</p></td>
</tr>
</tbody>
</table>

 

 

 






