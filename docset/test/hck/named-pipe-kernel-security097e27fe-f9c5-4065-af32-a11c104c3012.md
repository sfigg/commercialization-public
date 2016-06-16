---
author: joshbax-msft
title: Named Pipe Kernel Security
description: Named Pipe Kernel Security
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 57a620d7-55bd-479b-811d-0b0312c8c8ba
---

# Named Pipe Kernel Security


This automated test verifies that only kernel-mode requestors can invoke **SCTL\_PIPE\_INTERNAL\_TRANSCEIVE**, because this command can read kernel memory.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Filter.Driver.AntiVirus.MiniFilter Filter.Driver.AntiVirus.NamedPipeAndMailSlots Filter.Driver.FileSystem.MiniFilter Filter.Driver.FileSystem.NamedPipeAndMailSlots</p>
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
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [File System Testing Prerequisites](file-system-testing-prerequisites.md).

To run this test, follow these steps:

1.  Copy the test binaries that are listed in the **File List** section locally.

2.  Run the following command: **npfsregr.exe**

3.  The expected Pass count is 1. Inspect the log file for the presence of +SEV error tags. If you do not find any instances of this tag, the test has passed.

## Troubleshooting


For troubleshooting information, see [Troubleshooting File System Testing](troubleshooting-file-system-testing.md).

This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

## More information


### Command syntax

This test does not accept command-line parameters.

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
<td><p>Npfsregr.exe</p></td>
<td><p>[WTT\TestBinRoot]\NTTEST\BASETEST\kernel\misc\npfsregr.exe</p></td>
</tr>
<tr class="even">
<td><p>Ntlog.dll</p></td>
<td><p>[WTT\OsBinRoot]\ddk_flat\DTM\tests\ntlog\ntlog.dll</p></td>
</tr>
<tr class="odd">
<td><p>Ntlogger.ini</p></td>
<td><p>[WTT\OsBinRoot]\ddk_flat\DTM\tests\ntlog\ntlogger.ini</p></td>
</tr>
</tbody>
</table>

 

 

 






