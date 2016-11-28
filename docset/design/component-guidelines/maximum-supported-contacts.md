---
title: Maximum Supported Contacts
description: This is to test the maximum number of contacts supported by a Windows Precision Touchpad device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: F96C2AAB-5F98-4BB9-904F-B83FF40A0FEB
---

# Maximum Supported Contacts


This is to test the maximum number of contacts supported by a Windows Precision Touchpad device.

**Test name**

-   Test.MinMaxContacts.json

**Core requirements tested**

-   Device.Digitizer.PrecisionTouchPad.Performance.MinMaxContacts

**Test purpose**

-   Verifies that the device is able to support between 3 and 5 simultaneous contacts.

**Tools required**

-   PTLogo.exe

**Validation steps**

1. Launch Test.MinMaxContacts.json.

2. PTLogo will automatically pass or fail depending on the maximum number of contacts the touchpad device supports.

**Common error messages**

-   "\[23\] device doesn’t support minimum number of contacts:\#"

    o The device supports less than three contact minimum.

    o The displayed value (\#) indicates the number of supported contacts.

-   "\[24\] device supports too many contacts:\#"

    o The device supports more than a maximum of five contacts.

    o The displayed value (\#) indicates the number of supported contacts.

**Passing criteria**

-   1/1 (100%) iterations must pass in order to complete with passing status.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Maximum%20Supported%20Contacts%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




