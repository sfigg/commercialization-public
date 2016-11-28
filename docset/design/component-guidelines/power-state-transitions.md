---
title: Power State Transitions
description: This is to test the behavior of a Windows Precision Touchpad device during power state transitions.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5B1F4D44-D8BB-407E-B004-BFC32CE02408
---

# Power State Transitions


This is to test the behavior of a Windows Precision Touchpad device during power state transitions.

**Test name**

-   Test.PowerStateReliability.json

**Core requirements tested**

-   Device.Input.Digitizer.Base.ContactReports

-   Device.Input.Digitizer.PrecisionTouchpad.Latency

**Test purpose**

-   Verifies that the device is able to wake the system from sleep state S3, with both contact and button presses, and also handle power state transitions gracefully.

**Tools required**

-   PTLogo.exe

**Validation steps**

1. Verify that the touchpad calibrates from a small contact on boot. Perform the following steps:
a. Shut down the system.

b. While the system is powered off, place one small capacitive contact (either a finger or the PT3 device) on the digitizer surface.

c. Power on the system and leave the contact there until login is complete.

d. Lift contact, then interact with the PTP (move cursor, 1-finger tap, 2-finger tap, and 2 finger panning).

e. Verify that the touchpad behaves as expected.

2. Verify that the touchpad calibrates from a large contact on boot. Perform the following steps:

a. Shut down the system.

b. While the system is powered off, place an entire palm on the digitizer surface.

c. Power on the system and leave the contact there until login is complete.

d. Lift contact, then interact with the PTP (move cursor, 1-finger tap, 2-finger tap, and 2 finger panning).

e. Verify that the touchpad behaves as expected.

3. Verify that the touchpad powers up quickly. Perform the following steps:

a. Completely shut down the system, then boot it up again.

b. As soon as the logon screen comes up, start performing quick swipes on the touchpad.

c. Verify that the cursor moves.

4. Launch Test.PowerstateReliability.json.

5. If the touchpad behaved as expected in each of the preceding scenarios, manually pass the test. If not, fail the test.

**Common error messages**

-   None.

**Passing criteria**

-   6/6 manual iterations must pass in order to complete with passing status.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Power%20State%20Transitions%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




