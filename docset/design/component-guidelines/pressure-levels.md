---
title: Pressure Levels
description: This is to test the accuracy of the reported pressure levels by a Windows pen device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7EF14ABB-FF21-4D52-A83D-D7D8BFF2C6EC
---

# Pressure Levels


This is to test the accuracy of the reported pressure levels by a Windows pen device.

**Test name**

-   PressureLevels

**Core requirements tested**

-   Device.Input.Digitizer.Pen.Pressure.

**Test purpose**

-   Verifies that the pen has a logarithmic reported pressure value between activation force and 250 g of input applied force.

**Tools required**

-   Pressure Jig (TRIEX Stylus Force Test Tool or ITRI Pen Holder for Pressure Test) and weights.
-   Zip ties are needed, if you decide to use Triex pen test kit.

**Validation steps**

1. Run the test case for Pressure Levels.

2. Note that this test requires different weights to be applied to the pen holder instead of the nominal weight.

3. Follow the calibration procedure for the pen on the pressure jig.

a. Attach the pen to the pen holder of the pressure jig
b. Adjust the counterweights so that the pen is perfectly balanced with 0 grams of pressure.
c. Do not re-calibrate the pressure jig in the middle of the test. If the jig requires additional calibration after you’ve started the test, re-calibrate the jig and restart the test.
4. Add weights onto the pen holder on the pressure jig to match the weight being displayed on the screen.

a. The weights shown on the screen will be 7g, 15g, 25g, 50g, 75g, 100g, 125g, 150g, 175g, 200g, and 250g.
b. The 7g and 15g iterations are optional to provide better accuracy for devices that exceed the activation force requirement – there is no penalty for skipping these iterations.
5. Slowly and softly lower the pen to any location on the screen, and keep the pen in contact with the screen for at least 5 seconds.

6. After 5 seconds have passed, lift the pen from the screen from the bottom of the pen holder, to ensure additional pressure is not recorded by the test.

Here's a screenshot from the Pressure Levels test.

![screenshot from the pressure levels test for a windows pen device.](../images/pen-test-presslevel.png)

**Common error messages**

-   "Reported pressure levels exceed tolerance."
    Occurs if the reported pressure levels are too far from logarithmic curve.

**Passing criteria**

-   9 out of 11 test iterations must pass for test to succeed.
    -   Iterations 1 and 2 are optional and not required to pass
    -   Iterations 3-11 must pass for test to succeed
-   The reported levels of pressure for the corresponding applied weights must follow a logarithmic curve.
    Logarithmic regression will calculate an r² &gt; 0.9, and log regression r² &gt; linear regression r².
-   The reported levels of pressure must fall within the tolerance of the ideal pressure curve. The ideal pressure curve and the upper and lower bounds are shown below, normalized to a 0-1 logical scale.

Here's a diagram showing the ideal pressure curve for a Windows pen device.

![diagram showing the ideal pressure curve for a windows pen device.](../images/pen-pressure-crv.png)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Pressure%20Levels%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




