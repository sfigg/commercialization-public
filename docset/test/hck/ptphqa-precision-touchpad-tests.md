---
author: joshbax-msft
title: PTPHQA
description: PTPHQA
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1632cd40-6d6c-4cdc-bbc0-145ad5d10a2c
---

# PTPHQA


## Test name


**Test.PTPHQA**

## Core requirements tested


Device.Input.PrecisionTouchpad.HIDCompliance.PTPHQA

## Test purpose


Verifies that the device is able to report a PTPHQA certification binary large object (BLOB).

## Tools required


**PTLogo.exe**

## Validation steps


1.  Start **Test.PTPHQA.json**.

2.  PTLogo will automatically pass or fail if the device correctly or incorrectly reports the PTPHQA sample BLOB.

    ![ptphqa passing result](images/hck-winb-ptphqa-passingresult.png)

    **Figure 1 PTPHQA Passing Result**

**Note**  
If this is a recertification, this test will fail and should be manually verified by running **GetThqaBlob.exe –usage=TouchPad -verifyCertified**. See also [Field Firmware Updateable](field-firmware-updateable-precision-touchpad-tests.md).

 

## Common errors


None

## Passing


1/1 (100%) iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 







