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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Power%20State%20Transitions%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





