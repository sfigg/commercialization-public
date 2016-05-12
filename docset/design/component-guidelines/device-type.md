---
title: Device Type
description: This is to test the pad type reporting of a Windows Precision Touchpad device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 20776726-AE11-44EE-8F85-11E6FFCA3B55
---

# Device Type


This is to test the pad type reporting of a Windows Precision Touchpad device.

**Test name**

-   Test.DeviceType.json

**Core requirements tested**

-   Device.Input.Digitizer.PrecisionTouchpad.DeviceTypeReporting

**Test purpose**

-   Verifies that the device reports its pad type correctly.

**Tools required**

-   PTLogo.exe

**Validation steps**

1. Launch Test.DeviceType.json.

2. If the device is a click-pad and PTLogo reports that the device is a click-pad, then manually pass the iteration.

3. If the device is a pressure-pad and PTLogo reports the device as a pressure-pad, then manually pass the iteration.

4. If the device is a non-clickable touchpad, or discrete-pad, and PTLogo reports the device as No Pad Type, then manually pas the iteration.

5. If the device type reported in PTLogo does not match the actual device type, manually fail the iteration.

**Common error messages**

-   None.

**Passing criteria**

-   1/1 (100%) iterations must pass in order to complete with passing status.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Device%20Type%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




