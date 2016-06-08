---
title: Eraser
description: This is a test for the eraser feature of a Windows pen device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0FA24F2C-1038-417A-9160-9FBD4B7481C8
---

# Eraser


This is a test for the eraser feature of a Windows pen device.

**Test name**

-   Eraser

**Core requirements tested**

-   Device.Input.Digitizer.Pen.Eraser.

**Test purpose**

-   Verifies that the pen reports eraser button flag correctly.

**Tools required**

-   None (PT3 with Pen Holder optional).

**Validation steps**

1. Run the test case for Eraser.

2. With the pen's eraser affordance disabled, hold the pen in hover range over the green highlighted region until it turns yellow (at least 2 seconds).

3. Enable the pen’s eraser affordance and hold the pen in hover range until it the yellow highlighted region turns green (at least 2 seconds).

o If the pen has an eraser button, press it and continue holding the pen in hover range.
o If the pen has a tail-end eraser, flip the pen over and hold the eraser in hover range over the region.
4. With the pen's eraser affordance still enabled, bring the pen in contact with the screen, and hold it until the green highlighted region turns yellow (at least 2 seconds).

5. With the pen's eraser affordance still enabled, move the pen back into hover range, and hold it until the yellow highlighted region turns green (at least 2 seconds).

6. Disable the pen’s eraser affordance and hold the pen in hover range until the green highlighted region turns yellow (at least two seconds).

o If the pen has an eraser button, release it and continue holding the pen in hover range.
o If the pen has a tail-end eraser, flip the pen over and hold the pen tip in hover range over the region.
7. Lift the pen out of hover range.

Here's a screenshot from the Eraser test.

![screenshot from the eraser test for a windows pen device.](images/pen-test-eraser.png)

**Common error messages**

-   "Button flags set incorrectly"
    Occurs if any packet contains incorrect button flags relative to the pen’s current state.
-   "Pen was not hovering or in contact for long enough"
    Occurs if the pen is not left hovering or in contact for the required duration.
-   "The contact did not begin/end in the correct location"
    Occurs if the pen stroke does not begin and end in the green rectangle.

**Passing criteria**

-   2/2 test iterations must pass for the test to succeed.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Eraser%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




