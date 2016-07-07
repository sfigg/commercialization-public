---
author: joshbax-msft
title: Device Button Reporting
description: Device Button Reporting
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 03854f69-1dde-4220-8cff-b3f581cb1a91
---

# Device Button Reporting


## Test name


**Test.DeviceButton.json**

## Core requirements tested


Device.Input.PrecisionTouchpad.Hardware.Clickpad

## Test purpose


Verifies that the device reports button presses correctly.

## Tools required


**PTLogo.exe**

## Validation steps


1.  Start **Test.DeviceButton.json**.

2.  Iteration 1 - Button presses with capacitive contacts:

    1.  Place a finger in the button activation area of the digitizer surface (see *Figure 1 Button Activation Area*), and exert sufficient activation force to register a button press. Verify that the button state is down (the grey bar at the bottom of PTLogo tool should turn green), and that the button state returns to off when contact is lifted.

        ![positive activation force testing area](images/hck-winb-positiveactivationforcetestingarea.png)

        **Figure 1 Button Activation Area**

    2.  Repeat last step with 2, 3… *N* contacts, where *N* is the maximum number of contacts that are supported by the device. Contacts should always maintain a minimum separation distance of 15mm.

    3.  Place two fingers in the button activation area of the digitizer surface (see *Figure 1 Button Activation Area*), and exert sufficient activation force to register a button press. Maintain activation force with one finger and lift the second finger. PTLogo with automatically check that the button state is reported consistently.

    4.  Place three fingers in the button activation area of the digitizer surface (see *Figure 1 Button Activation Area*), and exert sufficient activation force to register a button press. Maintaining activation force, swipe the fingers downward so that they move off the touchpad. Verify that the physical button state does no stay on, that the bar beneath the PTP visualization returns from green to grey once the fingers are off the touchpad.

    5.  Upon successful validation, manually pass the iteration. Otherwise, manually fail the iteration.

3.  Iteration 2 - Button presses with non-capacitive contacts.

    *For Clickpads only*: Place a non-capacitive contact in the button activation area of the digitizer surface (see *Figure 1 Button Activation Area*) and exert sufficient activation force to register a button press. Verify that the button state is down (the grey bar in PTLogo should turn green), and that the button state returns to off when force exerted is less than the activation force.

    -   If touchpad is a pressure-pad implementation, manually pass the iteration to skip it.

    -   Upon successful validation, manually pass the iteration otherwise, manually fail the iteration.

## Common errors


None

## Passing


2/2 (100%) iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 







