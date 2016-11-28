---
title: Confidence Reporting
description: This is to test the confidence reporting capabilities of the Windows Precision Touchpad device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 572A62B8-87A0-458A-9930-C4333E027743
---

# Confidence Reporting


This is to test the confidence reporting capabilities of the Windows Precision Touchpad device.

**Test name**

-   Test.Confidence.json

**Core requirements tested**

-   Device.Input.Digitizer.Base.HIDCompliant

**Test purpose**

-   Verifies that the device can report a lack of confidence (by turning off the confidence bit for a contact), when a contact exceeds the sizing of an intentional finger contact.

**Tools required**

-   PTLogo.exe
-   A 140g or 190g slug ordered from ITRI or Triex. See [Hardware Requirements and Vendor Information](touchscreen-hardware-requirements-and-vendor-information.md) for vendor information.

**Validation steps**

1. Launch Test.Confidence.json.

2. Place a 27mm-29mm diameter contact straight down onto the surface of the touchpad for at least 5 seconds.
a. One of the weighted contacts from the [Device Click Pressure](device-click-pressure.md) test can be turned upside down to get a large, uniform contact.
3. Remove the contact. PTLogo will automatically verify that the confidence bit was cleared in the required time, and remained cleared for the contact lifetime. If no reporting errors were detected, it will automatically pass the iteration.

**Common error messages**

-   "\[30\] confidence bit set too long."
    The device is not clearing the confidence bit within 50ms of contact reporting.
-   "\[7\] test didn’t receive enough data."
    User lifted off of the touchpad too early.

**Passing criteria**

-   1/1 (100%) iterations must pass in order to complete with passing status.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Confidence%20Reporting%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




