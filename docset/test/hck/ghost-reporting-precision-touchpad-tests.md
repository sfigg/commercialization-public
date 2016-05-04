---
author: joshbax-msft
title: Ghost Reporting
description: Ghost Reporting
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a70fc94e-79dd-4dfc-8caf-77257c15386c
---

# Ghost Reporting


## Test name


**Test.GhostReporting.json**

## Core requirements tested


Device.Input.PrecisionTouchpad.Reliability.FalseContacts

## Test purpose


Verifies that the device does not report false contacts (noise) when on AC or DC power (if applicable).

## Tools required


**PTLogo.exe**

## Validation steps


1.  Start **Test.GhostReporting.json**.

2.  Make sure the system connected to the device is plugged in during this iteration.

3.  Allow test to run for 60 seconds, without making any contact with the touchpad.

    **Tip**  
    There is a timer in the top right corner of the screen for reference.

     

4.  **PTLogo.exe** will automatically verify that no contacts have been reported by the device, and advance to the next iteration.

5.  the host device has battery power, unplug it and repeat steps 3-4 for the second iteration.

## Common errors


None

## Passing


2/2 (100%) iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 







