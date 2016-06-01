---
author: joshbax-msft
title: DMR supports seek (SEEK-01 SEEK-05 SEEK-10 SEEK-15)
description: DMR supports seek (SEEK-01 SEEK-05 SEEK-10 SEEK-15)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9c5467e7-f995-4c0d-a8f0-3b919436e7e0
---

# DMR supports seek (SEEK-01 SEEK-05 SEEK-10 SEEK-15)


This test verifies the digital media renderer (DMR) supports time-seek operations (SEEK-01), advertises time-seek capabilities in the CurrentTransportActions variable (SEEK-05), implements time-seek for media resources which support time-range requests (SEEK-10), and resumes playback at the target playtime when it receives a Seek() action (SEEK-15), as specified below.

**SEEK-01** (Applies to A/V DMR and audio DMR)

A DMR device must support seek operations using the method known as "controller-time seeking" defined in the DLNA Guidelines. Using this method, a controller sends Seek() actions with playtime values to the DMR.

**SEEK-05** (Applies to A/V DMR and audio DMR)

As defined in the DLNA Guidelines, a DMR device that supports controller-time seeking must include the keywords "Seek" and "X\_DLNA\_SeekTime" in the CurrentTransportActions state variable.

These keywords must be listed in the state variable while the DMR is in the PLAYING state or in the PAUSED\_PLAYBACK state. This requirement does not specify if seek operations are available when the DMR is in the STOPPED state.

**SEEK-10** (Applies to A/V DMR and audio DMR)

A DMR device must implement controller-time seek at least for the following types of media resources:

-   A/V or audio media resources for which a media server or push controller indicates support for time-range requests (a DLNA.ORG\_OP value of 10 or 11 indicates a resource for which the media server or push controller supports time-range requests)

A DMR device should implement controller-time seek for media resources beyond the type indicated in this requirement.

**SEEK-15** (Applies to A/V DMR and audio DMR)

-   If a DMR is in the PLAYING state and receives a Seek() action with a valid target playtime, the DMR must resume playback from the target playtime.

If a DMR is in the PAUSED\_PLAYBACK state and receives a Seek() action with a valid target playtime, the DMR must resume playback from the target playtime reposition the playback point to the received target value. However, the DMR must remain in the PAUSED\_PLAYBACK state.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Media.DMR.Base.SeekOperations</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~6 minutes</p></td>
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
<td><p><strong>NetMediaLogoTests.exe NETMEDIA_0070 /dmrID= [Query WDKData_DeviceUUID]</strong></p></td>
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
<td><p>NetMediaLogoTests.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\sharing\netmedialogotests\</p></td>
</tr>
</tbody>
</table>

 

 

 






