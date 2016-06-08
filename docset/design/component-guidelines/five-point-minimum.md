---
title: Five Point Minimum
description: This is to test the five-point contact capabilities of a Windows Touchscreen device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 326F7135-31E4-4A1F-BC20-72795AFA1894
---

# Five Point Minimum


This is to test the five-point contact capabilities of a Windows Touchscreen device.

**Test name**

5TouchPointMinimum.json
**Associated compatibility requirements**

-   Device.Input.Digitizer.Touch.MinContactCount
-   Device.Input.Digitizer.Base.HIDCompliant

**Test purpose**

Verifies that a Windows Touchscreen device supports a minimum of five simultaneous touch inputs.
**Tools required**

None. Can optionally use PT3.
**Running the test**

Because touch capabilities must be consistent across all computers, a minimum number of supported touch points are required. Five-finger support allows for whole-hand interactions in addition to quick and efficient touch-screen typing.

This test presents a single scenario that asks you to briefly place five or more contacts on the screen. All contacts that are placed at the beginning of the test must continue to report for the full duration of the test.

**Command syntax**

Logo3.exe -config 5TouchPointMinimum.json
**Passing criteria**

100% of the iterations must pass in order to complete with passing status.
 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Five%20Point%20Minimum%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




