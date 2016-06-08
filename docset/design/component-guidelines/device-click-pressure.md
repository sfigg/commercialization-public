---
title: Device Click Pressure
description: This is to test the button click reporting behavior (with respect to click pressure) of a Windows Precision Touchpad device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1694EA9F-0516-4822-8AA1-17302245EF3C
---

# Device Click Pressure


This is to test the button click reporting behavior (with respect to click pressure) of a Windows Precision Touchpad device.

**Test name**

-   Test.DeviceClickPressure.json

**Core requirements tested**

-   Device.Input.Digitizer.PrecisionTouchpad.Buttons

**Test purpose**

-   Verifies that the device reports button presses only when the required activation force has been exerted.

-   This test is only required for a button switch under the digitizer itself. External buttons are not subject to this requirement.

**Tools required**

-   PTLogo.exe

-   140g slug with 7mm contact area

-   190g slug with 7mm contact area

    Both slugs must maintain capacitance during testing. They should be grounded by either attaching copper wire to the top and placing the other end between 2 fingers, or by keeping 1 or 2 fingers connected to the contact *without applying or alleviating any weight to/from the slug.*

**Validation steps**

**Note**  For this test you will be verifying the activation force needed to register a button press on the touchpad in five locations for positive activation and five locations for negative activation. The five locations for both positive and negative testing should be selected to provide maximum coverage. Positive test locations can be anywhere within the lowest 10mm vertically or lowest 25% of the total area; whichever is largest. Negative test locations can be anywhere across the entire digitizer surface.

 

Perform the following steps to run the tests.

1. Launch Test.DeviceClickPressure.json.

2. **Iteration One** (Negative Test Position 1):

a. Carefully place the 140g slug within 3mm of the bottom left corner of the digitizer surface at negative test position 1, as shown in the following diagram.

![a diagram from the device click pressure test, showing the recommended test area for negative activation.](images/precision-test-negactiv.png)

b. Verify that no button press is reported (the bar at the bottom of the screen should stay grey and not turn green). If no button press is reported, manually Pass the iteration, otherwise manually Fail the iteration.

3. **Iteration Two** (Negative Test Position 2):

a. At negative test position 2 (see the preceding diagram), repeat the steps in Iteration One.

4. **Iteration Three** (Negative Test Position 3):

a. Carefully place the 140g slug on the bottom left corner of the touchpad surface.

b. Slide the slug to negative test position 3 (see the preceding diagram).

c. Verify that no button press is reported (the bar at the bottom of the screen should stay grey and not turn green). If no button press is reported, manually Pass the iteration, otherwise manually Fail the iteration.

5. **Iteration Four** (Negative Test Position 4):

a. Repeat the steps in Iteration Three, but slide the slug from the bottom-right corner to negative test position 4 (see the preceding diagram).

6. **Iteration Five** (Negative Test Position 5):

a. Repeat the steps in Iteration Three, but slide the slug from the bottom-left corner to negative test position 5.

7. **Iteration Six** (Positive Test Position 1):

a. For a click-pad, carefully place the 190g slug within 3mm of the bottom-left corner of the digitizer surface, at positive test position 1 (see the preceding diagram).

b. For a pressure-pad, drop the 190g slug from a height of 1-2mm onto positive test position 1 (see the preceding diagram).

Make sure the slug lands flat on the surface, and not at an angle.

c. If a button press is continually reported while the slug is down, and not reported when the slug is removed, then manually Pass the iteration. Otherwise, manually Fail the iteration.

8. **Iteration Seven** (Positive Test Position 2):
a. For a click-pad, carefully place 190g slug within 3mm of the bottom-right corner of the digitizer surface, at positive test position 2 (see the preceding diagram).

b. For a pressure-pad, drop the 190g slug from a height of 1-2mm onto positive test position 2.

Make sure the slug lands flat on the surface, and not at an angle.

c. If a button press is continually reported while the slug is down, and not reported when the slug is removed, then manually Pass the iteration. Otherwise, manually Fail the iteration.

9. **Iteration Eight** (Positive Test Position 3):
a. For a click-pad, carefully place the 190g slug within 3mm of the bottom edge of the digitizer surface, at positive test position 3 (see the preceding diagram).

b. For a pressure-pad, drop the 190g slug from a height of 1-2mm onto positive test position 3.

Make sure the slug lands flat on the surface and not at an angle.

c. If a button press is continually reported while the slug is down, and not reported when the slug is removed, then manually Pass the iteration. Otherwise manually Fail the iteration.

10. **Iteration Nine** (Positive Test Position 4):
a. For a click-pad, carefully place the 190g slug within 3mm of the bottom edge of the digitizer surface, at positive test position 4 (see the preceding diagram).

b. For a pressure-pad, drop the 190g slug from a height of 1-2mm onto positive test position 4.

Make sure the slug lands flat on the surface and not at an angle.

c. If a button press is continually reported while the slug is down and not reported when the slug is removed, then manually Pass the iteration. Otherwise, manually Fail the iteration.

11. **Iteration Ten** (Positive Test Position 5):

a. For a click-pad, carefully place the 190g slug within 3mm of the bottom edge of the digitizer surface, at positive test position 5 (see the preceding diagram).
b. For a pressure-pad, drop the 190g slug from a height of 1-2mm onto positive test position 5.

Make sure the slug lands flat on the surface and not at an angle.

c. If a button press is continually reported while the slug is down and not reported when the slug is removed, then manually Pass the iteration. Otherwise, manually Fail the iteration.

Here's a diagram showing the recommended test area for positive activation.

![a diagram from the device click pressure test, showing the recommended test area for positive activation.](images/precision-test-posactiv.png)

The following diagram shows the recommended test area for the positive activation force test.

![a diagram from the device click pressure test, showing the recommended test area for positive activation force.](images/precision-test-postestarea.png)

**Common errors**

-   Both slugs must maintain capacitance during testing. They should be grounded by either attaching copper wire to the top and placing the other end between 2 fingers, or by keeping 1 or 2 fingers connected to the contact without applying or alleviating any weight to/from the slug.

-   The entire 7mm slug tip should be on the digitizer surface for any test, and not partially off the edge. This also means that if contact is dropped onto the touchpad, it needs to land flat and not at an angle.

**Passing criteria**

-   10/10 (100%) iterations must pass in order to complete with passing status.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Device%20Click%20Pressure%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




