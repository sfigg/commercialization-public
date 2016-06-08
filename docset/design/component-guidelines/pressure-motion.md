---
title: Pressure Motion
description: This is to test the consistency of the pressure reporting by a Windows pen device as it moves across a screen.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4B85A170-33C1-4C7E-9163-54D523AC8F62
---

# Pressure Motion


This is to test the consistency of the pressure reporting by a Windows pen device as it moves across a screen.

**Test name**

-   PressureMotion

**Core requirements tested**

-   Device.Input.Digitizer.Pen.Pressure.

**Test purpose**

-   Verifies that the pen has a consistent level of pressure reported across the screen for given input applied force.

**Tools required**

-   PT3 with Pen holder + 150g weight.

**Validation steps**

1. Run the test case for Pressure Motion.

2. Following the directions on the screen, lower the pen (which has an applied nominal weight to it) in contact with the screen within the highlighted green section.

-   Ensure that the pen is held in contact with the screen by the weight of the pen, holder, and applied weight, and not by a manual downward force applied to the testing jig.

3. Starting from within the green rectangle, slowly move the pen in contact with the screen, ending within the yellow rectangle. The pen must not be lifted from the screen while in motion, this should last for a minimum of 1 second, and should not take longer than 10 seconds.

Here's a screenshot from the Pressure Motion test.

![screenshot from the pressure motion test for a windows pen device.](images/pen-test-pressmotion.png)

**Common error messages**

-   "Pressure variation is too high."
    Occurs if the reported pressure level is beyond the allowed variance across the screen.

**Passing criteria**

-   2/2 test iterations must pass for test to succeed.
-   The test allows for reported pressure to vary by +/- 5% while moving across the screen.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Pressure%20Motion%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




