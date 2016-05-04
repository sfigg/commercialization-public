---
author: joshbax-msft
title: Sensor Properties Test
description: Sensor Properties Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e26e1034-f4c7-4aaa-a32c-69aa6f50a79e
---

# Sensor Properties Test


This test is a combination of the following four tests:

-   **Static Properties Testing** – Verifies if the sensor driver supports all of the mandatory static sensor properties. Refer to the sensor requirement for a complete list of mandatory static properties.

-   **Invalid Properties Testing** - Verifies if the sensor driver is responding along the expected lines when an invalid property is retrieved or configured for the sensor device.

-   **Test Sensor Data Ready** - Verifies if the sensor device goes to a ready state after a device node goes through an enable/disable cycle. You are prompted to put the sensor device into a ready state.

-   **Set Properties Test** – Verifies if the compass, gyroscope, and the accelerometer sensors support the setting of specific CRI values as defined in the respective requirement files. For other sensors, this test simply passes and the CRI values are not validated.

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
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Sensor Device Testing Prerequisites](sensor-device-testing-prerequisites.md).

If this test is being run against a GPS sensor device node, perform the following steps:

1.  Confirm that you are running the tests in an environment in which you can receive a GPS signal.

2.  Make sure that you have enabled the **Location Permissions** on the target system and for the system user account under which the WHCK tests are being executed.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Input Testing](troubleshooting-deviceinput-testing.md).

 

 






