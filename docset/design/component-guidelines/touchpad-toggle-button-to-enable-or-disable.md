---
title: Enable, Disable Toggle Button
description: Windows Precision Touchpad devices (or legacy touchpad devices that were configured for enable/disable control in Windows 8.1), can have their enable/disable state toggled via a hardware button, or a keyboard combination.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: C82D4DD3-F98E-4D45-BC5A-14E00CD237EB
---

# Enable, Disable Toggle Button


Windows Precision Touchpad devices (or legacy touchpad devices that were configured for enable/disable control in Windows 8.1), can have their enable/disable state toggled via a hardware button, or a keyboard combination.

For convertible devices that implement integrated touchpads on keyboards that can be folded back, a device driver that typically disables keyboard or button features can also disable the precision touchpad. To disable the precision touchpad, the device driver should first query the following registry key:

\[HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\PrecisionTouchPad\\Status\\Enabled\]

If this value is non-zero, the driver can issue a hotkey combination \[**CTRL + WIN + F24**\] to toggle the precision touchpad OFF. If the keyboard is no longer folded back, and the value of the registry key is zero, then the driver can toggle it back ON.

**Note**  This registry key is read only, and is not to be modified directly.

 

So in short, the state of the touchpad will be toggled when the **CTRL + WIN + F24** keyboard combination is reported to the host.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Enable,%20Disable%20Toggle%20Button%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




