---
title: Right Click Reliability
description: This is to test the right-click detection capabilities of a Windows Precision Touchpad device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6F08394B-3AE6-4D54-8518-0E9D980927F3
---

# Right Click Reliability


This is to test the right-click detection capabilities of a Windows Precision Touchpad device.

**Test name**

-   Test.RightClickReliability.json

**Core requirements tested**

-   No requirement – recommended for experience testing on click-pads and pressure-pads.

**Test purpose**

-   Provides testing for the reliability of right clicks with contacts that are in the far corner of the digitizer and very quick button presses

**Tools required**

-   PTLogo.exe

**Validation steps**

1. Launch Test. RightClickReliability.json.

2. Test the far corner’s reliability:

a. Place a finger in the far bottom-right corner of the touchpad.

b. Press the touchpad button. The test will pass, if a right-click is recognized.

c. Release the contact.

c. Repeat once - for a total of two total iterations.

3. Test the device’s responsiveness to quick presses:

a. Quickly press and lift a contact in the bottom-right corner of the touchpad, such that a button click occurs. The test will pass, if a right-click is recognized.

b. Repeat two more times - for a total of three total iterations.

**Common errors**

-   If the far corner test fails, the device may report left clicks when a user is attempting to produce a right click in the region.

-   If the quick press test fails, the device may report left clicks when a user quickly attempts to right click.

**Passing criteria**

-   5/5 (100%) iterations must pass in order to complete with passing status.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Right%20Click%20Reliability%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




