---
author: joshbax-msft
title: Sensor Static Properties Test
description: Sensor Static Properties Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0e296329-3481-4d14-9097-cbc6b80d8f97
---

# Sensor Static Properties Test


This automated test determines whether the target sensor device supports the retrieval of the following read-only sensor properties (see [More information](#more)).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.Sensor.ALS.SupportRequiredData Device.Input.Sensor.Base.GNSSTestProperties Device.Input.Sensor.Base.SupportDataTypesAndProperties Device.Input.Sensor.Presence.SensorDataType</p>
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


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Property</th>
<th>Data type</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>WPD_FUNCTIONAL_OBJECT_CATEGORY</p></td>
<td><p>VT_CLSID</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_PROPERTY_TYPE</p></td>
<td><p>VT_CLSID</p></td>
</tr>
<tr class="odd">
<td><p>SENSOR_PROPERTY_STATE</p></td>
<td><p>VT_UI4</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_PROPERTY_PERSISTENT_UNIQUE_ID</p></td>
<td><p>VT_CLSID</p></td>
</tr>
<tr class="odd">
<td><p>SENSOR_PROPERTY_MANUFACTURER</p></td>
<td><p>VT_LPWSTR</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_PROPERTY_MODEL</p></td>
<td><p>VT_LPWSTR</p></td>
</tr>
<tr class="odd">
<td><p>SENSOR_PROPERTY_SERIAL_NUMBER</p></td>
<td><p>VT_LPWSTR</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_PROPERTY_FRIENDLY_NAME</p></td>
<td><p>VT_LPWSTR</p></td>
</tr>
<tr class="odd">
<td><p>SENSOR_PROPERTY_MIN_REPORT_INTERVAL</p></td>
<td><p>VT_UI4</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_PROPERTY_CONNECTION_TYPE</p></td>
<td><p>VT_UI4</p></td>
</tr>
</tbody>
</table>

 

GPS devices shall be able to report true heading degrees with +-20% accuracy.

GPS shall support the following data fields:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Property</th>
<th>Data type</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>SENSOR_DATA_TYPE_LATITUDE_DEGREES</p></td>
<td><p>VT_R8</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_DATA_TYPE_LONGITUDE_DEGREES</p></td>
<td><p>VT_R8</p></td>
</tr>
<tr class="odd">
<td><p>SENSOR_DATA_TYPE_ERROR_RADIUS_METERS</p></td>
<td><p>VT_R8</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_DATA_TYPE_SATELLITES_USED_COUNT</p></td>
<td><p>VT_I4</p></td>
</tr>
<tr class="odd">
<td><p>SENSOR_DATA_TYPE_ALTITUDE_ELLIPSOID_METERS</p></td>
<td><p>VT_R8</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_DATA_TYPE_ALITITUDE_ELLIPSOID_ERROR_METERS</p></td>
<td><p>VT_R8</p></td>
</tr>
<tr class="odd">
<td><p>SENSOR_DATA_TYPE_SPEED_KNOTS</p></td>
<td><p>VT_R8</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_DATA_TYPE_TRUE_HEADING_DEGREES</p></td>
<td><p>VT_R8</p></td>
</tr>
<tr class="odd">
<td><p>SENSOR_DATA_TYPE_NMEA_SENTENCE</p></td>
<td><p>VT_LPWSTR</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_DATA_TYPE_SATELLITES_IN_VIEW_STN_RATIO</p></td>
<td><p>VT_VECTOR | VT_UI1</p></td>
</tr>
</tbody>
</table>

 

Location can support the following data fields. If they are supported, they must be implemented according to the guidelines in MSDN.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Property</th>
<th>Data type</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>SENSOR_DATA_TYPE_ALTITUDE_SEALEVEL_METERS</p></td>
<td><p>VT_R8</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_DATA_TYPE_MAGNETIC_HEADING_DEGREES</p></td>
<td><p>VT_R8</p></td>
</tr>
<tr class="odd">
<td><p>SENSOR_DATA_TYPE_MAGNETIC_VARIATION</p></td>
<td><p>VT_R8</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_DATA_TYPE_FIX_QUALITY</p></td>
<td><p>VT_I4</p></td>
</tr>
<tr class="odd">
<td><p>SENSOR_DATA_TYPE_FIX_TYPE</p></td>
<td><p>VT_I4</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_DATA_TYPE_POSITION_DILUTION_OF_PRECISION</p></td>
<td><p>VT_R8</p></td>
</tr>
<tr class="odd">
<td><p>SENSOR_DATA_TYPE_HORIZONAL_DILUTION_OF_PRECISION</p></td>
<td><p>VT_R8</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_DATA_TYPE_VERTICAL_DILUTION_OF_PRECISION</p></td>
<td><p>VT_R8</p></td>
</tr>
<tr class="odd">
<td><p>SENSOR_DATA_TYPE_SATELLITES_USED_PRNS</p></td>
<td><p>VT_VECTOR | VT_UI1</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_DATA_TYPE_SATELLITES_IN_VIEW</p></td>
<td><p>VT_I4</p></td>
</tr>
<tr class="odd">
<td><p>SENSOR_DATA_TYPE_SATELLITES_IN_VIEW_PRNS</p></td>
<td><p>VT_VECTOR | VT_UI1</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_DATA_TYPE_SATELLITES_IN_VIEW_ELEVATION</p></td>
<td><p>VT_VECTOR | VT_UI1</p></td>
</tr>
<tr class="odd">
<td><p>SENSOR_DATA_TYPE_SATELLITES_IN_VIEW_AZIMUTH</p></td>
<td><p>VT_VECTOR | VT_UI1</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_DATA_TYPE_ADDRESS1</p></td>
<td><p>VT_LPWSTR</p></td>
</tr>
<tr class="odd">
<td><p>SENSOR_DATA_TYPE_ADDRESS2</p></td>
<td><p>VT_LPWSTR</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_DATA_TYPE_CITY</p></td>
<td><p>VT_LPWSTR</p></td>
</tr>
<tr class="odd">
<td><p>SENSOR_DATA_TYPE_STATE_PROVINCE</p></td>
<td><p>VT_LPWSTR</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_DATA_TYPE_POSTALCODE</p></td>
<td><p>VT_LPWSTR</p></td>
</tr>
<tr class="odd">
<td><p>SENSOR_DATA_TYPE_ALTITUDE_SEALEVEL_ERROR_METERS</p></td>
<td><p>VT_R8</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_DATA_TYPE_GPS_SELECTION_MODE</p></td>
<td><p>VT_I4</p></td>
</tr>
<tr class="odd">
<td><p>SENSOR_DATA_TYPE_GPS_OPERATION_MODE</p></td>
<td><p>VT_I4</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_DATA_TYPE_GPS_STATUS</p></td>
<td><p>VT_I4</p></td>
</tr>
<tr class="odd">
<td><p>SENSOR_DATA_TYPE_GEOIDAL_SEPARATION</p></td>
<td><p>VT_R8</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_DATA_TYPE_DGPS_DATA_AGE</p></td>
<td><p>VT_R8</p></td>
</tr>
<tr class="odd">
<td><p>SENSOR_DATA_TYPE_ALTITUDE_ANTENNA_SEALEVEL_METERS</p></td>
<td><p>VT_R8</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_DATA_TYPE_DIFFERENTIAL_REFERENCE_STATION_ID</p></td>
<td><p>VT_I4</p></td>
</tr>
<tr class="odd">
<td><p>SENSOR_DATA_TYPE_SATELLITES_IN_VIEW_ID</p></td>
<td><p>VT_VECTOR | VT_UI1</p></td>
</tr>
</tbody>
</table>

 

 

 






