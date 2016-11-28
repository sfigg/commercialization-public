---
title: Reporting Rate
description: This is to test the contact reporting rate of a Windows Touchscreen device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7D257BB3-786E-4D7F-BF54-01F4718E4D88
---

# Reporting Rate


This is to test the contact reporting rate of a Windows Touchscreen device.

**Test names**

-   ReportingRateOneContact.json
-   ReportingRateFiveContacts.json
-   ReportingRateMaxContacts.json

**Associated compatibility requirements**

Device.Input.Digitizer.Touch.ReportRate
**Test purpose**

Verifies that a Windows Touchscreen device correctly reports physical contact at a rate greater than, or equal to the display refresh rate.
**Tools required**

PT3
**Running the test**

A packet rate that is equal to, or greater than the display rate will ensure that no visual glitches appear when using the touchscreen. A high packet rate helps ensure smooth, fluid motion, and it supports the feeling that the user interface (UI) is connected to the user's finger. The input rate data and the increased data throughput both improve gesture recognition.

This test includes four separate reporting rate scenarios that are distinguished by single and multiple contacts and stationary contact versus motion. In each scenario, the test validates that the minimum reporting rate is maintained for each contact (and specifically not just the average reporting rate).

**Command syntax**

Logo3.exe -config ReportingRate.json
**Passing criteria**

100% of the iterations must pass in order to complete with passing status.
 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Reporting%20Rate%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




