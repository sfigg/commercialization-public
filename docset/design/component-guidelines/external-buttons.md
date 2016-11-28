---
title: External Buttons
description: This is to test that the buttons attached to a Windows Precision Touchpad device, are reported correctly.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9F73BDFF-D2E8-46C8-93C3-D2407A730B37
---

# External Buttons


This is to test that the buttons attached to a Windows Precision Touchpad device, are reported correctly.

**Test name**

-   Test.ExternalButtons.json

**Core requirements tested**

-   Device.Input.Digitizer.PrecisionTouchpad.Button

**Test purpose**

-   Verifies that the attached buttons report correctly, to provide primary and secondary click functionality for a user.

**Tools required**

-   Ruler or Micrometer
-   PTLogo.exe

**Validation steps**

1. Launch Test.ExternalButtons.json.

2. If the device does not support external buttons, pass the test manually.

3. If the device is not a click pad or a pressure pad, then visually ensure that there are two buttons available.

4. Click each button and verify that the external button images in the UI, light up as each button is pressed. Note the two extra button bars as shown in the following screenshot. These will change color when the proper button messages are received.

![screenshot from the external buttons test, showing the user interface.](../images/precision-test-extbutton.png)

5. If both buttons generate the correct response, the test will pass.
**Common error messages**

-   None.

**Passing criteria**

-   1/1 (100%) iterations with each button must pass in order to complete with passing status.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20External%20Buttons%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




