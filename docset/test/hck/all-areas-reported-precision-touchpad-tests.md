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

 

 







