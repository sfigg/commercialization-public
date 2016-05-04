---
author: joshbax-msft
title: Camera Driver Functional Test - Image Stream - Take a JPEG photo from each type exposed by the photo pin -logMediaTypes
description: Camera Driver Functional Test - Image Stream - Take a JPEG photo from each type exposed by the photo pin -logMediaTypes
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ad5eda8c-3c25-405a-89c8-d2a1b1163693
---

# Camera Driver Functional Test - Image Stream - Take a JPEG photo from each type exposed by the photo pin -logMediaTypes


These sets of tests validate cameras functionality with the MF and IMFCaptureEngine.

-   **Camera Driver Basic Tests - \***

    Tests against a subset of camera media types and shorter duration of tests than functional or reliability.

-   **Camera Driver Functional Tests - \***

    Tests against a larger set of media types and have longer duration of the test.

-   **Camera Driver Reliability Tests - \***

    Tests against a larger set of media types and have longer duration of the test, and more complex scenarios.

-   **\*- Image Stream - \***

    Validates that the system is able to take photo from MF\_CAPTURE\_ENGINE\_PREFERRED\_SOURCE\_STREAM\_FOR\_IMAGE.

This test will attempt to stream a single photo from each mediatype exposed by the preferred image pin to a JPEG photo format.

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
<td><p>~2 minutes</p></td>
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

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Error</th>
<th>Description/Workaround</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>0x8004005 : E_FAIL</p></td>
<td><p>The most often occurrence of this error code is during the verification of the Recorded file for Video or Photo. This will occur if the resulting file contains no data because it did not receive samples.</p>
<p>Check to ensure the device is producing valid samples when it enters the run state. Valid includes that the sample is the right size, format, and time for when it was produced.</p></td>
</tr>
<tr class="even">
<td><p>0x80070102</p></td>
<td><p>This will occur when a Capture Asynchronous Operation has timed out. These include Initialize, Start Preview, Stop Preview, Start Record, Stop Record, Take Photo, and Change Mediatype. The test allows for 9-10 seconds for each operation before failing. Mediatype change can include pin tear down and bring up time.</p>
<p>Check that the device isn’t waiting for future commands that prevent it from changing state. Ensure that all buffers are flushed out of the device on device reset commands.</p></td>
</tr>
<tr class="odd">
<td><p>0xC00D3704 : MF_E_HW_MFT_FAILED_START_STREAMING</p></td>
<td><p>This error occurs when the device cannot enter the run state.</p>
<p>Check that the device is able to transition through all states without failure, or that other pins aren’t preventing the device from entering a state.</p></td>
</tr>
<tr class="even">
<td><p>0xC00D4A44 : MF_E_SINK_NO_SAMPLES_PROCESSED</p></td>
<td><p>This error occurs during finalization of files, if no samples have been delivered.</p>
<p>Check to ensure the device is producing valid samples when it enters the run state. Valid includes that the sample is the right size, format, and time for when it was produced.</p></td>
</tr>
</tbody>
</table>

 

 

 






