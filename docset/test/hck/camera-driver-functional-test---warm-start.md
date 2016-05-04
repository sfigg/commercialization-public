---
author: joshbax-msft
title: Camera Driver Functional Test - Warm Start
description: Camera Driver Functional Test - Warm Start
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1b318d1d-ceac-4d0d-a463-6718c5b0f12f
---

# Camera Driver Functional Test - Warm Start


This test validates cameras functionality if the driver supports KSPROPERTY\_CAMERACONTROL\_EXTENDED\_WARMSTART, if it does not, you should skip this test.

**Note**  
This is an optional control. If the driver does not support a control, you should not implement a control handler just to return an error. If a control handler is registered, the test expects the control to be fully functional.

 

If the driver implements the control handler, the following checks are run based on the definition of the controls by the camera topics document. (Note: Implementation of extended controls such as photo mode also requires the implementation of other extended controls; see Requirements and the camera topics document for details.)

-   Verifies default values (if appropriate).

-   Validates that a property is advertised on correct pin or filter level.

-   Enumerates possible control values while pins are streaming and not streaming.

-   Determines end-to-end functionality.

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

 

 






