---
title: Touch Response Latency (Down)
description: This is to test the down latency behavior of a Windows Touchscreen device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 76E06674-169C-4958-828D-90DC830D4DAA
---

# Touch Response Latency (Down)


This is to test the down latency behavior of a Windows Touchscreen device.

**Test name**

audiotouch.exe
**Associated compatibility requirements**

Device.Input.Digitizer.Touch.Latency
**Test purpose**

Verifies that a Windows Touchscreen device meets the response down latency requirements when the digitizer is active.
**Tools required**

RA tool. See [Hardware Requirements and Vendor Information](touchscreen-hardware-requirements-and-vendor-information.md).
**Running the test**

Low response *latency* plays a large role in ensuring fast and fluid motion. This is similar to the [Reporting Rate](reporting-rate.md) test, where a high packet rate helps ensure smooth, fluid motion. Conversely, a high degree of response latency breaks the illusion that the user is manipulating a physical object.

This test uses specialized hardware to measure the latency in touch packet delivery for touch-down. For more detailed instructions, see [How to measure Touch Down Latency by using an Acoustic Measurement Tool](https://msdn.microsoft.com/library/windows/hardware/dn195876).

Only 50 taps are required during the collection phase.

**Command syntax**

audiotouch.exe
**Passing criteria**

Average latency recorded during the test must meet the requirement to complete with passing status.
 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Touch%20Response%20Latency%20%28Down%29%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




