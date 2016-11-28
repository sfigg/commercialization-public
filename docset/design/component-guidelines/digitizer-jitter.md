---
title: Digitizer Jitter
description: This is to test the jitter characteristics of a Windows Touchscreen device (or digitizer).
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: A73359D8-BB78-4658-B8B8-0A755E332538
---

# Digitizer Jitter


This is to test the jitter characteristics of a Windows Touchscreen device (or digitizer).

**Test name**

-   DigitizerJitterOneContact.json
-   DigitizerJitterFiveContacts.json

**Associated compatibility requirements**

Device.Input.Digitizer.Touch.Jitter
**Test purpose**

Verifies that a Windows Touchscreen device does not exceed the allowable amount of jitter – moving and stationary.
**Tools required**

PT3
**Running the test**

Clean input is important throughout the system and across applications. Whether a user is performing a hold gesture to learn more about a user interface (UI) element, playing a game, or holding a key on the software keyboard, this fidelity allows software to correctly interpret a user's intention and provide an optimal touch experience.

This test presents twelve distinct scenarios that examine jitter during static contact and linear motion. Most of these interactions require the use of assistive technology.

**Command syntax**

Logo3.exe -config DigitizerJitter.json
**Passing criteria**

100% of the iterations must pass in order to complete with passing status.
 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Digitizer%20Jitter%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




