---
author: joshbax-msft
title: Sensor DataReport Validation Test
description: Sensor DataReport Validation Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e302ee64-0946-41cf-bfdd-b491cc423f30
---

# Sensor DataReport Validation Test


The data report of each sensor device is expected to have specific data fields and each data field must be a specific vartype. The test prompts the tester to put the sensor device into ready state and the data report is examined to validate the presence of the required data fields and correct vartypes.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.Sensor.Accelerometer.SensorDataType Device.Input.Sensor.Accelerometer.SensorReportInterval Device.Input.Sensor.ALS.SupportRequiredData Device.Input.Sensor.Base.SupportDataTypesAndProperties Device.Input.Sensor.Compass.InclinometerDataType Device.Input.Sensor.Compass.SensorDataType Device.Input.Sensor.Compass.SensorReportInterval Device.Input.Sensor.DeviceOrientation.SensorDataType Device.Input.Sensor.Gyroscope.SensorDataType Device.Input.Sensor.Gyroscope.SensorReportInterval Device.Input.Sensor.Location.SupportRequiredDataFieldsForReport Device.Input.Sensor.Presence.SensorDataType</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86)</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Sensor Device Testing Prerequisites](sensor-device-testing-prerequisites.md)

You should close all apps and stop the sensor service before running this test.

If this test is being run against a GPS sensor device node, perform the following steps:

1.  Confirm that you are running the tests in an environment in which you can receive a GPS signal.

2.  Make sure that you have enabled the **Location Permissions** on the target system and for the system user account under which the WHCK tests are being executed.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Input Testing](troubleshooting-deviceinput-testing.md).

Ensure that the GPS sensor has a signal.

 

 






