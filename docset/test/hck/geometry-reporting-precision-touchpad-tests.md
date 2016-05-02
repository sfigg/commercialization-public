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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Geometry%20Reporting%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





