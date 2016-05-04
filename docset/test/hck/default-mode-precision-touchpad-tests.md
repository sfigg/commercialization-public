---
author: joshbax-msft
title: Default mode
description: Default mode
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3902b1bb-0129-44ae-b85e-58d436c6dfbd
---

# Default mode


## Test name


**Test.DefaultMode.json**

## Core requirements tested


Device.Input.PrecisionTouchpad.HIDCompliance.DefaultMode

## Test purpose


Verifies that the device defaults to reporting from the mouse collection until requested to do otherwise by a PTP capable host.

## Tools required


**PTLogo.exe**

## Validation steps


**Note**  
The **PTLogo Test.DefaultMode.json** is simply for manual indication of whether this requirement has been met per the validation steps below. After all of the following steps have been completed, run this test to indicate validation status.

 

1.  Disable test signing mode by executing the following command from an elevated command or PowerShell prompt:

    ``` syntax
    bcdedit –set testsigning off
    ```

2.  Restart the system.

3.  Use the touchpad to move the cursor and verify the following:

    -   Finger swipes control cursor movement, and clicking the button in the bottom left corner results in a click.

    -   Advanced PTP gestures do not work (for example, vertical two-finger panning between the **Start Screen** and **All Apps**).

4.  Re-enable test signing mode by executing the following command from an elevated command or PowerShell prompt:

    ``` syntax
    bcdedit –set testsigning on
    ```

5.  Restart the system.

6.  If the conditions were met in Step 3, then start **Test.DefaultMode.json** and manually pass the iteration; otherwise, manually fail the iteration.

    **Note**  
    PTLogo will not launch while testsigning mode is turned off because the touchpad will not be recognized as a PTP.

     

## Common errors


None

## Passing


1/1 (100%) iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 







