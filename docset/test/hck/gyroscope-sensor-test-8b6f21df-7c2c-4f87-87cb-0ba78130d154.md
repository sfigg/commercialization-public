---
author: joshbax-msft
title: Gyroscope Sensor Test
description: Gyroscope Sensor Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 960323b0-4c91-4536-8629-bad258d93dab
---

# Gyroscope Sensor Test


This test validates the gyroscope sensor.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.Sensor.Gyroscope.SensorDataType Device.Input.Sensor.Gyroscope.SensorReportInterval</p>
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


Before you run the test, complete the test setup as described in the test requirements: [Sensor Device Testing Prerequisites](sensor-device-testing-prerequisites.md). The [Accelerometer Sensor Shake Event Test](accelerometer-sensor-shake-event-test-0dd5d2b3-dfc4-475d-abab-f4a97a8cf977.md) should also pass before running this test.

Gyroscopes generally emit noise on the magnitude of +/- 2 degrees per second. Prior to running the gyroscope test, you should use the [Sensor Diagnostic Tool](http://msdn.microsoft.com/library/windows/hardware/Hh780319.aspx) to validate the gyroscope sensor is not generating values greater than 2 degrees per second when the system is stationary.

Gyroscope tests expect to receive an angular velocity of greater than 40 degrees per second on the axis being rotated and less than 15 degrees per second on the stationary axes. To achieve passing results, you will find that the system can be rotated on a turntable to keep the other two axes stationary. The system should also be centered on the turntable to prevent movement on other axes from detecting rotation.

You will be asked to do the following during this test:

1.  Lay the device flat with the screen up. Rotate the device clockwise. The expected values during rotation are as follows:

    -   SENSOR\_DATA\_TYPE\_ANGULAR\_ACCELERATION\_X\_DEGREES\_PER\_SECOND\_SQUARED &lt; 15

    -   SENSOR\_DATA\_TYPE\_ANGULAR\_ACCELERATION\_Y\_DEGREES\_PER\_SECOND\_SQUARED &lt; 15

    -   SENSOR\_DATA\_TYPE\_ANGULAR\_ACCELERATION\_Z\_DEGREES\_PER\_SECOND\_SQUARED &lt; -40

2.  Lay the device flat with the screen up. Rotate the device counter-clockwise. The expected values during rotation are as follows:

    -   SENSOR\_DATA\_TYPE\_ANGULAR\_ACCELERATION\_X\_DEGREES\_PER\_SECOND\_SQUARED &lt; 15

    -   SENSOR\_DATA\_TYPE\_ANGULAR\_ACCELERATION\_Y\_DEGREES\_PER\_SECOND\_SQUARED &lt; 15

    -   SENSOR\_DATA\_TYPE\_ANGULAR\_ACCELERATION\_Z\_DEGREES\_PER\_SECOND\_SQUARED &gt; 40

3.  Hold the device vertical with the Windows button on the bottom. Looking down on the device, rotate the device clockwise along the axis between the top of the screen and the Windows button. The expected values during rotation are as follows:

    -   SENSOR\_DATA\_TYPE\_ANGULAR\_ACCELERATION\_X\_DEGREES\_PER\_SECOND\_SQUARED &lt; -40

    -   SENSOR\_DATA\_TYPE\_ANGULAR\_ACCELERATION\_Y\_DEGREES\_PER\_SECOND\_SQUARED &lt; 15

    -   SENSOR\_DATA\_TYPE\_ANGULAR\_ACCELERATION\_Z\_DEGREES\_PER\_SECOND\_SQUARED &gt; 40

4.  Hold the device vertical with the Windows button on the bottom. Looking down on the device, rotate the device counter-clockwise along the axis between the top of the screen and the Windows button. The expected values during rotation are as follows:

    -   SENSOR\_DATA\_TYPE\_ANGULAR\_ACCELERATION\_X\_DEGREES\_PER\_SECOND\_SQUARED &lt; 15

    -   SENSOR\_DATA\_TYPE\_ANGULAR\_ACCELERATION\_Y\_DEGREES\_PER\_SECOND\_SQUARED &gt;40

    -   SENSOR\_DATA\_TYPE\_ANGULAR\_ACCELERATION\_Z\_DEGREES\_PER\_SECOND\_SQUARED &lt; 15

5.  Hold the device vertical with the Windows button on the left. Looking down on the device, rotate the device clockwise keeping the device vertical and in the portrait orientation. The expected values during rotation are as follows:

    -   SENSOR\_DATA\_TYPE\_ANGULAR\_ACCELERATION\_X\_DEGREES\_PER\_SECOND\_SQUARED &lt; 40

    -   SENSOR\_DATA\_TYPE\_ANGULAR\_ACCELERATION\_Y\_DEGREES\_PER\_SECOND\_SQUARED &lt; 15

    -   SENSOR\_DATA\_TYPE\_ANGULAR\_ACCELERATION\_Z\_DEGREES\_PER\_SECOND\_SQUARED &lt; 15

6.  Hold the device vertical with the Windows button on the left. Looking down on the device, rotate the device counter-clockwise keeping the device vertical and in the portrait orientation. The expected values during rotation are as follows:

    -   SENSOR\_DATA\_TYPE\_ANGULAR\_ACCELERATION\_X\_DEGREES\_PER\_SECOND\_SQUARED &lt; -40

    -   SENSOR\_DATA\_TYPE\_ANGULAR\_ACCELERATION\_Y\_DEGREES\_PER\_SECOND\_SQUARED &lt; 15

    -   SENSOR\_DATA\_TYPE\_ANGULAR\_ACCELERATION\_Z\_DEGREES\_PER\_SECOND\_SQUARED &lt; 15

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Input Testing](troubleshooting-deviceinput-testing.md).

 

 






