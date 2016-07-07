---
author: joshbax-msft
title: Device Type
description: Device Type
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8f9b5bb7-38eb-4e55-a7fb-029ea5dcdfb3
---

# Device Type


## Test name


**Test.DeviceType.json**

## Core requirements tested


Device.Input.PrecisionTouchpad.HIDCompliance.DeviceType

## Test purpose


Verifies that the device reports its pad type correctly.

## Tools required


**PTLogo.exe**

## Validation steps


1.  Start **Test.DeviceType.json**.

2.  If the device is a click-pad and **PTLogo.exe** reports that the device is a click-pad, then manually pass the iteration.

3.  If the device is a pressure-pad and **PTLogo.exe** reports the device as a pressure-pad, then manually pass the iteration.

4.  If the device type reported in **PTLogo.exe** does not match the actual device type, manually fail the iteration.

## Common errors


None

## Passing


1/1 (100%) iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 







