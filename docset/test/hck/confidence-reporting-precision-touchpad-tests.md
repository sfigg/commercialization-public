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

 

 







