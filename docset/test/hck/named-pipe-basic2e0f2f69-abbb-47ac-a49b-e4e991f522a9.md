---
author: joshbax-msft
title: Named Pipe Basic
description: Named Pipe Basic
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f597f1a3-b443-4f15-939d-8364f04a18ac
---

# Named Pipe Basic


This automated test verifies the functionality of named pipes. It includes the following tests:

-   CreateNamedPipe tests

-   CallNamedPipe tests

-   TransactNamedPipe tests

-   TransactNamedPipe tests

-   WaitNamedPipe tests

-   Open Mode tests

-   Overlapped tests

-   Read/Write tests

-   Flush Pipe tests

This test consists of a client binary (Npclient.exe) and a server binary (Npserver.exe). You can run these on the same computer as the client image or on a separate computer.

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

2.  Start the server by using the following command: **npserver.exe**

3.  Start the client by using the following command: **npclient.exe \\\\***&lt;%computername%&gt;*

    **Note**  
    You can run the test with the server and client processes running on two different computers. In this case, specify the server host name in place of *&lt;%computername%&gt;*.

     

4.  The expected Pass count is variable, but it should be around 1,010. Inspect the log file for the presence of +SEV error tags. If you do not find any instances of this tag, the test has passed.

## Troubleshooting


For troubleshooting information, see [Troubleshooting File System Testing](troubleshooting-file-system-testing.md).

This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

## More information


### Command syntax

This test accepts a single parameter that indicates the server host name.

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
<td><p>Npclient.exe</p></td>
<td><p>[WTT\TestBinRoot]\NTTEST\BASETEST\kernel\misc\npclient.exe</p></td>
</tr>
<tr class="even">
<td><p>Npserver.exe</p></td>
<td><p>[WTT\TestBinRoot]\NTTEST\BASETEST\kernel\misc\npserver.exe</p></td>
</tr>
<tr class="odd">
<td><p>Namedpipe.ini</p></td>
<td><p>[WTT\TestBinRoot]\NTTEST\BASETEST\kernel\misc\namedpipe.ini</p></td>
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

 

 

 






