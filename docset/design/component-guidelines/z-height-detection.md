---
title: Z-Height Detection
description: This is to test the z-axis reporting behavior of a Windows Precision Touchpad device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 06568B54-C2ED-44AD-A820-4E889D25EFBF
---

# Z-Height Detection


This is to test the z-axis reporting behavior of a Windows Precision Touchpad device.

**Test name**

-   Test.ZHeight

**Core requirements tested**

-   Device.Input.Digitizer.PrecisionTouchpad.ContactTipSwitchHeight

**Test purpose**

-   Verifies that the device does not report contacts that exceed the allowable detection threshold in the z-axis.

**Tools required**

-   PT3 w/Precision Touchpad Modifications

-   PTLogo.exe

-   1mm thick non-conductive material (such as a business card)

**Validation steps**

1. Place 1mm thick material on top of touchpad.

2. Lower 1 PT3 contact until it just touches the non-conductive material.

3. Remove the material, leaving PT3 contact 1mm above the touchpad.

4. Launch Test.ZHeight.json.

5. Leave contact in place above touchpad for 1 minute.

6. Verify that no contact is reported – and if that is the case, then manually Pass the iteration. Otherwise manually Fail the iteration.

**Common error messages**

-   None.

**Passing criteria**

-   1/1 (100%) iterations must pass in order to complete with passing status.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Z-Height%20Detection%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




