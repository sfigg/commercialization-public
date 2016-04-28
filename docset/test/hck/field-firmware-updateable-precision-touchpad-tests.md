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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Field%20Firmware%20Updateable%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





