---
title: Edge Gutter
description: This is to test the performance of a Windows pen device in the \ 0034;gutter \ 0034; along the edges of the screen.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 620DCDE5-F540-42B9-8860-70C521CDBA0F
---

# Edge Gutter


This is to test the performance of a Windows pen device in the "gutter" along the edges of the screen.

**Test name**

-   Edge Gutter

**Core requirements tested**

-   Device.Input.Digitizer.Pen.Accuracy

**Test purpose**

-   Verifies that the pen can accurately perform swipe gestures at the edges of the screen.

**Tools required**

-   None.

**Validation steps**

1. Run the test case for Edge Gutter.
2. Position the pen anywhere above the green highlighted region on the screen. Bring the pen into contact with the screen, and then move the pen tip inwards towards the opposite side of the screen as quickly as possible.
o Ensure that the pen remains in contact with the screen during the entire motion.
Here's a screenshot from the Edge Gutter test.

![screenshot from the edge gutter test for a windows pen device.](../images/pen-test-edgegutter.png)

**Common error messages**

-   "Pen edge swipe did not move far enough"
    Occurs if the pen tip did not travel at least 4.5mm from the highlighted region during the swipe.
-   "Pen edge swipe did not move fast enough"
    Occurs if the pen tip did not move &gt; 4.5 mm within 900ms from the beginning of the swipe.
-   "Pen edge swipe angle too wide"
    Occurs if the angle of the swipe was greater than 55 degrees from the perpendicular of the edge.

**Passing criteria**

-   14/16 test iterations must pass for the test to succeed.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Edge%20Gutter%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




