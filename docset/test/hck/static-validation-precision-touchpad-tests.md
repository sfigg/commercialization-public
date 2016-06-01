---
author: joshbax-msft
title: Static Validation
description: Static Validation
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8bc0d78b-284e-48fd-8115-41f78ec928e2
---

# Static Validation


## Test name


**Test.StaticValidation.json**

## Core requirements tested


-   Device.Input.PrecisionTouchpad.BusType

-   Device.Input.PrecisionTouchpad.I2C.BusSpeed

-   Device.Input.PrecisionTouchpad.USB.BusSpeed

-   Device.Input.PrecisionTouchpad.ThirdPartyDrivers

-   Device.Input.PrecisionTouchpad.USB.SelectiveSuspend

## Test purpose


Verifies that the device meets the fundamental bus interface requirements for the host.

## Tools required


**PTLogo.exe**

## Validation steps


1.  If this is a USB connected Precision Touchpad, make sure that Selective Suspend is ENABLED. See [Windows Precision Touchpad Device Validation Guide](windows-precision-touchpad-device-validation-guide.md#selectsuspend).

2.  Start **Test.StaticValidation.json**.

3.  PTLogo will run static validation test code and verify static HID requirements.

## Common errors


None

## Passing


1/1 (100%) iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 







