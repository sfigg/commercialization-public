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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Device%20Bezel%20Integration%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





