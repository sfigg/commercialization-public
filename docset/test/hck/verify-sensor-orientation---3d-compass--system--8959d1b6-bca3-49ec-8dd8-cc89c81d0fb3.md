---
author: joshbax-msft
title: Verify Sensor Orientation - 3D Compass (System)
description: Verify Sensor Orientation - 3D Compass (System)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6f3238fd-2acd-4985-9b71-0a0cfc9d8be2
---

# Verify Sensor Orientation - 3D Compass (System)


The compass tests in the Windows Hardware Certification Kit (Windows HCK) validate that the compass returns expected values when the system is held at different directions and orientations. The compass tests allow for an error tolerance of +/- 10 degrees. You should use a reference compass to determine the direction of magnetic north before you start the compass test.

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

Most compass implementations use data from both the 3D magnetometer and the gyro to calculate the current direction that the system is facing relative to the magnetic north pole. Some implementations also use data from the accelerometer. Therefore, if the gyroscope or accelerometer sensor are not functioning properly, you should expect to see the compass return incorrect headings.

Because the earth’s magnetic force is relatively weak, the magnetometer sensors are often subject to interference from other system components. If the magnetometers are not adequately isolated from sources of electromagnetic interference such as antennas, power lines, or other components that are composed of materials such as iron that interfere with magnetic reception, you will find that the compass returns incorrect headings. For guidance on correct magnetometer placement and best practices, see [Integrating Motion and Orientation Sensors](http://go.microsoft.com/fwlink/p/?linkid=262274).

We highly recommend that you stand holding the system at various angles and rotate yourself so that you end up facing different directions. Regardless of the angle the system is being held, or landscape / portrait orientation, the compass should always return the heading relative to the direction that you are facing. Note that a sensor diagnostic tool can be used to display the heading value from the compass sensor. If you determine that the compass is returning incorrect or inconsistent results, please work with the magnetometer sensor vendor to determine if the error is a result of interference or an incorrect sensor fusion algorithm.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md).

 

 






