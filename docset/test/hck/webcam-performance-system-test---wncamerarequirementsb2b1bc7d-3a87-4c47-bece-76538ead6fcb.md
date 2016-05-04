---
author: joshbax-msft
title: Webcam Performance System Test - WNCameraRequirements
description: Webcam Performance System Test - WNCameraRequirements
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9ff0cbf5-facb-4471-9a36-cf342d52492e
---

# Webcam Performance System Test - WNCameraRequirements


This test case is used to determine the end-to-end camera experience on the system on which the camera is installed.

-   **Time To Take Multiple Photo**: Measures the time from when camera is started to when it can produce its first sample to the MF capture Sink. Provider Guid and event Ids are printed in the log. If this passes, then the test measures the time between photos taken. Provider Guid and event Ids are printed in the log.

-   **Time between switch MediaTypes**: Measures the time from when cameras media type is selected until the first frame is received. Provider Guid and event Ids are printed in the log.

-   **Time to switch cameras**: Measures the time from when camera stop is called until a new camera can provide video frame. Provider Guid and event Ids are printed in the log.

-   If camera Supports Extended control KSPROPERTY\_CAMERACONTROL\_EXTENDED\_PHOTOMODE, then it must implement KSPROPERTY\_CAMERACONTROL\_EXTENDED\_MAXVIDFPS\_PHOTORES. The test verifies that the reported frame rate from the driver matches the actual frame rate when photo media type is set on the sensor.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.Webcam.Specification.WNCameraRequirements</p>
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
<td><p>Experiences Optional</p></td>
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

 

 






