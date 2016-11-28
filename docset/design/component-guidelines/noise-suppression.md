---
title: Noise Suppression
description: This is to test the ability of a Windows Touchscreen device to suppress invalid input (noise) that could otherwise be mistaken as touch input.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2DCB4F4F-8E27-4505-BC1A-93B03A640955
---

# Noise Suppression


This is to test the ability of a Windows Touchscreen device to suppress invalid input (noise) that could otherwise be mistaken as touch input.

**Test name**

NoiseSuppression.json
**Associated compatibility requirements**

Device.Input.Digitizer.Base.ContactReports
**Test purpose**

Verifies that a Windows Touchscreen device does not report data for locations where touch input does not occur.
**Tools required**

PT3
**Running the test**

This test can help to ensure that touch systems can effectively tolerate common environmental conditions.

This test presents two scenarios: the only distinction between the two scenarios is the power source. For the Battery portion of the test, you should remove the external power source from a mobile system. For AIOs and external monitors, perform the test with AC power. In each case, the test validates that a contact that is held at the minimum required distance from the screen does not register any touch contacts.

**Command syntax**

Logo3.exe -config NoiseSuppression.json
**Passing criteria**

100% of the iterations must pass in order to complete with passing status.
 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Noise%20Suppression%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




