---
title: Pen Validation Overview
description: This topic presents a brief overview of the assumed device test conditions for pen validation, and outlines critical pre-test requirements.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: C6E6B1DC-F3EC-4D63-9FF2-AB80F332BB6B
---

# Pen Validation Overview


This topic presents a brief overview of the assumed device test conditions for pen validation, and outlines critical pre-test requirements.

In order to ensure that all Windows Hardware Lab Kit (HLK) tests run successfully, it is important to follow the guidelines in this document as closely as possible.

## Device Test conditions


This Pen Validation Guide makes the following assumptions about the testing conditions of the device:

-   HLK tests are being run on a device with Windows 10 installed.
    Only the Windows 10 for desktop editions (Home, Pro, Enterprise, and Education) are supported by the HLK tests at this time. See the [Appendix: Frequently Asked Questions](appendix.md) section for additional information.
-   Device under test has a diagonal screen size of 4.5” - 30.”
    See the [Appendix: Frequently Asked Questions](appendix.md) section for additional information.
-   Device reports HID usages as described in the [Pen Implementation Guide](pen-implementation-guide.md).

-   Testing setup has all the required equipment detailed in [Hardware Requirements and Vendor Information](hardware-requirements-and-vendor-information.md).

-   For each HLK test, the user follows the [General Testing Guidelines](general-testing-guidelines.md), as well as the notes and instructions that are specific to the test - as outlined in [Active Pen Tests](active-pen-tests.md).

If your device or testing setup does not meet the above criteria, you will not be able to run and pass the Windows 10 HLK tests.

## Critical Pre-Testing Requirement


**Note**  Failure to follow these steps will cause tests to crash on launch, or fail to receive input.

 

These steps must be performed on the device under test before running the pen HLK tests.

-   Put the device into Developer Mode:
    To put your device into Developer Mode, navigate to the **Settings** &gt; **Update & security** dialog window. Then select **For developers** in the left-hand pane, and click **Developer Mode** in the right-hand window.
-   Enable test signing:
    To enable test signing, open an Administrator Command Prompt and Enter the command "**bcdedit /set testsigning on**", then restart the system.

The remaining topics in the Pen Validation Guide, provide more detailed information about the setup and other procedures for performing the pen-related tests in the HLK.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Pen%20Validation%20Overview%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




