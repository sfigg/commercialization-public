---
author: joshbax-msft
title: Device Bezel Integration
description: Device Bezel Integration
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 826c533e-772c-47a9-9c76-3f9270398ac0
---

# Device Bezel Integration


## Test name


**Test.DeviceBezel.json**

## Core requirements tested


Device.Digitizer.PrecisionTouchPad.Hardware.Bezel

## Test purpose


Verifies that the device is integrated correctly.

## Tools required


-   **PTLogo.exe**

-   Depth gauge or micrometer (or pre-fabricated 1.5mm thick material)

## Validation steps


1.  Start **Test.DeviceBezel.json**.

2.  If the digitizer surface is above or more than 1.5mm below the edge of the bezel area surrounding it, manually fail the iteration; otherwise, manually pass the iteration.

    To test height, place the corner of a 1.5mm thick sheet on top of the touchpad. If the touchpad and the sheet are still lower than the bezel, the separation is too great and this test should be marked as a failure.

## Common errors


None

## Passing


1/1 (100%) iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 







