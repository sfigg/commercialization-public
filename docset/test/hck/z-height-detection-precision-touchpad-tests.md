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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Z-Height%20Detection%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





