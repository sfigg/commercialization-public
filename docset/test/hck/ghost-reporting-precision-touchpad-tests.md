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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Ghost%20Reporting%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





