---
title: Hover Accuracy
description: This is a test of the accuracy of reporting that a Windows pen device is hovering.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8E3198F1-446B-42C4-80F0-0709971CFAB9
---

# Hover Accuracy


This is a test of the accuracy of reporting that a Windows pen device is hovering.

**Test name**

-   Pen.HoverAccuracy

**Core requirements tested**

-   Device.Input.Digitizer.Pen.Accuracy – Hover Accuracy.

**Test purpose**

-   Verifies that the pen reports hover accuracy within prescribed limits.

**Tools required**

-   PT3 with Pen holder.

**Validation steps**

1. Slowly lower the pen down to approximately 5 mm from the screen (in hover range) in the highlighted quadrant.

2. Once the quadrant turns yellow, after a couple of seconds, lower the pen as slowly as possible until it hits the screen.

3. Once the pen is in contact with the screen, the color turns green.

4. Then start moving the pen away from the screen upwards.

Here's a screenshot from the Hover Accuracy test.

![screenshot from the hover accuracy test for a windows pen device.](images/pen-test-hoveraccuracy.png)

**Common error messages**

-   "The contact did not begin/end in the correct location"
    Occurs if the pen stroke does not begin and end in the green rectangle.
-   "Input did not make contact with the screen"
    Occurs if the pen interaction never touches the screen.
-   "Contact distance from hover point too large”
    Occurs if the pen’s hover accuracy does not pass the requirement.

**Passing criteria**

-   7/8 test iterations must pass for the test to succeed.
-   This test has a 0.2 mm allowed tolerance, therefore a recorded hover accuracy &lt;= 1.2 mm will result in a pass.
-   Any iteration that is 0.2 mm beyond the allowed tolerance, resulting in a recorded hover accuracy &gt;= 1.4 mm, will fail the entire test.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Hover%20Accuracy%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




