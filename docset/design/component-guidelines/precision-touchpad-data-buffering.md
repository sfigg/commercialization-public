---
title: Buffering
description: This is to test the data buffering behavior of a Windows Precision Touchpad device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 93E19695-816F-4F25-B649-E61E58D2A3E5
---

# Buffering


This is to test the data buffering behavior of a Windows Precision Touchpad device.

**Test name**

-   Test.Buffering.json

**Core requirements tested**

-   Device.Input.Digitizer.PrecisionTouchpad.Buffering

**Test purpose**

-   Verifies that the device has no data loss on wake from low power states.

**Tools required**

-   PTLogo.exe

**Validation steps**

1. Launch Test.Buffering.json.

2. Follow the directions on the screen and perform a swipe with the maximum number of supported fingers on the touchpad.
3. The swipe should start at the top of the touchpad, and continue past the center of the device – this motion should be quick, no longer than a half second.

4. The test will pass if the swipe was fully registered.

5. Repeat this test 5 times.

**Common error messages**

-   None.

**Passing criteria**

-   5/5 (100%) iterations must pass in order to complete with passing status.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Buffering%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




