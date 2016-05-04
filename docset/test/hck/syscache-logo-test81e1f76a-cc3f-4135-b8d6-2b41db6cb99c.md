---
author: joshbax-msft
title: SysCache LOGO test
description: SysCache LOGO test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 95f945a7-2dd2-4ecf-bdb3-89612cfde319
---

# SysCache LOGO test


This is an SMB FileIO test.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.KRDMA.KRDMA</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~150 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [LAN Testing Prerequisites](lan-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting LAN Testing](troubleshooting-lan-testing.md).

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
<td><p>REMOTE_DRIVE</p></td>
<td><p>The value of the remote drive letter.</p>
<p>Example: R:</p></td>
</tr>
<tr class="even">
<td><p>LENGTH</p></td>
<td><p>The length.</p>
<p>Example: 30</p></td>
</tr>
<tr class="odd">
<td><p>LOG_FILE</p></td>
<td><p>The name of the log file.</p>
<p>Example: syscache.log</p></td>
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
<td><p><strong>readwrit.exe -l [REMOTE_DRIVE] -n [LENGTH] -c -S -N -B -v 2 /logfile [LOG_FILE] /refresh</strong></p></td>
<td><p>Runs the test.</p></td>
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
<td><p>readwrit.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\basetest\core_file_services\cachemgr\</p></td>
</tr>
<tr class="even">
<td><p>StressLog.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\basetest\core_file_services\shared_libs\</p></td>
</tr>
<tr class="odd">
<td><p>ntlog.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\commontest\ntlog\</p></td>
</tr>
<tr class="even">
<td><p>VerifyRDMA.ps1</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\basetest\core_file_services\smb\ndklogotests\</p></td>
</tr>
</tbody>
</table>

 

 

 






