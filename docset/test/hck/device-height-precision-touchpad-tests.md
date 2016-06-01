---
author: joshbax-msft
title: Device Height
description: Device Height
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3ad3d471-d901-450b-bcc6-3c42a65ac2d6
---

# Device Height


## Test name


**Test.DeviceHeight.json**

## Core requirements tested


Device.Digitizer.PrecisionTouchPad.Hardware.Length

## Test purpose


Verifies that the device sensor meets or exceeds minimum height requirement of 32mm.

## Tools required


-   **PTLogo.exe**

-   Ruler or micrometer

## Validation steps


1.  Start **Test.DeviceHeight.json**.

2.  Measure touchpad height with a ruler or micrometer.

3.  Assuming *Y* is the reported sensor width, verify the following:

    1.  The measured device width is between *Y* and (*Y* + 4).

    2.  *Y* is &gt;= 32mm.

4.  If these conditions are true, then manually pass the iteration; otherwise, manually fail the iteration.

    **Note**  
    Because the sensor might be slightly smaller than the cover sheet, the measured height can be as much as 4mm greater than that which is reported by the device.

     

## Common errors


None

## Passing


1/1 (100%) iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 







