---
title: Latency - Touch Down
description: This is to test the reporting capabilities of the Windows Precision Touchpad device, with regard to latency and touch down.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 452005A7-49FF-468F-A436-19460132A643
---

# Latency - Touch Down


This is to test the reporting capabilities of the Windows Precision Touchpad device, with regard to latency and touch down.

**Test name**

-   Test.AudioTouch.json

**Core requirements tested**

-   Device.Input.Digitizer.PrecisionTouchpad.Latency

**Test purpose**

-   Verifies that the device is able to report the first contact down within the required latency window.

**Tools required**

-   RA Tool. For vendor information about the RA tool, see [Hardware Requirements and Vendor Information](touchscreen-hardware-requirements-and-vendor-information.md).

-   ptaudiotouch.exe

**Validation steps**

For detailed setup and test instructions, see [How to measure Touch Down Latency by using an Acoustic Measurement Tool](https://msdn.microsoft.com/library/windows/hardware/dn195876).
a. Note: use ptaudiotouch.exe, rather than the touch executable.

b. Only 50 taps during the collection phase are required for this class of device.

**Common error messages**

-   None.

**Passing criteria**

-   A recorded average touch-down latency of less than or equal to 35.0ms will result in a pass.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Latency%20-%20Touch%20Down%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




