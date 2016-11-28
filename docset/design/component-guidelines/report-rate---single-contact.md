---
title: Report Rate - Single Contact
description: This is to test the single contact reporting capabilities of a Windows Precision Touchpad device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: DCF11F71-719B-4F03-8260-43F026EAB540
---

# Report Rate - Single Contact


This is to test the single contact reporting capabilities of a Windows Precision Touchpad device.

**Test name**

-   Test.ReportRate.json

**Core requirements tested**

-   Device.Digitizer.PrecisionTouchPad.Performance.ReportRate

**Test purpose**

-   Verifies that the device is able to report a single contact at the required report rate of 125 Hz for a single contact.

**Tools required**

-   PTLogo.exe

**Validation steps**

1. Launch Test.ReportRate.json.

2. Following the instructions on the screen, move a single contact on the digitizer surface for 1, 5, or 20 seconds (a clock in the upper right corner shows how many seconds have passed since the contact has been down).

3. Repeat for a total of 11 times – Note that the length of time will change for some iterations, so please read and follow the on-screen instructions for each iteration.

4. PTLogo will fail an iteration and display an error on lift if the measured report rate is too low, or if it exceeds 250 Hz. Otherwise, the iteration will pass upon lift, and PTLogo will advance to the next iteration.

**Common errors**

-   If an iteration continues after the contacts have been lifted, the device may not have reported the clearing of the tip switch correctly.

**Passing criteria**

-   11/11 (100%) iterations must pass in order to complete with passing status.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Report%20Rate%20-%20Single%20Contact%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




