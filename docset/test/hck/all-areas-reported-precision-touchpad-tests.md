---
author: joshbax-msft
title: All Areas Reported
description: All Areas Reported
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 35b11f14-75d4-4fc1-a836-066826d3e166
---

# All Areas Reported


## Test name


**Test.AllAreas.json**

## Core requirements tested


Device.Input.PrecisionTouchpad.Reliability.ContactsReported

## Test purpose


Verifies that the device can report contacts in all areas of the digitizer surface.

## Tools required


**PTLogo.exe**

## Validation steps


1.  Start **Test.AllAreas.json**

2.  Following the directions on the screen, perform 5 taps in each general region of the touchpad (top left, top right, bottom left, bottom right, and center):

    1.  Tap anywhere inside the specified region.

        For example, if top left is specified, tap anywhere left of center and above the middle of the touchpad.

        1.  Tap a different random location for each of the 5 iterations.

        2.  If the tap occurs in the expected region, PTLogo will automatically pass the iteration.

        3.  If no tap is registered for a given region, manually fail the iteration.

    2.  After 5 taps, the onscreen instructions will indicate the next region to tap. Repeat the steps in a. above for each subsequent region as indicated.

## Common errors


None

## Passing


25/25 (100%) iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20All%20Areas%20Reported%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





