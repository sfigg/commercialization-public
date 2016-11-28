---
title: Hover Range
description: This is to test the hovering range for a Windows pen device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 68C64C83-C871-4CF5-832B-033BEC9AADB2
---

# Hover Range


This is to test the hovering range for a Windows pen device.

**Test name**

-   Pen.HoverRange

**Core requirements tested**

-   Device.Input.Digitizer.Pen.HoverRange

**Test purpose**

-   Verifies that the pen has sufficient hover range.

**Tools required**

-   PT3 tool with pen holder.
-   Ruler or caliper.

**Validation steps**

1. Lower the pen slowly towards the screen in the highlighted quadrant.

2. The color of the quadrant turns yellow once (x,y) are reported.

3. Measure the distance between the pen tip and the screen by using a ruler or caliper.

4. After measuring, move the pen out of hover range.

5. If the distance measured was equal to or more than 5 mm, hit Pass. Else hit Fail button.

Here's a screenshot of the Hover - Range test.

![screenshot from the hover range test for a windows pen device.](../images/pen-test-hoverrange.png)

**Common error messages**

-   "Contact is not hovering in the correct quadrant"
    Occurs if pen input is detected in an area other than the highlighted quadrant.
-   "Manually failed by user"
    Occurs if the operator manually Fails the test (Fails the hover range requirement).

**Passing criteria**

-   4/4 test iterations must pass for the test to succeed.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Hover%20Range%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




