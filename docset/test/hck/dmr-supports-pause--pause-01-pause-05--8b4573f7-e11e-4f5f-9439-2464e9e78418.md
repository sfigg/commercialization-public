---
author: joshbax-msft
title: DMR supports pause (PAUSE-01 PAUSE-05)
description: DMR supports pause (PAUSE-01 PAUSE-05)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 422aeabf-210b-46f2-aa93-8ac2c303ec69
---

# DMR supports pause (PAUSE-01 PAUSE-05)


This test verifies that the digital media renderer (DMR) pauses the rendering process after receiving a Pause() action, reports back that the content was paused (PAUSE-01), and advertises the pause capability in the list of CurrentTransportActions while in the PLAYING state (PAUSE-05), as specified below.

**PAUSE-01**

The DMR must support pausing audio or A/V streams. A DMR that receives a Pause() action must pause the rendering process. After a Pause() action, a DMR that receives a Play() action must resume playback from the same position.

A DMR must be capable of pause/resume operations for any resources of the following types: Audio or A/V resources for which the DMS supports time-range requests, byte-range requests, or connection stalling.

**PAUSE-05**

The pause operation must be available while the DMR is in the PLAYING state (for audio and A/V resources). As defined in the DLNA Guidelines, the DMR must advertise availability of this operation by inserting the keyword Pause in the list of CurrentTransportActions.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Media.DMR.Base.PausingAStream</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~4 minutes</p></td>
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

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Media Testing](troubleshooting-devicemedia-testing.md).

## More Information


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
<th>Command option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>NetMediaLogoTests.exe NETMEDIA_0071 /dmrID=[Query WDKData_DeviceUUID]</strong></p></td>
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
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\sharing\netmedialogotests</p></td>
</tr>
</tbody>
</table>

 

 

 






