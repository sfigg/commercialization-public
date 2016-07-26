---
author: joshbax-msft
title: Z-Height Detection
description: Z-Height Detection
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 717b512b-0bbb-4531-9f1f-6af7488d4c30
---

# Z-Height Detection


## Test name


**Test.ZHeight.json**

## Core requirements tested


Device.Digitizer.PrecisionTouchPad.Precision.MaxReportZHeight

## Test purpose


Verifies that the device does not report contacts exceeding the allowable detection threshold in the z-axis.

## Tools required


-   **PTLogo.exe**

-   PT3 with Precision Touchpad modifications

-   1mm thick non-conductive material (such as a business card)

## Validation steps


1.  Place 1mm thick material on top of the touchpad.

2.  Lower one PT3 contact until it just touches the non-conductive material.

3.  Remove the material, leaving PT3 contact 1mm above the touchpad.

4.  Start **Test.ZHeight.json**.

5.  Leave the contact in place above the touchpad for one minute.

6.  Verify that no contact is reported – if that is the case, manually pass the iteration; otherwise, manually fail the iteration.

## Common errors


None

## Passing


1/1 (100%) iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 







