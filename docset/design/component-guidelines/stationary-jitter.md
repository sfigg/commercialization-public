---
title: Stationary Jitter
description: This is to test the position reporting accuracy (jitter) of a Windows pen device that is stationary on the screen.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: BABE30F8-C54B-4223-AE9B-EFD72FD52A0F
---

# Stationary Jitter


This is to test the position reporting accuracy (jitter) of a Windows pen device that is stationary on the screen.

**Test name**

-   StationaryJitter

**Core requirements tested**

-   Device.Input.Digitizer.Pen.Jitter – Stationary Jitter.

**Test purpose**

-   Verifies that while the pen is held perfectly stationary in contact with the screen, the contact position that the device reports is within allowed limits.

**Tools required**

-   PT3 with Pen holder + 150g.

**Validation steps**

1. Run the test case for Stationary Jitter.

2. The pen should be held at a 45 degrees angle during this test.

3. Following the directions on the screen, bring pen in contact with screen within the highlighted quadrant.

4. Hold the pen steady in this state for at least 2 seconds.

5. Ensure that activation force at all times when the pen is in contact with the screen.

Here's a screenshot from the Stationary Jitter test.

![screenshot from the stationary jitter test for a windows pen device.](images/pen-test-statjitter.png)

**Common error messages**

-   "Jitter too high."
    Occurs if the pen’s jitter exceeds the tolerance.
-   "The contact did not begin/end in the correct location."
    Occurs if the pen stroke does not begin and end in the green rectangle.
-   "The interaction’s duration was too short."
    Occurs if the pen stroke does not last the required duration.

**Passing criteria**

-   7/8 test iterations must pass for test success.
-   This test has a .06 mm (20%) allowed tolerance, therefore a recorded stationary jitter &lt;= 0.36 mm will result in a pass.
-   A single iteration that is more than .06 above the allowed tolerance, resulting in a stationary jitter of &gt;=0.42 mm, will fail the entire test.

    Output is derived as the max value of jitter over valid iterations

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Stationary%20Jitter%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




