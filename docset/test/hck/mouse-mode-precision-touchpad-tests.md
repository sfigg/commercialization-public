---
author: joshbax-msft
title: Mouse Mode
description: Mouse Mode
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 54663ddb-3837-4f1d-a07f-5cd5fa4162bf
---

# Mouse Mode


## Test name


**Test.MouseMode.json**

## Core requirements tested


-   Device.Digitizer.PrecisionTouchPad.HIDCompliance.MouseMode

-   Device.Input.PrecisionTouchpad.HIDCompliance.TouchpadMode

## Test purpose


Verifies that the device is able to support mouse mode reporting and input mode switching.

## Tools required


**PTLogo.exe**

## Validation steps


1.  Verify that test machine has test signing turned on. See [Windows Precision Touchpad Device Validation Guide](windows-precision-touchpad-device-validation-guide.md#gen) for instructions.

2.  Start **Test.MouseMode.json**.

3.  Move one finger on touchpad and verify the following:

    1.  The mouse cursor moves as expected.

    2.  PTLogo should show no contact visualization on the screen, and clicking should not turn the bar green.

4.  If the above conditions are met, manually pass the iteration; otherwise, fail the iteration.

## Common errors


None

## Passing


1/1 (100%) iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 







