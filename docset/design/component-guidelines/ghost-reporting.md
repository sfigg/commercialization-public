---
title: Ghost Reporting
description: This is to test the ghost reporting aspect of a Windows pen device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3BF6F31F-ED3A-4997-9941-61609CF42278
---

# Ghost Reporting


This is to test the ghost reporting aspect of a Windows pen device.

**Test name**

-   Pen.GhostReporting

**Core requirements tested**

-   Device.Input.Digitizer.Base.ContactReports

**Test purpose**

-   Verifies that the pen does not report ghost points.

**Tools required**

-   None.

**Validation steps**

1. Ensure that the device is using the power source.

2. Leave the pen out of range for 60 seconds.

3. Disconnect power source.

4. Leave the pen out of range for 60 seconds.

Here's a screenshot from the Ghost Reporting test.

![screenshot from the ghost reporting test for a windows pen device.](../images/pen-test-ghostrep.png)

**Common error messages**

-   "Ghost input detected"
    Occurs if any pen input is detected during the test.

**Passing criteria**

-   2/2 test iterations must pass for the test to succeed.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Ghost%20Reporting%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




