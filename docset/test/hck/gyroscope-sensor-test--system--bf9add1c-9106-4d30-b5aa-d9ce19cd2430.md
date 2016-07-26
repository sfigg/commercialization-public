---
author: joshbax-msft
title: Gyroscope Sensor Test (System)
description: Gyroscope Sensor Test (System)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8100f01b-782e-45f4-8a52-ae13cf091347
---

# Gyroscope Sensor Test (System)


Gyroscopes generally emit noise on the magnitude of +/- 2 degrees per second. Before you run the Gyroscope verification tests, you should use the sensor diagnostic tool to confirm that the gyroscope sensor is not generating values greater than 2 degrees per second when the system is stationary.

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

Prerequisites before running this test:

1.  Accelerometer tests pass.

2.  Use SDT and validate that the sensors do not return data when they are stationary on a flat surface.

If the gyroscope sensor is generating excessive noise, you should work with the sensor manufacturer to understand and fix the source of the noise.

Gyro tests expect to receive an angular velocity of greater than 40 degrees per second on the axis being rotated and less than 15 degrees per second on the stationary axes. To achieve passing results, you will probably find that the system can be rotated on a turntable to keep the other two axes stationary. Note that the system should also be centered on the turntable to prevent movement on other axes from detecting rotation.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md).

 

 






