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

 

 







