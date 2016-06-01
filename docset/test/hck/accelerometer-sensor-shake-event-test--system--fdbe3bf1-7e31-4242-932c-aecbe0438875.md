---
author: joshbax-msft
title: Accelerometer Sensor Shake Event Test (System)
description: Accelerometer Sensor Shake Event Test (System)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e4072bf8-9003-40ec-bdd4-b1ab00516126
---

# Accelerometer Sensor Shake Event Test (System)


This test detects high-frequency content in the accelerometer due to a shake.

This is a system-specific implementation of an existing test. For more information on this test, see [Accelerometer Sensor Shake Event Test](accelerometer-sensor-shake-event-test-0dd5d2b3-dfc4-475d-abab-f4a97a8cf977.md).

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


Before you run the test, complete the test setup as described in the test requirements: [Sensor Device Testing Prerequisites](sensor-device-testing-prerequisites.md)

If a shake event is supported by the accelerometer sensor, you are asked to initiate some action to cause the shake event to occur. The test then verifies if the shake event has the intended event ID.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Input Testing](troubleshooting-deviceinput-testing.md).

 

 






