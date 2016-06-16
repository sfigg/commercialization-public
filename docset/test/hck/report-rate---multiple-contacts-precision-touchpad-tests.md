---
author: joshbax-msft
title: Report Rate - Multiple Contacts
description: Report Rate - Multiple Contacts
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 92925ef7-c610-4f35-8023-c2cf5e54d0da
---

# Report Rate - Multiple Contacts


## Test name


**Test.ReportRateMultiple.json**

## Core requirements tested


Device.Digitizer.PrecisionTouchPad.Performance.ReportRate

## Test purpose


Verifies that the device is able to report the maximum number of contacts at the required report rate of 100hz.

## Tools required


**PTLogo.exe**

## Validation steps


1.  Start **Test.ReportRate.json**.

2.  Following the instructions on the screen, move around the required number of contacts on the touchpad for 1, 5, or 20 seconds (a clock in the upper right corner shows how many seconds have passed since all contacts have been down). Contacts should be kept at least 14mm apart.

3.  Repeat eleven times – Note that the length of time will change for some iterations, so be sure to read and follow the on-screen instructions for each iteration.

4.  PTLogo will fail an iteration and display an error if the measured report rate is lower than required, or exceeds 250hz. Otherwise, the iteration will pass upon lift, and PTLogo will advance to the next iteration.

## Common errors


If an iteration continues after the contacts have been lifted, the device might not have correctly reported the clearing of the tip switch.

## Passing


11/11 (100%) iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 







