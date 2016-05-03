---
author: joshbax-msft
title: Selective Reporting
description: Selective Reporting
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 19cae1b6-3722-4ecc-8045-0630ccf649bd
---

# Selective Reporting


## Test name


**Test.SelectiveReporting**

## Core requirements tested


Device.Digitizer.PrecisionTouchPad.HIDCompliance.SelectiveReporting

## Test purpose


Verifies that the device is able to correctly respond to selective reporting requests from the host.

## Tools required


**PTLogo.exe**

## Validation steps


1.  Start **Test.SelectiveReporting.json** as an administrator (elevated permissions). If you run the test from Windows Hardware Certification Kit (Windows HCK) Studio, the level is automatically set to elevated.

2.  Move one contact on the touchpad and exert activation force.

3.  If the touchpad does not respond (mouse cursor does not move, no contacts are visualized in PTLogo, and button click do not turn the bar green), then manually pass the iteration; otherwise, manually fail the iteration.

## Common errors


None

## Passing


1/1 (100%) iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Selective%20Reporting%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





