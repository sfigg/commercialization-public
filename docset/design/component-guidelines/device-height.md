---
title: Device Height
description: This is to validate the height of a Windows Precision Touchpad device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 12175D3C-A579-489D-86C3-AC287FCA0E74
---

# Device Height


This is to validate the height of a Windows Precision Touchpad device.

**Test name**

-   Test.DeviceHeight.json

**Core requirements tested**

-   Device.Input.Digitizer.PrecisionTouchpad.Dimensions

**Test purpose**

-   Verifies that the device sensor meets or exceeds minimum height requirement of 32mm.

**Tools required**

-   Ruler or Micrometer
-   PTLogo.exe

**Validation steps**

1. Launch Test.DeviceHeight.json.

2. Measure touchpad height with a ruler or micrometer.

3. Assuming Y is the reported sensor width, verify that:
a. The measured device width is between Y and (Y + 4).

b. Y is greater than or equal to 32mm.

4. If these conditions are true, then manually pass the iteration, otherwise manually fail the iteration.

Because the sensor may be slightly smaller than the cover sheet, the measured height may be as much as 4mm greater than the height that is reported by the device.

**Common error messages**

-   None.

**Passing criteria**

-   1/1 (100%) iterations must pass in order to complete with passing status.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Device%20Height%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




