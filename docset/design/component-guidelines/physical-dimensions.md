---
title: Physical Dimensions
description: This is to test the accuracy of the reported screen size (its physical dimensions), by a Windows pen device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: DD82EF08-6A16-462C-AF68-C424E9D4240E
---

# Physical Dimensions


This is to test the accuracy of the reported screen size (its physical dimensions), by a Windows pen device.

**Test name**

-   Physical Dimensions

**Core requirements tested**

-   Device.Input.Digitizer.Pen.HIDCompliance

**Test purpose**

-   Verifies that the size of the screen reported by the device’s digitizer, matches its physical size.

**Tools required**

-   Ruler.

**Validation steps**

1. Run the test case for Physical Dimensions.

2. Using a ruler, measure the physical dimensions (width and height) of the device’s screen. If the dimensions measured do not match the values reported in the text box in the center of the screen, manually Fail the test. Otherwise, manually Pass the test.

**Note**  Physical measurements should be accurate to +/- 2mm.

 

Here's a screenshot from the Physical Dimensions test.

![screenshot from the physical dimensions test for a windows pen device.](images/pen-test-physdim.png)

**Common error messages**

-   None.

**Passing criteria**

-   1/1 test iterations must pass for test to succeed.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Physical%20Dimensions%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




