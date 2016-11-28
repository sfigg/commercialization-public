---
title: Hover Stationary Jitter
description: This is to test the jitter aspect of a Windows pen device, when the device is in stationary hover.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 89CB4E48-E1A1-4CEF-9B6A-EFD0DD1F38E8
---

# Hover Stationary Jitter


This is to test the jitter aspect of a Windows pen device, when the device is in stationary hover.

**Test name**

-   HoverStationaryJitter

**Core requirements tested**

-   Device.Input.Digitizer.Pen.Jitter - Hover Stationary jitter.

**Test purpose**

-   Verifies that the jitter that is detected when a pen is doing a stationary hover, occurs within prescribed limits.

**Tools required**

-   PT3 with Pen holder.

**Validation steps**

1. Position the pen anywhere over the highlighted region with hover height at approximately 5 mm.

2. Wait a couple of seconds for the highlighted region to turn yellow, which will start recording the pen data.

3. Once the highlighted region turns green again, the data recording is complete.

4. Slowly move the pen away from hover range.

Here's a screenshot from the Hover Stationary Jitter test.

![screenshot from the hover stationary jitter test for a windows pen device.](../images/pen-test-hoverstat.png)

**Common error messages**

-   "The contact did not begin/end in the correct location."
    Occurs if the pen stroke does not begin and end in the green rectangle.
-   "Input made contact with the screen."
    Occurs if the pen interaction touches the screen.
-   "Input ended too early."
    Occurs if the pen is not held stationary in hover range for the required duration.
-   "Jitter too high."
    Occurs if the pen does not pass the hover stationary jitter requirement.

**Passing criteria**

-   7/8 test iterations must pass for test to succeed.
-   This test has a 0.10 mm allowed tolerance, therefore a recorded hover stationary jitter of &lt;= 0.6 mm will result in a pass.
-   Any iteration that is 0.15mm beyond the allowed tolerance, resulting in a recorded hover stationary jitter of &gt;= 0.7 mm, will fail the entire test.
-   Recorded value for Hover Stationary jitter is calculated as maximum hover jitter over the iteration.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Hover%20Stationary%20Jitter%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




