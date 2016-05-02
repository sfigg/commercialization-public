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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Static%20Validation%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





