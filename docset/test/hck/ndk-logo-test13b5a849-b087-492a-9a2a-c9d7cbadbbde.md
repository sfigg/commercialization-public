---
author: joshbax-msft
title: NDK Logo Test
description: NDK Logo Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a6cad844-055a-4010-85f3-a6e308d94a3d
---

# NDK Logo Test


This test verifies NDK (KRDMA) functionality on Ethernet devices.

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


Before you run the test, complete the test setup as described in the test requirements: [Router Testing (Non-wireless) Prerequisites](router-testing--non-wireless--prerequisites.md)

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Network Testing](troubleshooting-devicenetwork-testing.md).

## More information


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
<td><p>TestDirectory</p></td>
<td><p>The location of the test directory.</p>
<p>Example: [SystemDrive]\iketest</p></td>
</tr>
</tbody>
</table>

 

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
<td><p>LocalTestIpv4Address</p></td>
<td><p>The local IPv4 address.</p></td>
</tr>
<tr class="even">
<td><p>RemoteSupportIpv4Address</p></td>
<td><p>The remote IPv4 address.</p></td>
</tr>
<tr class="odd">
<td><p>LocalTestIpv6Address</p></td>
<td><p>The local IPv6 address.</p></td>
</tr>
<tr class="even">
<td><p>RemoteSupportIpv6Address</p></td>
<td><p>The remote IPv6 address.</p></td>
</tr>
<tr class="odd">
<td><p>LocalMessageIpAddress</p></td>
<td><p>The local IP address message.</p></td>
</tr>
<tr class="even">
<td><p>RemoteMessageIpAddress</p></td>
<td><p>The remote IP address message.</p></td>
</tr>
<tr class="odd">
<td><p>LoggingLevel</p></td>
<td><p>The logging level.</p>
<p>Example: 0</p></td>
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
<td><p><strong>NdkLogoTests.exe -localIpv4Address [LocalTestIpv4Address] -remoteIpv4Address [RemoteSupportIpv4Address] -localIpv6Address [LocalTestIpv6Address] -remoteIpv6Address [RemoteSupportIpv6Address] -localSupportIpAddress [LocalMessageIpAddress] -remoteSupportIpAddress [RemoteMessageIpAddress] -loggingLevel [LoggingLevel] -wttlog -test \ -priority 1 -run</strong></p></td>
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
<td><p>ndkLogoTests.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\nettest\transports\netiotest\</p></td>
</tr>
<tr class="even">
<td><p>ndktestclient.sys</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\nettest\transports\netiotest\</p></td>
</tr>
<tr class="odd">
<td><p>ntlog.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\commontest\</p></td>
</tr>
<tr class="even">
<td><p>ndktestclient.sys</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\nettest\transports\netiotest\</p></td>
</tr>
<tr class="odd">
<td><p>ndkLogoRemoteServer.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\nettest\transports\rdma\</p></td>
</tr>
</tbody>
</table>

 

 

 






