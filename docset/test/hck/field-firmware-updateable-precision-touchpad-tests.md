---
author: joshbax-msft
title: Field Firmware Updateable
description: Field Firmware Updateable
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 41e0f9b1-2410-4b10-9d6d-e8b490dca243
---

# Field Firmware Updateable


## Test name


**Test.FFU.json**

## Core requirements tested


Device.Input.PrecisionTouchpad.FieldFirmwareUpdateable

## Test purpose


Verifies that the device is capable of correctly performing a field firmware upgrade.

## Tools required


-   **PTLogo.exe**

-   **GetTHQABlob.exe** (See [Windows Precision Touchpad Device Validation Guide](windows-precision-touchpad-device-validation-guide.md#gen) for the location of **GetTHQABlob.exe**.)

-   Stand-alone user mode executable OR UEFI capsule

-   Dummy firmware

## Validation steps


**Note**  
The **PTLogo Test.FFU.json** test is simply for manual indication of whether this requirement has been met, per the validation steps below. After all steps below have been completed, run this test to indicate validation status.

 

1.  If this is a USB connected Precision Touchpad, make sure that Selective Suspend is ENABLED. See [Windows Precision Touchpad Device Validation Guide](windows-precision-touchpad-device-validation-guide.md#selectsuspend).

2.  Make sure test signing is turned on for this test. For instructions, see [Windows Precision Touchpad Device Validation Guide](windows-precision-touchpad-device-validation-guide.md#gen).

3.  Verify the current firmware version by running the following command from an elevated command or PowerShell prompt:

    ``` syntax
    GetTHQABlob.exe -usage=touchpad -verifysample
    ```

4.  Record the firmware version (RevisionID) (version number may be in hexadecimal).

5.  Perform the steps that are indicated by the device manufacturer to upgrade the firmware either by using a UEFI capsule update or stand-alone user mode executable with firmware payload.

6.  Verify the new firmware version by running the following command from an elevated command or PowerShell prompt:

    ``` syntax
    GetTHQABlob.exe -usage=touchpad -verifysample
    ```

7.  Confirm that the firmware version (RevisionID) is different from the previously recorded one.

8.  Start **Test.FFU.json** and manually pass the iteration if verification from step 5 was successful; otherwise, manually fail the iteration.

## Common errors


None

## Passing


1/1 (100%) iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 







