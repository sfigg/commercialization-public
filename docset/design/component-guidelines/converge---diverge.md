---
title: Converge / Diverge
description: This is to test the contact tracking and reporting capabilities of a Windows Precision Touchpad device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7D7D3604-BBC7-4521-A999-B9BEE7D99D06
---

# Converge / Diverge


This is to test the contact tracking and reporting capabilities of a Windows Precision Touchpad device.

**Test name**

-   Test.ConvergeDivergeDiagonal.json

**Core requirements tested**

-   Device.Input.Digitizer.PrecisionTouchpad.FingerSeparation

**Test purpose**

-   Verifies that the device can track and report unique contacts without aliasing at continually varying separation distances.

**Tools required**

-   PT3 w/Precision Touchpad Modifications (or similar assembly for converge/diverge).
-   PTLogo.exe

**Validation steps**

1. Launch Test.ConvergeDivergeDiagonal.json in ptlogo.exe.

2. Use the converge/diverge assembly with two 7mm precision contacts.

3. Rotate the plate 45°.

4. Place these precision contacts on the digitizer surface separated by distance as instructed on screen.

5. As instructed, move contacts either towards each other (converge) or apart (diverge).
a. Every 2nd iteration, move the contacts to a new location on the touchpad.
b. Five iterations per direction for both converge and diverge (10 total).
6. If the 2 contacts remain distinct and no errors are detected, PTLogo will automatically pass the iteration and advance to the next.

- As shown in the following image, start with contacts greater than 23mm apart, and move them together until they are 8mm apart, edge to edge.

![image from the converge - diverge test, showing the recommended movement and distances for passing the converge part of the test.](images/precision-test-converge.png)

- As shown in the following image, start with contacts 9mm apart edge to edge, and move them until they are greater than 23mm apart.

![image from the converge - diverge test, showing the recommended movement and distances for passing the diverge part of the test.](images/precision-test-diverge.png)

**Common error messages**

When you perform this test, make sure that the widest distance between contacts is always greater than 23mm, and the smallest distance is always less than 9mm from edge to edge.

Here are some common error messages, along with their meanings.

-   "\[17\] not enough separation of points: \#\#\#\#."

    Either a converge test didn’t start with the contacts far enough apart, or a diverge test didn’t pull the contacts apart enough. The displayed value (\#\#\#\#) indicates the reported distance between the contacts.

    Here's a screenshot from the test, showing insufficient separation between points.

    ![screenshot from the converge - diverge test, showing insufficient separation of contact points.](images/precision-test-notenough.png)

-   "\[18\] too much separation of points: \#\#\#\#."

    Either a converge test didn’t bring the contacts close enough together, or a diverge test didn’t start with the contacts close enough. The displayed value (\#\#\#\#) indicates the reported distance between the contacts.

    Here's a screenshot from the test, showing too much separation between contact points.

    ![screenshot from the converge - diverge test, showing too much separation between contact points.](images/precision-test-toomuch.png)

**Passing criteria**

-   A total of 30/30 (100%) iterations must pass in order to complete with passing status.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Converge%20/%20Diverge%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




