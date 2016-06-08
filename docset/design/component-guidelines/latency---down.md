---
title: Latency - Down
description: This is a test to check the time lag (latency) between a Windows pen contact with a screen, and when the contact is reported to Windows.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9DB05720-5F69-4F9C-B076-ADC2B3706AC2
---

# Latency - Down


This is a test to check the time lag (latency) between a Windows pen contact with a screen, and when the contact is reported to Windows.

**Test name**

-   Down Latency

**Core requirements tested**

-   Device.Input.Digitizer.Pen.Latency – Down Latency

**Test purpose**

-   Verifies that when the pen makes initial contact with the screen, the lag between the pen being at a location, and having the location reported to Windows is within allowed limits.

**Tools required**

-   RA Tool

**Validation steps**

1. For detailed instructions for this test, see [How to measure Touch Down Latency by using an Acoustic Measurement Tool](../../test/hck/how-to-measure-touch-down-latency-by-using-an-acoustic-measurement-tool.md).
a. Note: when directed to contact screen with finger, use pen instead.

b. For each tap, ensure that the pen starts within hover range (approximately 5mm above the screen), and then contacts the screen with enough force to exceed the pen's activation force. And also make sure that the contact point is more than 8mm from any edge of the screen.

c. Only 50 taps during the collection phase are required for this class of device.

2. When performing the test, virtually divide the screen into six random regions to prepare to uniformly cover all six areas. The difference of sample counts in any two regions cannot be more than 10%; that is, if you tap 50 times for all regions, you cannot tap more than 9 times for any single region. This ensures that the latency of each region is equally represented in the final average latency.
a. If you plan to move the microphone as you cover each region, place the microphone in the first area that you plan to tap.

b. Alternatively, you can place the microphone near the center area (for example, between (**2,1**) and (**2,2**) in the following diagram). In this case, you must move the microphone at least one time to also cover the original placement of the microphone.

Here's a screenshot from the Down Latency test.

![screenshot from the down latency test for a windows pen device.](images/pen-test-latdown.png)

**Common errors**

-   During the collection phase, any palm or touch contact with the device before the pen contacts the screen, could be picked up by the microphone. Please avoid contacting the screen with anything other than the pen, and refrain from bumping the RA tool, or making loud noises during the collection phase.

**Passing criteria**

-   50 iterations between all screen regions must be collected, with a passing average pen down latency for test success.
-   This test has a 7ms allowed tolerance, therefore an average pen down latency of &lt;=42ms will result in a pass.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Latency%20-%20Down%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




