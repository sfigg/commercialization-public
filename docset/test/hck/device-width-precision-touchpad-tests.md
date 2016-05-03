---
author: joshbax-msft
title: Device Width
description: Device Width
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ab1ab37c-78f4-48ec-befa-4b804f63c73f
---

# Device Width


## Test name


**Test.DeviceWidth.json**

## Core requirements tested


Device.Digitizer.PrecisionTouchPad.Hardware.Width

## Test purpose


Verifies that the device sensor meets or exceeds minimum width requirement of 64mm.

## Tools required


-   **PTLogo.exe**

-   Ruler or micrometer

## Validation steps


1.  Start **Test.DeviceWidth.json**.

2.  Measure touchpad width with a ruler or micrometer.

3.  Assuming *X* is the reported sensor width, verify the following:

    1.  The measured device width is between *X* and (*X* + 4).

    2.  *X* is &gt;= 64mm.

4.  If these conditions are true, then manually pass the iteration; otherwise, manually fail the iteration.

    **Note**  
    Because the sensor might be slightly smaller than the cover sheet, the measured width can be as much as 4mm greater than that which is reported by the device.

     

## Common errors


None

## Passing


1/1 (100%) iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Device%20Width%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





