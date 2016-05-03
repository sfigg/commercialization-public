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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Mouse%20Mode%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





