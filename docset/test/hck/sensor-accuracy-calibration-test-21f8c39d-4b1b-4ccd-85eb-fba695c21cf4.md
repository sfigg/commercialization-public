---
author: joshbax-msft
title: Sensor Accuracy Calibration Test
description: Sensor Accuracy Calibration Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: beaec01a-0a75-41db-a303-ea6994261f6d
---

# Sensor Accuracy Calibration Test


This manual WHCK test validates the Magnetometer accuracy datafield value, if it is implemented, for an uncalibrated and subsequently calibrated Device Orientation Sensor device.

In an uncalibrated state, the accuracy value is expected to be \_UNRELIABLE. In a calibrated state, the value is expected to be \_HIGH. If the datafield is not implemented by the sensor solution provider, the test simply passes.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.Sensor.Base.Discretional</p>
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
<td><p>Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Sensor Device Testing Prerequisites](sensor-device-testing-prerequisites.md)

Test Instructions:

1.  At the beginning, you are prompted to flush the sensor calibration data.

    -   There is no general way to perform this flush operation.

    -   The procedure can be specific to the Sensor solution vendor.

    -   If no specific solution is provided by the vendor, this operation can be performed by bringing a fairly powerful magnet close to the system.

2.  After the calibration flush operation, a reboot operation is initiated, after which the accuracy value expected is \_UNRELIABLE. If it is not, the test fails at this point.

3.  Next, you are prompted to begin a calibration operation. The maximum time for calibrating the sensor device is set to five minutes.

    -   There can be a vendor-specific way or tool to perform the sensor calibration.

    -   If no specific solution is provided by the vendor, the system can be moved along the three axes in the air to transcribe the number eight.

4.  During the calibration phase of five minutes, even if a \_HIGH accuracy value is detected, the test passes immediately. Otherwise, the time window expires and the test fails.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Input Testing](troubleshooting-deviceinput-testing.md).

 

 






