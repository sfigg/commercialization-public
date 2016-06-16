---
author: joshbax-msft
title: Edge Reporting
description: Edge Reporting
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f7e78e26-5db3-45bd-9993-e9d4263e073f
---

# Edge Reporting


## Test name


**Test.Edge.json**

## Core requirements tested


-   Device.Input.PrecisionTouchpad.Buffering

-   Device.Input.PrecisionTouchpad.Precision.EdgeDetection

## Tools required


**PTLogo.exe**

## Validation steps


1.  If this is a USB connected Precision Touchpad, make sure that Selective Suspend is ENABLED. See [Windows Precision Touchpad Device Validation Guide](windows-precision-touchpad-device-validation-guide.md#selectsuspend).

2.  Start **Test.Edge.json**.

3.  Following the onscreen instructions, wait at least ten seconds (there is a timer in the top right corner for reference), and then swipe in horizontally from the specified edge. Start your finger off the edge of the touchpad, and swipe in ~10-20mm to the middle of the touchpad, perpendicular to the edge at ~200 mm/second and lift. The tool will automatically pass each iteration if the requirement is met.

    ![edge swipe](images/hck-winb-edgeswipe.jpg)

    **Figure 1 Edge Swipe**

    **Note**  
    For the contact to start within 2mm of the edge, start with your finger outside of the touchpad surface, and keep fingertip flush with the device as you swipe in.

     

4.  Perform ten iterations on the left edge, followed by ten iterations on the right edge (20 total iterations).

    **Note**  
    A ten-second delay is only required for the first swipe to ensure that USB devices are performing the required 100ms buffering when resuming from selective suspend.

     

## Common errors


\[14\] packet too far from edge: \#\#\#

-   Be sure to swipe from the edge that is specified. If **PTLogo.exe** asks to swipe from the left edge, swiping from the right will result in this error.

-   If the swipe was performed correctly, the device did not detect the contact within 2mm of the respective edge, which is indicative of a device failure.

-   The value indicates the first contact report’s distance from the respective edge.

    ![edge reporting failure too far from edge](images/hck-winb-edgereportingfailuretoofarfromedge.png)

    **Figure 2 Edge Reporting Failure - Packet Too Far From Edge**

## Passing


10/10 (100%) iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 







