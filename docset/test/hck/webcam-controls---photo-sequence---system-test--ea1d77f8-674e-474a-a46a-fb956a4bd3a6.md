---
author: joshbax-msft
title: Webcam Controls - Photo Sequence - System Test
description: Webcam Controls - Photo Sequence - System Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9195a31a-97f0-4ba9-b69d-018a3761a45e
---

# Webcam Controls - Photo Sequence - System Test


This test validates cameras functionality if the driver supports KSPROPERTY\_CAMERACONTROL\_EXTENDED\_PHOTOMODE; if it does not, you should skip this test.

**Note**  
This is an optional control. If the driver does not support a control, you should not implement a control handler just to return an error. If a control handler is registered, the test expects the control to be fully functional.

 

If the driver implements the control handler, the following checks are run based on the definition of the controls by the camera topics document. (Note: Implementation of extended controls such as photo mode also requires the implementation of other extended controls; see Requirements and the camera topics document for details.)

-   Verifies default values (if appropriate).

-   Validates that a property is advertised on correct pin or filter level.

-   Enumerates possible control values while pins are streaming and not streaming.

-   Determines end-to-end functionality.

Startup latency is checked by the test measures by taking the delta between when the trigger was sent and when the sink received the first frame from the image pin. This is the PhotoSink\_Time that is printed in the log if the test fails.

This test also validates photo frame rate by getting the value that the driver advertises on the get call of KSPROPERTY\_CAMERACONTROL\_EXTENDED\_PHOTOMAXFRAMERATE. The test validates that the frame rate is within 10% of the advertised average frame rate. and that no frames are dropped during the photo sequence operation. Note that the min and max checks validate that a frame is no more than one-half of a frame early or late.

When KSPROPERTY\_CAMERACONTROL\_EXTENDED\_PHOTOMAXFRAMERATE is set by the test, the driver should not exceed the frame rate that is passed in by the application. Note that this is a max frame rate, so the driver can do any frame rate that is lower than the one that is requested. Although when driver is queried for KSPROPERTY\_CAMERACONTROL\_EXTENDED\_PHOTOMAXFRAMERATE, it should report its new value.

This test also validates that KSPROPERTY\_CAMERACONTROL\_EXTENDED\_PHOTOMODE is only advertised on the photo pin. If the driver receives a pin ID other than its photo pin. it should fail with ERROR\_INVALID\_PARAMETER.

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
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md).

 

 






