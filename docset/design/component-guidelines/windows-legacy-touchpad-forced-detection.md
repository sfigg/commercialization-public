---
title: Legacy Touchpad Forced Detection
description: This topic describes the mechanism for forcing Windows 8.1 to detect a touchpad irrespective of connectivity as a legacy device on mobile form-factors.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: DB648700-4AEE-4689-9FD7-2019E030036A
---

#  Legacy Touchpad Forced Detection


This topic describes the mechanism for forcing Windows 8.1 to detect a touchpad irrespective of connectivity as a legacy device on mobile form-factors.

Any touchpad that is not identified as a certified Windows Precision Touchpad is classified as a legacy touchpad provided it is identified by the host as an integrated peripheral on a mobile form-factor. If an integrated touchpad is not identified by the host as a legacy touchpad, the following features will not be available:

-   Inbox Accidental Activation Prevention (AAP)
-   PC Settings Touchpad Page
    -   Including the ability to opt-in to settings beyond AAP
    -   See [Legacy Touchpad PC Settings Opt-In](windows-precision-touchpad-legacy-touchpad-pc-settings-opt-in.md) for additional information

There are circumstances in which a legacy touchpad integrated with a keyboard may not be identified correctly due to underlying issues in how the device is exposed to the host.

1.  Touchpad is connected via a USB port marked as removable
2.  Touchpad is connected via Bluetooth

In the above circumstances, Windows 8.1 will automatically assume the touchpad is an external mouse or touchpad and will not enable legacy touchpad features.

## Approved List Mechanism


Irrespective of how a device is exposed to the host, Windows 8.1 provides the ability to force legacy identification and feature enablement through an approved list mechanism.

By creating a registry entry under the following key and specifying the desired matching level, Windows 8.1 will force a matching device to be detected as a legacy touchpad.

**HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\PrecisionTouchPad\\LegacyDevices\\**

The value of that DWORD specifies what level of matching should be undertaken for a specific entry.

|                    |            |
|--------------------|------------|
| Matching Level     | Value      |
| VID/PID Only Match | 0x00000001 |
| VID/PID/REV Match  | 0x00000002 |
| Full HWID Match    | 0x00000003 |

 

For example if a device with HWID (ACPI\\MSFT0001) wanted to be exactly matched based on HWID, it would specify its entry as follows:

ACPI\\MSFT0001 0x00000003

For example if a touchpad with HWID (HID\\VID\_045E&PID\_003F&REV\_03FF&MI\_02&COL01) wanted to ensure a match irrespective MI and COL, it would specify its entry as follows:

HID\\VID\_045E&PID\_003F&REV\_03FF 0x00000002

For more information, see [HIDClass Hardware IDs for Top-Level Collections](http://msdn.microsoft.com/library/ff538842.aspx).

With reference to the above example, if the same touchpad wanted to ensure a match irrespective of version (RevID), it would specify its entry as follows:

HID\\VID\_045E&PID\_003F 0x00000001

Note that a full HWID string may be specified in the registry with the DWORD value indicating the level of matching, for instance the second example has a functional equivalent below:

HID\\VID\_045E&PID\_003F&REV\_03FF&MI\_02&COL01 0x00000002

**Note**  If importing or exporting from the registry, the “\\” will be duplicated as “\\\\” since this is a delimiting character. If pasting via registry editor, ignore the extra delimiter.

 

`Windows Registry Editor Version 5.00``[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\PrecisionTouchPad\LegacyDevices] "HID\\VID_045E&PID_003F&REV_03FF"=dword:00000002`

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20%20Legacy%20Touchpad%20Forced%20Detection%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




