---
title: Behavior differences between S3 and Modern Standby
description: Describes the differences between S3 and Modern Standby, including technical differences, AC power over battery power, wake patterns, and wake events.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: A6AD6549-2C26-491A-93A9-977028B1F8C4
---

# Behavior differences between S3 and Modern Standby


## Technical differences


Connected and disconnected Modern Standby states transitions follow a very similar code flow. The biggest difference is maintaining network connection. When a system goes into disconnected Standby state, it enters DRIPS, just like with the connected state. The primary difference is that it stops Wi-Fi traffic if a rotational HDD or NIC that is not capable of offload support is detected.

When in the lowest power state, systems may look very similar to systems in the S3 state—processors are powered off, memory is in self-refresh. The difference is in the path of how it enters and exits low power state. For S3 systems, the system is either active or in S3. For Modern Standby, the transition from the active to the low power state is a series of steps to lower power consumption. Components are powered [down](p_WEG_hardware.device-specific_power_management_for_modern_standby) when they are not in use. So, the transition into and out of a lower power state is much quicker on a Modern Standby system than on an S3 system. This design also helps with the speed of entry and exit from Standby as it doesn’t require firmware interactions.

## AC power vs. battery power


Modern Standby systems are capable to go into maintenance [mode](http://msdn.microsoft.com/library/windows/desktop/jj835985.aspx) while on AC power. If a maintenance task occurs while on AC power, networks would connect, allowing for updates and other activities to occur.

## Wake patterns while in DRIPS


Windows 8.1 Connected Standby systems wake up at least once every 30 seconds from DRIPS to process work.

Windows 10 is optimized to deliver longer battery life by postponing non-critical work and removing unnecessary wakeups during Modern Standby, particularly when the system is operating on battery power. Device interrupts continue to operate as normal to allow incoming instant messages, notifications, phone calls, etc. Some timers are postponed indefinitely until the system is awake or plugged into AC power to reduce the amount of power consumed by processing non-critical work when the system is “asleep”.

## Wake events


Modern Standby systems have the same wake capabilities as Windows 8.1 Connected Standby systems based on events. Wake capabilities make it easier to support a wider range of wake scenarios such as wake-on-Bluetooth device events.

The use of legacy wake events are possible, however it would require the ability to arm a device for wake when going into a D3 state. For example, a wake on LAN would be expected to work the same way on a Connected Standby, Modern Standby and S3 system.

For more information on wake support, see [Modern standby wake sources](modern-standby-wake-sources.md).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Behavior%20differences%20between%20S3%20and%20Modern%20Standby%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




