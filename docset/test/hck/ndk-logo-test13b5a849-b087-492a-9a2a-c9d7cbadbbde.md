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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20NDK%20Logo%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




