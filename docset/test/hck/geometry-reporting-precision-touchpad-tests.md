---
author: joshbax-msft
title: Geometry Reporting
description: Geometry Reporting
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: dc93c0b8-2f4a-4931-8de9-80500436664b
---

# Geometry Reporting


## Test name


**Test.Geometry.json**

## Core requirements tested


Device.Input.PrecisionTouchpad.Precision.Geometry

## Test purpose


Verifies that the device is capable of reporting contact geometry accurately within required tolerances of +/- 2mm.

## Tools required


-   **PTLogo.exe**

-   QTY 1: 7mm diameter capacitive contacts

-   QTY 1: 9mm diameter capacitive contacts

-   QTY 1: 11mm diameter capacitive contacts

-   QTY 2: 7mmx11mm elliptical capacitive contacts

-   QTY 2: 9mmx14mm elliptical capacitive contacts

-   QTY 2: 11mmx16mm elliptical capacitive contacts

-   PT3

## Validation steps


1.  Start **Test.Geometry.json**.

2.  If the device does not support geometry, tap to automatically pass all 24 iterations:

    -   If no timer appears in the top-right corner of **PTLogo.exe** when the contact is brought down, it means the device does not report geometry.

    -   Alternatively, tap the touchpad. If **PTLogo.exe** reports 100% pass, the device does not report geometry and this test is done. If an error is reported, press the **R** key to restart the test, and follow the instructions to test geometry.

3.  If the device supports geometry:

    -   For iterations 1 and 2, using the PT3, place one 7mm diameter contact anywhere on the touchpad for five seconds.

    -   For iterations 3 and 4, using the PT3, place one 9mm diameter contact anywhere on the touchpad for five seconds.

    -   For iterations 5 and 6, using the PT3, place one 11mm diameter contact anywhere on the touchpad for five seconds.

    -   For iterations 7 and 8, using the PT3, place one 7mmx11mm elliptical contact with the major axis vertically aligned to the touchpad anywhere on the touchpad for five seconds.

    -   For iterations 9 and 10, using the PT3, place one 7mmx11mm elliptical contact with the major axis horizontally aligned to the touchpad anywhere on the touchpad for five seconds.

    -   For iterations 11 and 12, using the PT3, place one 9mmx14mm elliptical contact with the major axis vertically aligned to the touchpad anywhere on the touchpad for five seconds.

    -   For iterations 13 and 14, using the PT3, place one 9mmx14mm elliptical contact with the major axis horizontally aligned to the touchpad anywhere on the touchpad for five seconds.

    -   For iterations 15 and 16, using the PT3, place one 11mmx16mm elliptical contact with the major axis vertically aligned to the touchpad anywhere on the touchpad for five seconds.

    -   For iterations 17 and 18, using the PT3, place one 11mmx16mm elliptical contact with the major axis horizontally aligned to the touchpad anywhere on the touchpad for five seconds.

    -   For iterations 19 and 20, using the PT3, place two 7mmx11mm elliptical contact with the major axis of both contacts vertically aligned to the touchpad anywhere on the touchpad for five seconds.

    -   For iterations 21 and 22, using the PT3, place two 9mmx14mm elliptical contact with the major axis of both contacts vertically aligned to the touchpad anywhere on the touchpad for five seconds.

    -   For iterations 23 and 24, using the PT3, place two 11mmx16mm elliptical contact with the major axis of both contacts vertically aligned to the touchpad anywhere on the touchpad for five seconds.

## Common errors


None

## Passing


24/24 (100%) iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 







