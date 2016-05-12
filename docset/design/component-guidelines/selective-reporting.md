---
title: Selective Reporting
description: This is to test the selective reporting capabilities of a Windows Precision Touchpad device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: EF217AC1-4887-4661-A6F5-143334A27001
---

# Selective Reporting


This is to test the selective reporting capabilities of a Windows Precision Touchpad device.

**Test name**

-   Test.SelectiveReporting

**Core requirements tested**

-   Device.Digitizer.PrecisionTouchPad.HIDCompliance.SelectiveReporting

**Test purpose**

-   Verifies that the device is able to correctly respond to selective reporting requests from the host.

**Tools required**

-   PTLogo.exe

**Validation steps**

1. Launch Test.SelectiveReporting.json as an Administrator (elevated).

2. Move 1 contact on the touchpad, and exert activation force.

3. Manually Pass the iteration, if the following is true (otherwise, manually Fail the iteration): then manually pass the iteration, otherwise manually fail the iteration.

The touchpad *does not* respond (the mouse cursor does not move, no contacts are displayed in PTLogo, and button clicks do not turn the on-screen bar green).
**Common error messages**

-   None.

**Passing criteria**

-   1/1 (100%) iterations must Pass in order to complete with passing status.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Selective%20Reporting%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




