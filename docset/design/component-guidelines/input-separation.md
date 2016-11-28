---
title: Input Separation
description: This is to test the touch input separation capabilities of a Windows Touchscreen device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: B91DCF0C-B981-48D3-894F-AA0A482F4260
---

# Input Separation


This is to test the touch input separation capabilities of a Windows Touchscreen device.

**Test name**

InputSeparation.json
**Associated compatibility requirements**

Device.Input.Digitizer.Touch.FingerSeparation
**Test purpose**

Verifies that a Windows Touchscreen device meets the requirements for zoom, and multi-finger tap and swipe motions.
**Tools required**

PT3
**Running the test**

Users often place their fingers close together in fast-paced games, drawing applications, musical instrument applications, and other common applications. In addition, Windows supports a system of touch gestures that let users who have low vision, fully explore the user interface (UI) and accomplish common tasks. Much of this gesture language relies on multiple fingers in close proximity.

This test consists of five scenarios that enforce the requirement that contacts in close proximity must be recognized separately. Broadly, this test verifies that a device meets these requirements during horizontal, vertical, and diagonal motion, and during a pinch gesture.

**Command syntax**

Logo3.exe -config InputSeparation.json
**Passing criteria**

100% of the iterations must pass in order to complete with passing status.
 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Input%20Separation%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




