---
title: General Testing Guidelines
description: This topic provides general guidelines for testing a Windows Touchscreen device, using the Windows Hardware Lab Kit (HLK) for Windows 10.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3C1A242D-6A10-4833-86BE-C0BAB938A1A5
---

#  General Testing Guidelines


This topic provides general guidelines for testing a Windows Touchscreen device, using the Windows Hardware Lab Kit (HLK) for Windows 10.

There is a set of standards defined in the Windows Compatibility Requirements document for devices and systems that support Windows Touch. Both automated and manual tests are included in the HLK, to validate that the touch devices that support Windows Touch, meet the quality bar per the compatibility requirements. This section describes the process that you should follow before you start using the HLK to test a Windows Touchscreen device and complete the certification for the device.

-   Some of the Windows Touchscreen tests, such as [Touch UX](touch-ux.md) (user experience), are expected to pass, mainly by using freehand operation.

-   For point tests, align the contact device or devices with the required target points, and make contact on the digitizer in a movement that is perpendicular to the touch screen. To reduce issues of parallax, place the eye directly behind the contact device so that the eye, contact device, and target point are all in a line perpendicular to the screen. For the press and hold tasks, keep the contact device steady while you touch the screen.

-   For the line test, follow the point test guidance when you begin and end the line trace at the indicated start and end points. Trace the line as closely as possible to the target line. Accurate parts of the traced line appear in green, and inaccurate portions appear in red.

-   Unless otherwise specified, the device should always have AC power when you perform the HLK tests.

-   Unless otherwise specified, all tests should be run with "Test Signing Mode" set to ON. To do this, perform the following steps:

    1. Open a **Command Prompt** window as an Administrator.

    2. Enter this command: **bcdedit -set testsigning on**

    3. Restart the computer.

-   Unless otherwise specified, use 7mm diameter contacts for tests requiring use of the PT3 (Precision Touch Testing Tool). For "thumb testing" use the 16mm contacts.

    You may also use a human finger for any tests that use the 7mm slugs, and a human thumb for any tests that use the 16mm slug.

    For devices that have a raised bezel or other physical consideration that prevents the usage of the approved testing equipment (7mm and 16mm slugs), it will be necessary to pass the tests using a human finger.

-   The Windows 10 HLK only supports testing a single touch digitizer at a time. If your device exposes multiple touch TLCs, you will need to do the following to ensure that the correct touch digitizer is being tested:

    1. Open **Device Manager**, then expand the **Human Interface Devices** node.

    2. Find and disable all HID-compliant touch digitizers, with the exception of the one that you want to validate.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20%20General%20Testing%20Guidelines%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




