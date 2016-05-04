---
author: joshbax-msft
title: Sensor HID Firmware Test
description: Sensor HID Firmware Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 34d6fbd1-22cb-48b2-87d3-f4ee6d302a68
---

# Sensor HID Firmware Test


Any sensor device that uses the SensorsHIDClassDriver.dll driver included with Windows must be compliant with all recommendations in the [Sensors HID Annotation](http://msdn.microsoft.com/library/windows/hardware/br259128.aspx) document. In the course of executing the sensor, no ETW error events should be raised by the SensorsHIDClassDriver.dll.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.Sensor.Base.HID.Discretional</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Basic</p></td>
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

 

 






