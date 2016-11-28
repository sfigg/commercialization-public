---
title: Power Management
description: This topic provides information about power management for a Windows Precision Touchpad device, and also discusses power consumption requirements.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0221E781-9593-4538-9238-5826FA199C30
---

# Power Management


This topic provides information about power management for a Windows Precision Touchpad device, and also discusses power consumption requirements.

## Power consumption


Power consumption requirements for the various power modes of an integrated Windows Precision Touchpad are at the discretion of the OEM or system builder. However, Windows provides facilities to help balance power efficiency and response latency.

**I**²**C Devices**

Windows Precision Touchpad devices that connect to their Windows hosts via I²C, can implement support for up to 4 distinct power states:

-   Active
-   Idle
-   Either Sleep, or Armed for Wake (both optional)
-   Off

The four power states are shown in the following diagram, along with the device activities that cause transitions from one state to another.

![diagram of the four power states for a windows precision touchpad device connected via i2c. diagram also shows the device activities that cause transitions between states.](../images/pen-i2c-pwrstates.png)

**Active State**

The **Active** state is defined as the device operating mode when one or more contacts are present, the button is down, or there has been activity within 30 seconds. When power is applied to a device, then after device booting is completed, the device should be ready and in the **Active** power state.

A device should adhere to the contact down latency and contact move latency requirements for this mode, as this is where the bulk of compatibility requirements will be tested, and where the majority of user interaction will occur.

**Idle State**

The **Idle** state is defined as the device operating mode when no activity has occurred within 30 seconds.

A device can use reduced scan rate in this mode to reduce power consumption, while still adhering to the contact down latency requirement for this mode.

Once the device has detected activity, it should transition back to the **Active** state.

**Sleep (Armed for Wake) State**

The **Sleep** state is defined as the device operating mode when the device has been issued a HID I²C SET\_POWER SLEEP command by the host.

A device can use reduced scan rate in this mode to significantly reduce power consumption, while still being capable of asserting an interrupt in response to qualified activity, to wake the system. A Windows Precision Touchpad device should ensure that interrupts are not asserted for spurious contacts, since such contacts would result in an unintended system wake. There are no contact down latency requirements for this mode. However, it is recommended that continuous contact that lasts longer than one second should result in an interrupt being asserted.

The device should transition to the **Active** state after receiving a HID I²C SET\_POWER ON command from the host.

**Off State**

The **Off** state is defined as the device operating mode when the device has had its power completely removed. When power is applied to the device, then after device booting is completed, the device should be ready and in the **Active** state. Device boot-up should complete before the computer display is initialized and enabled.

In the **Off** state a device should not consume any power.

## USB Devices


Windows Precision Touchpad devices that connect to their Windows hosts via USB, can implement support for up to 4 distinct power states:

-   Active
-   Idle
-   Either Sleep, or Armed for Wake (both optional)
-   Off

The four power states are shown in the following diagram, along with the device activities that cause transitions from one state to another.

![diagram of the four power states for a windows precision touchpad device connected via usb. diagram also shows the device activities that cause transitions between states.](../images/pen-usb-pwrstates.png)

**Active State**

The **Active** state is defined as the device operating mode when the host has not suspended the device. When power is applied to a device, then after device booting is completed, the device should be ready in the **Active** power state.

A device shall adhere to the contact down latency and contact move latency requirements for this mode.

**Idle State**

The **Idle** state is defined as the device operating mode when no contacts or button activity has occurred within a host defined period, and the device has therefore been suspended. This is referred to as *USB selective suspend*.

Windows Precision Touchpad devices that connect via USB should support selective suspend, and report this capability via a [Microsoft OS descriptor](https://msdn.microsoft.com/library/windows/hardware/gg463179).

A device can use reduced scan rate in this mode, to reduce power consumption while still adhering to the contact down latency requirement for this mode.

Once the device has detected a qualified activity, it should signal a remote wake. From the time the remote wake event is detected, the device should buffer at least 100ms worth of contact reports, to ensure that little to no input is lost while the USB host controller is resuming.

**Sleep (Armed for Wake) State**

The **Sleep** state is defined as the device operating mode when the host has transitioned to S3, or Connected Standby. This is indicated to the device via the latency mode feature report, with a value of '1' indicating that maximum latency is permitted. The device should exit this high latency mode both on activity and on host resume.

A device can use reduced scan rate in this mode, to significantly reduce power consumption while still being capable of signaling a remote wake as qualified activity to wake the system. A Windows Precision Touchpad should ensure that remote wake is not signaled for spurious contacts, since such contacts would result in an unintended system wake. There are no contact down latency requirements for this mode. However, it is recommended that continuous contact that lasts longer than one second, should result in an interrupt being asserted.

**Off State**

The **Off** state is defined as the device operating mode when the device has had its power completely removed. When power is applied to the device, then after device booting is completed, the device should be ready and in the **Active** state. Device boot-up should complete before the computer display is initialized and enabled.

In the **Off** state a device should not consume any power.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Power%20Management%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




