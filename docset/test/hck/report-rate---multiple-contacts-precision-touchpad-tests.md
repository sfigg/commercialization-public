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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Report%20Rate%20-%20Multiple%20Contacts%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





