---
author: joshbax-msft
title: Webcam Performance System Test
description: Webcam Performance System Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 76fb29bf-bf3e-46a6-8da2-4c77057c51aa
---

# Webcam Performance System Test


This test determines end-to-end camera performance on the system in which the camera is installed. It tests the following cases:

-   **Time To Take Photo**: Measures the time from when camera is started to when can produce its first sample to the MF capture Sink. Provider GUID and event IDs are printed in the log.

-   **Time To Start Record**: Measures the time from when camera is started to when it can produce its first sample to the MF capture Sink. Provider GUID and event IDs are printed in the log.

-   **Time To Start Preview**: Measures the time from when camera is started to when it can produce its first sample to the MF capture Sink. Provider GUID and event IDs are printed in the log.

-   **Time Stamp Validation for Preview and Record**: Verifies the sample frequency and the timestamps from the camera. Ideally, the frame rate numbers should be within 5% of the advertised frame rate. Source events and IDs are printed in the log file.

    If the camera supports extended control **KSPROPERTY\_CAMERACONTROL\_EXTENDED\_PHOTOMODE**, then it must implement **KSPROPERTY\_CAMERACONTROL\_EXTENDED\_MAXVIDFPS\_PHOTORES**. The test verifies that the reported frame rate from the driver matches actual frame rate when photo media type is set on the sensor.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.Webcam.VideoCaptureAndCamera</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~30 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Webcam Testing Prerequisites](webcam-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md) and [Troubleshooting Device.Streaming Testing](troubleshooting-devicestreaming-testing.md).

 

 






