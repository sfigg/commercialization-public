---
author: joshbax-msft
title: Sensor ReadyState Verification Test
description: Sensor ReadyState Verification Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d2477f1b-44da-452d-90fa-67937dbcde52
---

# Sensor ReadyState Verification Test


This automated WHCK test ensures the target sensor device/s enters the ‘Ready’ state within the expected time. For the expected ready state times for different sensor devices, refer to the table in [More information](#more) (the table can also be found in the requirements doc).

For GPS sensor device, the test performs both HOT FIX test and COLD FIX testing. For the Hot Fix and Cold Fix times, please refer to the table in [More information](#more). The Cold Fix or the Cold Start test is repeated 5 times and the criterion for passing is 80%

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.Sensor.ALS.SupportRequiredData Device.Input.Sensor.Base.SupportDataTypesAndProperties</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
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
<td><p>Basic Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Sensor Device Testing Prerequisites](sensor-device-testing-prerequisites.md).

If this test is being run against a GPS sensor device node, make sure that you are running the test in an environment in which you can receive a GPS signal.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Input Testing](troubleshooting-deviceinput-testing.md).

## <a href="" id="more"></a>More information


Sensors shall not transition to the SENSOR\_STATE\_READY state until valid data is available.

Sensors must complete power-up initialization tasks and transition to the SENSOR\_STATE\_READY after being opened by a client or resuming from system standby within the following times:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Sensor Type</th>
<th>Maximum time allowed to enter ready state</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Accelerometer</p></td>
<td><p>1 second</p></td>
</tr>
<tr class="even">
<td><p>Gyrometer</p></td>
<td><p>3 seconds</p></td>
</tr>
<tr class="odd">
<td><p>Compass</p></td>
<td><p>3 seconds</p></td>
</tr>
<tr class="even">
<td><p>Inclinometer</p></td>
<td><p>3 seconds</p></td>
</tr>
<tr class="odd">
<td><p>Orientation sensor</p></td>
<td><p>5 seconds</p></td>
</tr>
<tr class="even">
<td><p>Ambient Light Sensor</p></td>
<td><p>2 seconds</p></td>
</tr>
<tr class="odd">
<td><p>GPS</p></td>
<td><p>See the following table</p></td>
</tr>
</tbody>
</table>

 

GPS Startup requirements under clear sky conditions:

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Startup type</th>
<th>Time elapsed from position request (in seconds)</th>
<th>Acceptable sensor states</th>
<th>Acceptable error radius</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Cold start</p></td>
<td><p>0</p></td>
<td><p>SENSOR_STATE_INITIALIZING</p></td>
<td><p>n/3a</p></td>
</tr>
<tr class="even">
<td><p>Cold start</p></td>
<td><p>45</p></td>
<td><p>SENSOR_STATE_READY</p></td>
<td><p>Under 50 meters</p></td>
</tr>
<tr class="odd">
<td><p>Warm start (powered off with assistance</p></td>
<td><p>0</p></td>
<td><p>SENSOR_STATE_INITIALIZING</p></td>
<td><p>n/a</p></td>
</tr>
<tr class="even">
<td><p>Warm start (powered off with assistance</p></td>
<td><p>10</p></td>
<td><p>SENSOR_STATE_READY</p></td>
<td><p>Under 300 meters</p></td>
</tr>
<tr class="odd">
<td><p>Warm start (powered off with assistance</p></td>
<td><p>20</p></td>
<td><p>SENSOR_STATE_READY SENSOR_STATE_READY</p></td>
<td><p>Under 50 meters</p></td>
</tr>
<tr class="even">
<td><p>Hot start</p></td>
<td><p>0</p></td>
<td><p>SENSOR_STATE_INITIALIZING or SENSOR_STATE_READY depending if fix was maintained</p></td>
<td><p>Under 300 meters</p></td>
</tr>
<tr class="odd">
<td><p>Hot start</p></td>
<td><p>2</p></td>
<td><p>SENSOR_STATE_READY</p></td>
<td><p>Under 50 meters</p></td>
</tr>
</tbody>
</table>

 

Cold Start TTFF: Time Unkown, Current ephemeris unknown, position unknown.

Hot Start TTFF: Time known, Almanac known, Ephemeris known, Position within 100km of last fix.

GPS devices shall be able to acquire first fix under two seconds when 1) The radio is on, 2) Flight Mode is off, and 3) Under clear sky conditions.

GPS devices under clear sky conditions shall be able to report position from a cold start within 45 seconds.

A-GPS devices shall be able to report position within 10 seconds with 100-300 meter accuracy and within 20 seconds with 30 meter or less accuracy.

Location device shall be in initializing state after it is enabled and change to ready after acquiring the current position.

Location devices shall fire valid location data events with valid location data when in the ready state.

Location devices shall not fire data events when the device is not in either ready state or initializing state.

 

 






