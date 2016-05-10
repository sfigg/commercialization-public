---
title: Touch Response Latency (Panning)
description: This is to test the response panning latency characteristics of a Windows Touchscreen device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: B7C5BC51-A0D1-4214-B70F-556A134DD597
---

# Touch Response Latency (Panning)


This is to test the response panning latency characteristics of a Windows Touchscreen device.

**Test name**

stepmotor.exe
**Associated compatibility requirements**

Device.Input.Digitizer.Touch.Latency
**Test purpose**

Verifies that a Windows Touchscreen device meets the response panning latency requirement.
**Tools required**

RA tool. See [Hardware Requirements and Vendor Information](touchscreen-hardware-requirements-and-vendor-information.md).
**Running the test**

Low response *latency* plays a large role in ensuring fast and fluid motion. This is similar to the [Reporting Rate](reporting-rate.md) test, where a high packet rate helps ensure smooth, fluid motion. Conversely, a high degree of response latency breaks the illusion that the user is manipulating a physical object.

This test uses specialized hardware to measure the latency in touch packet delivery for panning. For more detailed information, see [How to measure Touch Panning Latency](../../test/hck/how-to-measure-touch-panning-latency-win81.md).

**Note**  For Windows 10 testing, please use the 7mm contacts instead of the 9mm contacts.

 

Also note that the Touch panning latency test is designed to evaluate device latency during active use on the touchscreen. The test utilizes the acoustic latency measurement tool that requires calibration to complete the test.

On USB systems that have selective suspend enabled, this calibration period may cause errors in the device due to wake times. For the purpose of this test, selective suspend may be disabled to ensure the device is in active mode for the full duration of the calibration and validation.

It is important to note that selective suspend must be re-enabled after the operator is done running the panning latency test since the rest of the test in the suite will not correctly evaluate the device with selective suspend disabled.

**Command syntax**

stepmotor.exe
**Passing criteria**

Average latency recorded during the test must meet the requirement to complete with passing status. There is a 20% tolerance on panning latency tests.
 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Touch%20Response%20Latency%20%28Panning%29%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




