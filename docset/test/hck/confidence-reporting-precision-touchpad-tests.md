---
author: joshbax-msft
title: Confidence Reporting
description: Confidence Reporting
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 674d09ed-51d4-4802-ab49-28411649cbe0
---

# Confidence Reporting


## Test name


**Test.Confidence.json**

## Core requirements tested


Device.Input.PrecisionTouchpad.HIDCompliance.HIDCompliance

## Test purpose


Verifies that the device can report lack of confidence (by turning off the confidence bit for a contact) when a contact exceeds the sizing of an intentional finger contact.

## Tools required


-   **PTLogo.exe**

-   A 140g or 190g slug ordered from ITRI or Triex

## Validation steps


1.  Start **Test.Confidence.json**.

2.  Place a 27mm-29mm diameter contact straight down onto the surface of the touchpad for at least 5 seconds.

    One of the weighted contacts from the Click Pressure test may be turned upside down to get a uniform, large contact.

3.  Remove the contact. PTLogo will automatically verify that the confidence bit was cleared in the required time and remained cleared for the contact lifetime. If no reporting errors are detected, it will automatically pass the iteration.

## Common errors


-   \[30\] confidence bit set too long.

    The device is not clearing the confidence bit within 50ms of contact reporting.

-   \[7\] test didn’t receive enough data.

    User lifted off of the touchpad too early.

## Passing


1/1 (100%) iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Confidence%20Reporting%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





