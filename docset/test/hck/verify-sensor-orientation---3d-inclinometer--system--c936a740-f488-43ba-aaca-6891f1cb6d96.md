---
author: joshbax-msft
title: Verify Sensor Orientation - 3D Inclinometer (System)
description: Verify Sensor Orientation - 3D Inclinometer (System)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3018ade8-1ed3-4421-8a24-c3a023039da9
---

# Verify Sensor Orientation - 3D Inclinometer (System)


Based on the guidance in [Integrating Motion and Orientation Sensors](http://go.microsoft.com/fwlink/p/?linkid=262274), the inclinometer implementation can use data from the accelerometer, gyroscope and compass to determine the Euler angle values.

Most inclinometer implementations use data from the 3D magnetometer, the accelerometer and the gyroscope to calculate the current direction that the system is facing relative to the magnetic north pole. Therefore, if the magnetometer, gyroscope or accelerometer sensor is not functioning properly, you should expect to see the inclinometer return incorrect headings.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.Sensor.Integrated</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md).

The tests will allow for angle errors of +/- 10 degrees.

See the **Validation of Euler Angles** section of the [Integrating Motion and Orientation Sensors](http://go.microsoft.com/fwlink/p/?linkid=262274) whitepaper for the expected angles for each of the inclinometer tests.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md).

 

 






