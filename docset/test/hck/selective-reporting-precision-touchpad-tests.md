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

 

 







