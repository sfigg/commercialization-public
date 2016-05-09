---
title: Device Button Reporting
description: This is to test the integrated buttons in a Windows Precision Touchpad device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1A6D1FF4-D4AE-446C-AD8F-C2E60284C50D
---

# Device Button Reporting


This is to test the integrated buttons in a Windows Precision Touchpad device.

**Test name**

-   Test.DeviceButton.json

**Core requirements tested**

-   Device.Input.Digitizer.PrecisionTouchpad.Buttons

**Test purpose**

-   Verifies that the device reports button presses correctly for integrated buttons.

**Tools required**

-   PTLogo.exe

**Validation steps**

1. Launch Test.DeviceButton.json.

2. *Iteration One*: Button presses with capacitive contacts:
a. Place a finger in the center area of the digitizer surface, and exert sufficient activation force to depress the physical button. Verify that the button state is down (the grey bar at the bottom of PTLogo tool should turn green), and that the button state returns to off when your finger is lifted from the button.

b. Repeat the preceding step with 2, 3… N contacts, where N is the maximum number of contacts supported by the device. Contacts should always maintain a minimum separation distance of 15mm.

c. Place 2 fingers on the touchpad surface, and press down on the physical button. Keeping the button pressed with one finger, lift the second. PTLogo with automatically check that the button state is reported consistently.

d. Depress the physical button with three fingers on the touchpad surface. Maintaining downward pressure, flick the fingers downward so that they move off the touchpad. Verify that the physical button state does not stay on, and that the bar beneath the PTP visualization returns from green to grey once the fingers are off the touchpad.

e. Upon successful validation, manually pass the iteration. Otherwise, manually fail the iteration.

3. *Iteration Two*: Button presses with non-capacitive contacts:

For Clickpads only: Place a non-capacitive contact on the center area of the digitizer surface, and exert sufficient activation force. Verify that the button state is down (the grey bar in PTLogo should turn green), and that the button state returns to off when force exerted is less than the activation force.

**Note:** If touchpad is a pressure pad implementation, manually pass the iteration to skip it.

Otherwise, upon successful validation, manually pass the iteration otherwise. If validation is unsuccessful, then manually fail the iteration.

**Common error messages**

-   None.

**Passing criteria**

-   2/2 (100%) iterations must pass in order to complete with passing status

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Device%20Button%20Reporting%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




