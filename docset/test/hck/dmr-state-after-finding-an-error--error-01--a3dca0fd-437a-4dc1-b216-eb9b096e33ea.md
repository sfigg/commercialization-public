---
author: joshbax-msft
title: DMR state after finding an error (ERROR-01)
description: DMR state after finding an error (ERROR-01)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0006adb3-dfae-4e4a-b6bc-6dd2a1b1c4d9
---

# DMR state after finding an error (ERROR-01)


This test verifies that if a digital media renderer (DMR) is in the PLAYING, TRANSITIONING, or PAUSED\_PLAYBACK state and encounters a non-recoverable error, it does the following:

-   Enters a STOPPED state and waits for instructions from the digital media controller (DMC).

-   Reports the error by setting the value of the TransportStatus state variable to ERROR\_OCCURRED.

As a consequence of this requirement, a DMR with a TransportState value equal to STOPPED and its TransportStatus value equal to ERROR\_OCCURRED implies that content playback was stopped due to an error.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Media.DMR.Base.DMRStateAfterFindingAnError</p>
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

 

## Running the Test


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
<td><p><strong>NetMediaLogoTests.exe NETMEDIA_0041 /dmrID=[Query WDKData_DeviceUUID]</strong></p></td>
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

 

 

 






