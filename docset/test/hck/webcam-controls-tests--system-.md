---
author: joshbax-msft
title: Webcam Controls Tests (System)
description: Webcam Controls Tests (System)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 358aa697-3ddf-4038-97c8-a71ed23a36b2
---

# Webcam Controls Tests (System)


These set of tests validate cameras functionality if the driver supports KSPROPERTY\_CAMERACONTROL\_EXTENDED\_\*. If the driver does not support KSPROPERTY\_CAMERACONTROL\_EXTENDED\_\*, skip this test. This is an optional control.

If a driver does not support a control, do not implement a control handler. If a control handler is implemented, the registered test will expect the control to be fully functional.

If a driver implements a control handler, the following checks run (based on the definition of the controls):

-   The test verifies default values and validates that the appropriate property is advertised on the correct pin or filter level.

-   The test enumerates possible control values during the times that pins are streaming and not streaming.

-   Scenario tests are run on the control to determine the end-to-end functionality.

**Note**  
Implementation of extended controls, such as photo mode, require that you implement additional extended controls.

 

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


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md) and [Webcam Testing Prerequisites](webcam-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md) and [Troubleshooting Device.Streaming Testing](troubleshooting-devicestreaming-testing.md).

## Related topics


[System.Client Tests](systemclient-tests.md)

 

 







