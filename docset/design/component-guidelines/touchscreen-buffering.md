---
title: Buffering
description: This is to test the data buffering capabilities of a Windows Touchscreen device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1DBEC5B9-C6D7-4AD9-BDD9-330D7D3B3BEC
---

#  Buffering


This is to test the data buffering capabilities of a Windows Touchscreen device.

**Test name**

Buffering.json
**Associated compatibility requirements**

Device.Input.Digitizer.Touch.Buffering
**Test purpose**

Verifies that a Windows Touchscreen device supports the required amount of buffering that prevents data loss.
**Tools required**

None.
**Running the test**

Because some touch events can be lost while the digitizer is waking up, it is necessary to test that the touch buffer correctly stores data. The test also ensures that the user experience is not degraded by data loss, for example, losing an edge swipe.

Launch the test and follow the instructions. When you swipe the screen, the test will check to see if enough touch data was registered. If enough data was registered, then the test will pass. Please ensure that the swipe is quick – no longer than half a second.

**Command syntax**

Logo3.exe -config Buffering.json
**Passing criteria**

100% of the iterations must pass in order to complete with passing status.
 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20%20Buffering%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




