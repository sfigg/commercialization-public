---
author: joshbax-msft
title: DMR use of the protocolInfo field (PROT-01 PROT-05)
description: DMR use of the protocolInfo field (PROT-01 PROT-05)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 55b484f7-d2cd-40c1-b3e8-48442b11bfd4
---

# DMR use of the protocolInfo field (PROT-01 PROT-05)


This test verifies that the digital media renderer (DMR) is capable of playing content encoded according to all DLNA Profile IDs it exposes in SinkProtocolInfo (PROT-01), and is capable of playing content encoded according to all Profile IDs specified in the “Table PROT” in the Device.Media.DMR.Base.ProtocolInfoField requirement for all MIME types it exposes in SinkProtocolInfo without a Profile ID (PROT-05), as specified below.

**PROT-01**

A DMR that exposes in SinkProtocolInfo a protocolInfo value with a MIME Type and a DLNA Profile ID must be able to play content encoded according to the DLNA specifications for the Profile ID.

**PROT-05**

A DMR that exposes in SinkProtocolInfo a protocolInfo value with a MIME Type but without a DLNA Profile ID must be able to play content as specified in “Table PROT: List of supported protocols associated with MIME types (for DMR devices that advertise a protocolInfo value with a MIME type but without a DLNA Profile ID)” in the Device.Media.DMR.Base.ProtocolInfoField.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Media.DMR.Base.ProtocolInfoField</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~12 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Digital Media Renderer Testing Prerequisites](digital-media-renderer-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Media Testing](troubleshooting-devicemedia-testing.md).

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
<td><p>WDKData_DeviceUUID</p></td>
<td><p>The Device ID</p></td>
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
<td><p><strong>NetMediaLogoTests.exe NETMEDIA_0025 /dmrID=[Query WDKData_DeviceUUID]</strong></p></td>
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
<td><p>NetMediaLogoTests.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\sharing\netmedialogotests</p></td>
</tr>
</tbody>
</table>

 

 

 






