---
title: Touchscreen Validation Overview
description: This topic presents a brief overview of the assumed device test conditions for Touchscreen device validation.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9439DE6D-9DAF-4AE2-B3AE-1EA797AD4E37
---

# Touchscreen Validation Overview


This topic presents a brief overview of the assumed device test conditions for Touchscreen device validation.

In order to ensure that all Windows Hardware Lab Kit (HLK) tests run successfully, it is important to follow the guidelines in this document as closely as possible.

This Touchscreen Validation Guide makes the following assumptions about the test environment of the device:

-   HLK tests are being run on a device with Windows 10 installed.
    - Only the Windows 10 for desktop editions (Home, Pro, Enterprise, and Education) are supported by the HLK tests at this time.
-   Device under test has a diagonal screen size of 4.5” - 30.”

-   Device reports HID usages as described in the [Protocol Implementation](touchscreen-protocol-implementation.md) section of the *Touchscreen Implementation Guide*.

-   Testing setup has all the required equipment that is detailed in [Hardware Requirements and Vendor Information](touchscreen-hardware-requirements-and-vendor-information.md).

-   Each HLK test is performed according to the General Testing Guidelines, as well as any notes and instructions that are specific to that test.

-   A test system that has multiple Touchscreen devices, has only one of them enabled - the one under test - and all others disabled. Use Device Manager to make this configuration, as shown in the following screenshot.

    **Note**  The HLK tests will NOT work properly if a system has more than one touchscreen enabled!

     

    ![screenshot showing how to use device manager to disable any touchscreen device that is not under test.](../images/touch-test-devicemngr.png)

If your device or testing setup does not meet the criteria outlined in the preceding list, you will not be able to successfully perform the Windows 10 HLK tests for your Touchscreen device.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Touchscreen%20Validation%20Overview%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




