---
author: joshbax-msft
title: Aliasing
description: Aliasing
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 337c779b-3624-4443-ab6a-f630f8a7367c
---

# Aliasing


## Test name


**Test.Aliasing.json**

## Core requirements tested


Device.Input.PrecisionTouchpad.Performance.MinSeparation

## Test purpose


Verifies that the device can track and report unique continually arriving and departing contacts without aliasing at fixed separation distances.

## Tools required


**PTLogo.exe**

## Validation steps


1.  Start **Test.Aliasing.json**.

2.  Place two fingers ~15mm apart horizontally.

3.  Alternating between the two fingers, tap the touchpad at 240 taps per minute.

    When tapping, hold down a contact until it is time to make another tap with that contact, rather than making light taps (in order to interleave the down times of the two contacts)

4.  Verify that after tapping for ten seconds, there is no line drawn between these contacts.

5.  Repeat steps 2 through 5 with fingers aligned on the vertical axis.

6.  Repeat steps 2 through 5 with fingers aligned on the diagonal axis.

7.  Manually pass the iteration if validation in every axis was successful.

8.  Repeat steps 2 through 7 with fingers ~40mm apart.

    **Note**  
    If the device has a height &lt; 40mm, verify vertical aliasing at the maximum possible distance.

     

## Common errors


\[20\] Positional delta too large

-   Aliasing caused device contact swap, thereby causing device to report a quick swipe.

-   The value represents the displacement distance.

-   Any displacement &gt; 270 (2.7mm) will result in this error.

![aliasing failure delta too large](images/hck-winb-aliasingfailuredeltatoolarge.png)

**Figure 1 Aliasing Failure - Positional Delta Too Large**

## Passing


2/2 (100%) iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Aliasing%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





