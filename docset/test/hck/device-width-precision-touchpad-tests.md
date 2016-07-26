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

 

 







