---
title: Touch Resolution
description: This is to test the resolution of a Windows Touchscreen device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 100FBD31-29F3-4AFF-B94C-F0C0888C0788
---

# Touch Resolution


This is to test the resolution of a Windows Touchscreen device.

**Test name**

TouchResolution.json
**Associated compatibility requirements**

Device.Input.Digitizer.Touch.Resolution
**Test purpose**

Verifies that a Windows Touchscreen device has a resolution that is greater than, or equal to the native display resolution.
**Tools required**

None.
**Running the test**

To support the assertion that every pixel is touchable, the resolution of the touch screen must be at least as high as the resolution of the display. This test verifies that capability. To complete this test, simply touch the screen. The program validates that the digitizer that reports the contact has a resolution that is at least as high as the connected display.

**Command syntax**

Logo3.exe –config TouchResolution.json
**Passing criteria**

100% of the iterations must pass in order to complete with passing status.
 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Touch%20Resolution%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




