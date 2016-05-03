---
author: joshbax-msft
title: Maximum Supported Contacts
description: Maximum Supported Contacts
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 548a17b0-c8c2-406e-8b8b-3241d2426315
---

# Maximum Supported Contacts


## Test name


**Test.MinMaxContacts.json**

## Core requirements tested


Device.Digitizer.PrecisionTouchPad.Performance.MinMaxContacts

## Test purpose


Verifies that the device is able to support between three and five simultaneous contacts.

## Tools required


**PTLogo.exe**

## Validation steps


1.  Start **Test.MinMaxContacts.json**.

2.  PTLogo will automatically pass or fail depending on the maximum number of contacts the touchpad device supports.

## Common errors


-   \[23\] device doesn’t support minimum number of contacts:\#

    -   The device supports less than three contact minimum.

    -   The value indicates the number of supported contacts.

-   \[24\] device supports too many contacts:\#

    -   The device supports more than five contacts maximum.

    -   The value indicates the number of supported contacts.

## Passing


1/1 (100%) iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Maximum%20Supported%20Contacts%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





