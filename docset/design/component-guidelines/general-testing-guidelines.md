---
title: General Testing Guidelines
description: This topic provides general guidelines for testing a Windows pen device, using the Windows Hardware Lab Kit (HLK) for Windows 10.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 42ABD76B-3427-4765-B76E-D2C9E1BB0FBC
---

# General Testing Guidelines


This topic provides general guidelines for testing a Windows pen device, using the Windows Hardware Lab Kit (HLK) for Windows 10.

-   Unless otherwise specified, the device should always have AC power when performing HLK tests.

-   Unless otherwise specified, all numbers in error messages which report distance or location are in himetric (0.01mm).

-   

    Unless otherwise specified, a nominal weight of 150g should be applied to the pen holder for all tests.

    o When applying the 150g of weight, distribute the weight as evenly as possible onto both sides of the pen holder. This can be either a 50g/100g split, or a 75g/75g split, if enough weights are available.

    o Except for tests that require precise application of weights, it is acceptable that the total applied weight at pen tip exceeds 150g due to the weight of the pen and the pen holder.

-   Unless otherwise specified, the pen holder should be held at an angle of 90 degrees i.e. placed vertically against the screen.

-   Unless otherwise specified, no input for HLK testing should be collected within 8mm of the edge of the screen.

-   Before running each test, ensure the device is lying flat on the PT3 or RA tool.

-   Before running the tests, ensure screen resolution is adjusted to the device’s default or highest resolution.

-   Before running the tests, ensure the device’s orientation matches the orientation of the digitizer and the HLK application is full screen.

-   The Windows 10 HLK only supports testing a single pen digitizer at a time. If your device exposes multiple pen TLCs, you will need to do the following to ensure that the correct pen digitizer is being tested:
    1. Open **Device Manager**, then expand the **Human Interface Devices** node.
    2. Find and disable all HID-compliant pen digitizers, with the exception of the one that you want to validate.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20General%20Testing%20Guidelines%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




