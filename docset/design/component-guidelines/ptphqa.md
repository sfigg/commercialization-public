---
title: PTPHQA
description: This is to test the PTPHQA reporting capabilities of a Windows Precision Touchpad device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: D958695C-B048-4586-B041-395B6ECD492D
---

# PTPHQA


This is to test the PTPHQA reporting capabilities of a Windows Precision Touchpad device.

**Test name**

-   Test.PTPHQA

**Core requirements tested**

-   Device.Input.PrecisionTouchpad.HIDCompliance.PTPHQA

**Test purpose**

-   Verifies that the device is able to report a PTPHQA certification blob.

-   Test only checks that the usage is available. For Windows 8.1 compatibility, the device is responsible for accurately reporting its PTPHQA blob.

**Tools required**

-   PTLogo.exe

**Validation steps**

1. Launch Test.PTPHQA.json.

2. PTLogo will automatically pass, if the device correctly reports the PTPHQA usage. Conversely, the test will fail if the PTPHQA usage is incorrectly reported.

Here's a screenshot from the test, showing a passing result.

![screenshot from the ptphqa test for a windows precision touchpad device, showing a passing result.](../images/precision-test-ptphqa.png)

**Note**  If this is a re-certification, this test will fail and should be manually verified by entering the following command: **GetThqaBlob.exe –usage=TouchPad -verifyCertified**

 

**Common error messages**

-   None.

**Passing criteria**

-   1/1 (100%) iterations must pass in order to complete with passing status.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20PTPHQA%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




