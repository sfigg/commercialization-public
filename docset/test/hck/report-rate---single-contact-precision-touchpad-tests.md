---
author: joshbax-msft
title: Report Rate - Single Contact
description: Report Rate - Single Contact
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a5c3abb5-af83-4ce3-9906-edc9dbb6e61e
---

# Report Rate - Single Contact


## Test name


**Test.ReportRate.json**

## Core requirements tested


Device.Digitizer.PrecisionTouchPad.Performance.ReportRate

## Test purpose


Verifies that the device is able to report a single contact at the required report rate of 125hz for a single contact.

## Tools required


**PTLogo.exe**

## Validation steps


1.  Start **Test.ReportRate.json**.

2.  Following the instructions on the screen, move a single contact on the digitizer surface for 1, 5, or 20 seconds. (a clock in the upper right corner shows how many seconds have passed since the contact has been down).

3.  Repeat eleven times – Note that the length of time will change for some iterations, so be sure to read and follow the on-screen instructions for each iteration.

4.  PTLogo will fail an iteration and display an error on lift if the measured report rate is too low, or if it exceeds 250hz. Otherwise, the iteration will pass upon lift, and PTLogo will advance to the next iteration.

## Common errors


If an iteration continues after the contacts have been lifted, the device might not have correctly reported the clearing of the tip switch.

## Passing


11/11 (100%) iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 







