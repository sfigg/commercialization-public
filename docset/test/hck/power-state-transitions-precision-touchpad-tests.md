---
author: joshbax-msft
title: Power State Transitions
description: Power State Transitions
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 868d1337-210b-44f9-8733-d45864b0c99c
---

# Power State Transitions


## Test name


**Test.PowerStateReliability.json**

## Core requirements tested


-   Device.Input.PrecisionTouchpad.WakeFunctionality

-   Device.Input.PrecisionTouchpad.WakeSource

-   Device.Input.PrecisionTouchpad.I2C.ColdBootLatency

-   Device.Input.PrecisionTouchpad.Performance.IdleTouchdownLatency

-   Device.Input.PrecisionTouchpad.Reliability.PowerStates

-   Device.Input.PrecisionTouchpad.USB.ColdBootLatency

## Test purpose


Verifies that the device is able to wake the system from CS/S3 with both contact and button press, and gracefully handle power state transitions.

## Tools required


**PTLogo.exe**

## Validation steps


1.  If this is a USB connected Precision Touchpad, make sure that Selective Suspend is ENABLED. See [Windows Precision Touchpad Device Validation Guide](windows-precision-touchpad-device-validation-guide.md#selectsuspend).

2.  Verify that the touchpad calibrates from a small contact on boot:

    1.  Shut down the system.

    2.  While it is powered off, place one small capacitive contact (either a finger or with the PT3) on the digitizer surface.

    3.  Power on the system and leave the contact there until login is complete.

    4.  Lift contact, and then interact with the PTP (move cursor, 1-finger tap, 2-finger tap, and 2 finger panning).

    5.  Verify that the touchpad behaves as expected.

3.  Verify that the touchpad calibrates from a large contact on boot:

    1.  Shut down the system.

    2.  While it is powered off, place an entire palm on the digitizer surface.

    3.  Power on the system and leave the contact there until login is complete.

    4.  Lift contact, and then interact with the PTP (move cursor, 1-finger tap, 2-finger tap, and 2 finger panning).

    5.  Verify that the touchpad behaves as expected.

4.  Verify that the touchpad powers up quickly:

    1.  Completely shut down the system, and then boot it up again.

    2.  As soon as the logon screen comes up, start performing quick swipes on the touchpad.

    3.  Verify that the cursor moves.

5.  Verify that the system wakes with a capacitive contact:

    1.  Using the touchpad to navigate the Settings charm, put the system to sleep.

    2.  Wait ten seconds.

    3.  Place a contact on the digitizer surface, without exceeding the button activation force.

    4.  Verify that the system wakes up within three seconds.

6.  Start **Test.PowerstateReliability.json**.

7.  If each of the above scenarios behaves as expected, manually pass the test. If not, fail the test.

## Common errors


None

## Passing


6/6 manual iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 







