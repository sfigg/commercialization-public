---
author: joshbax-msft
title: Webcam UsageIndicator base (Manual)
description: Webcam UsageIndicator base (Manual)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 46865283-e392-4d64-9d4e-3755ba8055e0
---

# Webcam UsageIndicator base (Manual)


This test verifies that the webcam indicates its status. When a webcam is ready, the indicator LED should be on and off when the webcam is not ready.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Streaming.Webcam.Base.AVStreamWDMAndInterfaceRequirements Device.Streaming.Webcam.Base.BasicPerf Device.Streaming.Webcam.Base.DirectShowAndMediaFoundation Device.Streaming.Webcam.Base.KSCategoryVideoCameraRegistration Device.Streaming.Webcam.Base.MultipleClientAppSupport Device.Streaming.Webcam.Base.ReportingCameraLocation Device.Streaming.Webcam.Base.SurpriseRemoval Device.Streaming.Webcam.Base.UsageIndicator Device.Streaming.Webcam.Base.WindowsCaputureInfrastructureCameraSupport Device.Streaming.Webcam.H264.H264Support</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Webcam Testing Prerequisites](webcam-testing-prerequisites.md).

During the test, a command prompt window appears on the test computer. You must respond to the prompts. During the test, you must point the webcam at the screen. The test succeeds if the webcam captures an image on screen within an acceptable latency period.

For internal cameras:

-   A mirror should reflect the monitor to the internal camera.

-   A speaker positioned close to the camera microphone.

For external cameras:

-   The external camera needs to be pointed to the monitor.

-   A speaker positioned close to the camera microphone.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Streaming Testing](troubleshooting-devicestreaming-testing.md).

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
<td><p>WDKDeviceID</p></td>
<td><p>Specifies the Plug and Play (PnP) ID of the device to be tested.</p>
<p>Example: \\?\root#media#0001#{65e8773d-8f56-11d0-a3b9-00a0c9223196}\global</p></td>
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
<td><p><strong>MFMessenger.exe -m flash -DeviceID “[WDKDeviceID]”</strong></p></td>
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
<td><p>MFMessenger.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\\multimediatest\Performance\MFMessenger\</p></td>
</tr>
<tr class="even">
<td><p>Audiostreaming.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\avcore\audio\bin\</p></td>
</tr>
</tbody>
</table>

 

 

 






