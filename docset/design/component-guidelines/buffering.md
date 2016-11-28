---
title: Buffering
description: This is to test the data buffering behavior of a Windows pen device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 92BF201A-8A86-4E9C-8CFD-D5EE96CB9BA3
---

# Buffering


This is to test the data buffering behavior of a Windows pen device.

**Test name**

-   Buffering

**Core requirements tested**

-   Device.Input.Digitizer.Pen.Buffering

**Test purpose**

-   Verifies that the device has no data loss on wake from low power states.

**Tools required**

-   None.

**Validation steps**

1. Run the test case for buffering.
2. Set the pen out of range of the screen for at least 60 seconds.
3. Following the directions on the screen, you will perform a swipe with the pen across the screen:
a. The swipe must be quick, the entire interaction (from entering hover range to leaving hover range) must be completed in less than half a second.
b. The swipe must make contact with the screen.
c. While in contact with the screen, the pen must make a displacement of &gt; 4mm.
Here's a screenshot from the Buffering test.

![screenshot from the buffering test for a windows pen device.](../images/pen-test-buffer.png)

**Common error messages**

-   "Pen was not idle long enough"
    Occurs if the device was not left in idle state for at least 60 seconds.
-   "Stroke displacement too low"
    Occurs if the pen swipe did not make a displacement of &gt; 4mm.
-   "The interaction's duration was too long"
    Occurs if the pen swipe lasted more than half a second.

**Passing criteria**

-   1/1 test iterations must pass for test to succeed.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Buffering%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




