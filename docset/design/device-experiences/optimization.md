---
title: Optimization
description: The optmization process for a Modern Standby system follows the same patterns used in optimizing a Windows 8.1 Connected Standby system. You can find detailed recommendations here on MSDN.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: D1B34D5D-E122-4897-8DCD-2EB2F07481B9
---

# Optimization


The optmization process for a Modern Standby system follows the same patterns used in optimizing a Windows 8.1 Connected Standby system. You can find detailed recommendations here on [MSDN](http://msdn.microsoft.com/library/windows/hardware/dn495353.aspx).

## Adaptive idle usage


The new adaptive idle timeout algorithm, introduced in Windows 10, balances power consumption with device reliability from a host-perspective. It applies only to storage devices reporting a seek penalty and will only be active if the respective miniport driver opts in to this capability. StorAHCI.sys (inbox driver) automatically enables this.

Since rotating media can only withstand a finite number of load/unload cycles – which are caused by power state transitions from D0 to D3 and back – the host will attempt to average no more than one power state transition per 5-minute interval, by default.

This means, if a device has been powered off (D3) for a long period of time (for example 30 minutes), then you could expect the next power state transition from D0 to D3 to be very fast, since the host built up "credit" and the average would still be well below one transition per 5 minutes.

On the other hand, if the device has been power cycled more frequently than once per 5 minutes, the host will delay the next transition from D0 to D3 by as much as 5 minutes in an attempt to return to the target average over time.

A miniport driver can opt-in to this behavior:

-   Register a [**STOR\_POFX\_DEVICE\_V3**](https://msdn.microsoft.com/library/windows/hardware/dn931828) with [**StorPortInitializePoFxPower**](https://msdn.microsoft.com/library/windows/hardware/hh920421) in the ScsiUnitPoFxPowerInfo unit control callback.

-   Set the STOR\_POFX\_DEVICE\_FLAG\_ADAPTIVE\_D3\_IDLE\_TIMEOUT flag in the **Flags** member of the [**STOR\_POFX\_DEVICE\_V3**](https://msdn.microsoft.com/library/windows/hardware/dn931828) structure.

-   Set the **MinimumPowerCyclePeriodInMS** member in the [**STOR\_POFX\_DEVICE\_V3**](https://msdn.microsoft.com/library/windows/hardware/dn931828) structure to the value that indicates, in the worst case, how often the device can be power cycled. Units are in milliseconds. We recommend this be at least 5 minutes (i.e. the device should not be power cycled more than once every 5 minutes).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Optimization%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




