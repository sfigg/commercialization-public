---
title: Touch Accuracy
description: This is to test the touch input reporting accuracy for a Windows Touchscreen device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: E6C6CEA0-B228-40B3-8BC6-F08176C2F09C
---

# Touch Accuracy


This is to test the touch input reporting accuracy for a Windows Touchscreen device.

**Test name**

PhysicalInputPosition.json
**Associated compatibility requirements**

-   Device.Input.Digitizer.Touch.Accuracy
-   Device.Digitizer.Touch.HIDCompliantFirmware

**Test purpose**

Verifies that a Windows Touchscreen device reports all inputs that meet the following criteria:
o Inputs within +/- 1 mm of the center of the physical input for all touchable areas outside 3.5mm of the digitizer's edge.
o Inputs within +/-2 mm within 3.5 mm of the digitizer's edge.
**Tools required**

-   PT3
-   16mm slug, or a human thumb for running the thumb tests.
-   Free hand for running the edge tests.

**Running the test**

Minimal offset between the actual and the reported point of contact, is a primary factor in real and perceived system accuracy.

The Touch Accuracy Test suite includes tests for linear accuracy (offset) and edge performance, totaling seven scenarios. For the Edge (Inward) scenario, speed is measured and enforced. The tool warns you when motion is too slow, and then asks you to repeat the interaction. Note that moving too slowly does not generate a failure.

**Command syntax**

Logo3.exe -config PhysicalInputPosition.json
**Passing criteria**

95% of the iterations must pass in order to complete with passing status.
 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Touch%20Accuracy%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




