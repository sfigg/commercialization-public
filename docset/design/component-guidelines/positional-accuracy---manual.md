---
title: Positional Accuracy - Manual
description: This is to test the positional reporting accuracy of a Windows Precision Touchpad device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7D2550C8-9F2B-48D2-9906-9E6878F37489
---

# Positional Accuracy - Manual


This is to test the positional reporting accuracy of a Windows Precision Touchpad device.

**Test name**

-   Test.PositionalAccuracyManual.json

**Core requirements tested**

-   Device.Input.Digitizer.Base.HIDCompliant

**Test purpose**

-   Verifies that the device is able to report absolute position accurately.

**Tools required**

-   PTLogo.exe

**Validation steps**

1. Launch Test.PositionalAccuracyManual.json.

2. **Iteration One:**

o Horizontally drag three fingers straight across 1/3 of touchpad.

o Without lifting, continue moving across the touchpad in a zigzag pattern.

o Without lifting, continue in a straight line across the last 1/3 of the touchpad.

o Verify that the displayed image matches physical finger movements, and then manually Pass or Fail the test accordingly.

Here's a screenshot from the test, showing traces from **Iteration One**.

![a screensot from the possitional accuracy test for a windows precision touchpad device, showing the result from performing iteration one.](images/precision-test-posaccu1.png)

3. Repeat vertically for **Iteration Two**, and then diagonally for **Iteration Three**.

4. **Iteration Four:**

o Tap 20 times randomly on the touchpad.

o Verify that the displayed image matches your taps and there is no jitter, as shown in the following screenshot. Manually Pass or Fail the test accordingly.

![a screensot from the possitional accuracy test for a windows precision touchpad device, showing the result from performing iteration four.](images/precision-test-posaccu4.png)

In the preceding screenshot, the majority of taps are fine. The top circled contact is borderline – there was travel over the contact lifetime, but not a lot. Generally, up to 1mm (half a grid line) should be considered a Pass, as long as most are like the middle circled contact. The bottom circled contact shows travel greater than half a grid, which should be considered a failure for this test.

5. **Iteration Five:**

o Draw a curved line with your finger.

o Without slowing or changing direction, lift your finger.

o Verify that the displayed image matches your curves and there is no jitter on lift, as shown in the following screenshot. Manually Pass or Fail the test accordingly.

![a screensot from the possitional accuracy test for a windows precision touchpad device, showing the result from performing iteration five.](images/precision-test-posaccu5.png)

The key issues to look for in this iteration, are the hooks that are drawn when you lift your finger. In the circled example, the contact jittered to the left by a significant amount on contact lift. Consider any hook larger than a quarter of a grid as a failure.

6. **Iteration Six:**

o Draw a curved line with your finger.

o Without lifting your finger, pause for 1 second.

o Click the physical button, and lift.

o Verify that the displayed image matches your curves and there is no jitter on lift, as shown in the following screenshot. Manually Pass or Fail the test accordingly.

![a screensot from the possitional accuracy test for a windows precision touchpad device, showing the result from performing iteration six.](images/precision-test-posaccu6.png)

In this test, there will be extra data as the physical button is clicked, so it’s harder to judge by looking at the data itself. Instead, watch the mouse cursor as you click and lift. If the cursor moves more than half a grid box as you click, consider this test a failure. In the circled example, the cursor moved significantly on click and the example should be considered a failure.

**Common error messages**

-   None.

**Passing criteria**

-   6/6 (100%) iterations must pass in order to complete with passing status.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Positional%20Accuracy%20-%20Manual%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




