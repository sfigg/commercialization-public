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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Default%20mode%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





