---
author: joshbax-msft
title: CopyFile Server to Client LOGO test
description: CopyFile Server to Client LOGO test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9058b74e-36fe-45cd-9d29-88c212d09e57
---

# CopyFile Server to Client LOGO test


This is an SMB CopyFile test.

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
<td><p>RemoteSupportIpv4Address</p></td>
<td><p>The remote IPv4 address.</p></td>
</tr>
<tr class="even">
<td><p>CONNECTIONS_PER_INTERFACE</p></td>
<td><p>The number of connections per interface.</p></td>
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
<td><p><strong>CopyFileTests.exe -src \\[RemoteSupportIpv4Address]\copyfileshare -des [SystemDrive]\smbtest\localdir -regression</strong></p></td>
<td><p>Runs the test by copying files to the remote share.</p></td>
</tr>
<tr class="even">
<td><p><strong>powershell .\VerifyRDMA.ps1 [CONNECTIONS_PER_INTERFACE]</strong></p></td>
<td><p>Verifies a KRDMA connection.</p></td>
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
<td><p>CopyFileTests.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\basetest\core_file_services\smb\ndklogotests\</p></td>
</tr>
<tr class="even">
<td><p>VerifyRDMA.ps1</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\basetest\core_file_services\smb\ndklogotests\</p></td>
</tr>
</tbody>
</table>

 

 

 






