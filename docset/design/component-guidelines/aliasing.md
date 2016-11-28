---
title: Aliasing
description: This is to test the contact reporting capabilities of a Windows Precision Touchpad device, with respect to aliasing.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: C0A40058-FBFD-4127-B835-98A1BB0CE647
---

# Aliasing


This is to test the contact reporting capabilities of a Windows Precision Touchpad device, with respect to aliasing.

**Test name**

-   Test.Aliasing.json

**Core requirements tested**

-   Device.Input.Digitizer.PrecisionTouchpad.FingerSeparation

**Test purpose**

-   Verifies that the device can track and report unique, continually arriving and departing contacts without aliasing at fixed separation distances.

**Tools required**

-   PTLogo.exe

**Validation steps**

1. Launch Test.Aliasing.json.

2. Place two fingers approximately10mm apart, horizontally.

3. Alternating between the two fingers, tap the touchpad at 240 taps/minute. When tapping, hold down a contact until it is time to make another tap with that contact (in order to interleave the down times of the two contacts), rather than making light taps, one after another.

4. Verify that after tapping for 10 seconds, there is no line drawn between these contacts (see Common Errors for an example of a failure).

5. Repeat **Step 2** to **Step 5** with fingers aligned on the vertical axis.

6. Repeat **Step 2** to **Step 5** with fingers aligned on the diagonal axis.

7. Manually pass the iteration, if validation in every axis was successful.

8. Repeat **Step 2** to **Step 7** with fingers approximately 33mm apart.

**Note**  If the Precision Touchpad device has a height of less than 33mm, you should verify vertical aliasing at the maximum possible distance.

 

**Common error messages**

-   "\[20\] Positional delta too large"
    o Aliasing caused device contact swap, thus causing device to report a quick swipe.
    o The value represents the displacement distance.
    o Any displacement greater than 270 himetric units (2.7mm) will result in this error.

Here's a screenshot from the Aliasing test, showing a displacement distance that is too large.

![screenshot from the aliasing test for a windows precision touchpad device, showing a displacement distance that is too large.](../images/precision-test-alias.png)

**Passing criteria**

-   2/2 (100%) iterations must pass in order to complete with passing status.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Aliasing%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




