---
author: joshbax-msft
title: Greater Than Maximum Supported Contacts
description: Greater Than Maximum Supported Contacts
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9c55c527-5ffe-4bd8-85d2-5e02673a4c87
---

# Greater Than Maximum Supported Contacts


## Test name


**Test.GreaterMaxContacts.json**

## Core requirements tested


Device.Input.PrecisionTouchpad.Reliability.ContactSuppression

## Test purpose


Verifies that the device has consistent behavior when the maximum number of supported contacts is exceeded on the digitizer surface.

## Tools required


**PTLogo.exe**

## Validation steps


1.  Start **Test.GreaterMaxContacts.json**.

2.  Following the instructions on the screen, place a number of fingers on the touchpad equal to the supported maximum contacts, with at least 14mm between each. These contacts should be visualized in PTLogo.

    -   Move contacts around slightly, so it is clear that they are being continuously reported.

    -   If the device does not report all contacts, manually fail the test.

3.  Place one additional contact on the digitizer surface.

4.  Verify that as soon as this finger comes down, all contacts should be automatically lifted (reporting ceases), so that all visualization in PTLogo stops.

5.  Lift each finger, one at a time. Verify that no contact reporting occurs.

    **Note**  
    Button state reporting may or may not occur, and bears no relevance to the test.

     

6.  After all contacts have lifted, again place the maximum number of contacts on the digitizer surface, and verify that they are reported.

7.  Manually pass the iteration if all these conditions have been met; otherwise manually fail the iteration.

## Common errors


None

## Passing


1/1 (100%) iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 







