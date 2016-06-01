---
author: joshbax-msft
title: Test.PowerStateReliability
description: Test.PowerStateReliability
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c1bccdc1-cd05-44e5-a0d3-4c033bb7daf1
---

# Test.PowerStateReliability


The test verifies that the device can wake the system from CS/S3 with both contact and button press, and handles power state transitions gracefully.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.PrecisionTouchpad.I2C.ColdBootLatency Device.Input.PrecisionTouchpad.Performance.IdleTouchdownLatency Device.Input.PrecisionTouchpad.Reliability.PowerStates Device.Input.PrecisionTouchpad.USB.ColdBootLatency Device.Input.PrecisionTouchpad.WakeFunctionality Device.Input.PrecisionTouchpad.WakeSource System.Client.PrecisionTouchpad.PrecisionTouchpad</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
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
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Mouse or other Pointing Device Testing Prerequisites](mouse-or-other-pointing-device-testing-prerequisites.md).

1.  Verify that the touchpad calibrates from a small contact on boot:

    1.  Shut down the system.

    2.  Put one small capacitive contact (either a finger or by using the PT3) on the digitizer surface.

    3.  Power on the system and leave the contact there until login is complete.

    4.  Lift contact and then interact with the PTP (move cursor, one-finger tap, two-finger tap, and two-finger panning).

    5.  Verify that the touchpad behaves as expected.

2.  Verify that the touchpad calibrates from a large contact on boot:

    1.  Shut down the system.

    2.  Put an entire palm on the digitizer surface.

    3.  Power on the system and leave the contact there until login is complete.

    4.  Lift contact and then interact with the PTP (move cursor, one-finger tap, two-finger tap, and two-finger panning).

    5.  Verify that the touchpad behaves as expected.

3.  Verify that the touchpad calibrates from a small contact after sleep:

    1.  Put the system to sleep.

    2.  Put one small capacitive contact (either a finger or by using the PT3) on the digitizer surface.

    3.  Wake up the system and leave the contact there until login is complete.

    4.  Lift contact and then interact with the PTP (move cursor, one-finger tap, two-finger tap, and two-finger panning).

    5.  Verify that the touchpad behaves as expected.

4.  Verify that the touchpad powers up quickly:

    1.  Shut down and cold-boot the system.

    2.  As soon as the logon screen comes up, start performing quick swipes on the touchpad.

    3.  Verify that the cursor moves.

5.  Verify that the system wakes with a capacitive contact:

    1.  Put the system to sleep.

    2.  Wait ten seconds.

    3.  Put a contact on the digitizer surface, without exceeding the button activation force.

    4.  Verify that the system wakes up within three seconds.

6.  Verify that the system wakes by depressing the physical button:

    1.  Put the system to sleep.

    2.  Wait ten seconds.

    3.  Place a non-capacitive contact on the digitizer surface, and press down the physical button.

    4.  Verify that the system wakes up within one second.

7.  Launch Test.PowerStateReliability.

8.  If each of the preceding scenarios (1-6) behaves as expected, manually pass the test (Press **P**). If not, fail the test (Press **F**).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Input Testing](troubleshooting-deviceinput-testing.md).

## More information


### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>ptlogo.exe Test.PowerStateReliability.json</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

### File list

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>File</th>
<th>Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>ptlogo.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\input\PrecisionTouchpad\</p></td>
</tr>
<tr class="even">
<td><p>config.json</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\input\PrecisionTouchpad\</p></td>
</tr>
<tr class="odd">
<td><p>Test.PowerStateReliability.json</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\input\PrecisionTouchpad\</p></td>
</tr>
</tbody>
</table>

 

 

 






