---
author: joshbax-msft
title: Sensor Settable Properties Verification Test
description: Sensor Settable Properties Verification Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7e9c5043-6184-4b68-8be7-d4fa9fa6a518
---

# Sensor Settable Properties Verification Test


This automated test determines whether the target sensor device supports the setting of the read-write sensor properties that are described in [More information](#more), in this topic.

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


**Read-write sensor properties:**

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
<td><p>SENSOR_PROPERTY_CURRENT_REPORT_INTERVAL</p></td>
<td><p>VT_UI4</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_PROPERTY_CHANGE_SENSITIVITY</p></td>
<td><p>VT_UNKNOWN</p></td>
</tr>
<tr class="odd">
<td><p>SENSOR_PROPERTY_ CLEAR_ASSISTANCE_DATA</p>
<p>(PID = 2)</p></td>
<td><p>VT_UI4</p>
<p>Write. The assistance data to be cleared. Setting a value of GNSS_CLEAR_ALL_ASSISTANCE_DATA signals the driver to clear all assistance data, including time, almanac, ephemeris and last position.</p>
<p>WHCK tests can set this value to clear the assistance data before a cold start test, AGPS tests or independently before running simulator tests where time and location is simulated. If A-GPS capabilities e.g. SUPL, LTO is supported, driver can try to utilize them after this operation by using the network connection. However, it should be in a state where no assistance data is saved in the device or on the system. Any assistance data elements shall be downloaded again.</p></td>
</tr>
<tr class="even">
<td><p>SENSOR_PROPERTY_TURN_ON_OFF_NMEA</p>
<p>(PID = 3)</p></td>
<td><p>VT_UI4</p>
<p>Read/Write. If set to TRUE, NMEA sentence shall be included in data reports. If set to False, NMEA sentence shall not be included in data reports.</p>
<p>WHCK tests can use this property to instruct the device to start sending NMEA data or stop including it in data reports.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Sensor%20Settable%20Properties%20Verification%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




