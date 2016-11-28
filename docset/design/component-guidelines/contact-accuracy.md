---
title: Contact accuracy
description: This is to test the contact position reporting accuracy of a Windows pen device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: BD14AA96-A1D8-4879-AACF-BD13C8C7352F
---

# Contact accuracy


This is to test the contact position reporting accuracy of a Windows pen device.

**Test name**

-   ContactAccuracy

**Core requirements tested**

-   Device.Input.Digitizer.Pen.Accuracy

**Test purpose**

-   Verifies that while the pen is in contact with the screen, the physical contact with the device matches the contact position that the device reports - within allowed limits.

**Tools required**

-   PT3 device with Pen holder + 150g weight.

**Validation steps**

1. Run the test case for Contact Accuracy.
2. Following the directions on the screen, tap at the center of the circle located at the cross hair. For each iteration:
a. Tap the center of the location specified on the screen.
Here's a screenshot from the Contact Accuracy test.

![screenshot from the contact accuracy test for a windows pen device.](../images/pen-test-contaccuracy.png)

**Common error messages**

-   "Contact distance from target too large:\[hm\]"
    Occurs if the tap is too far away from the center of the target. Distance given in hundredths of a millimeter.

**Passing criteria**

-   14/16 test iterations must pass for test success.
-   This test has an allowed tolerance of 0.1mm, therefore a recorded contact accuracy &lt;= 0.6 mm will result in a pass.
-   Any iteration that is 0.1mm beyond accepted tolerance, resulting in a recorded contact accuracy &gt;= 0.7 mm, will fail the entire test.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Contact%20accuracy%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




