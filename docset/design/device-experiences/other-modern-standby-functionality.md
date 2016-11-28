---
title: Other modern standby functionality
description: Additional activities that occur during modern standby include Automatic Maintenance.
MS-HAID:
- 'cstandby.other\_connected\_standby\_functionality'
- 'p\_weg\_hardware.other\_modern\_standby\_functionality'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: E763DF3F-1567-4FE0-A2DA-D162AE2BEDAE
---

# Other modern standby functionality


Additional activities that occur during modern standby include Automatic Maintenance. The reason to perform maintenance activities during modern standby is to avoid interrupting users when they are actively using the system. Windows performs these activities with minimal impact on standby battery life.

## Automatic Maintenance


As part of Automatic Maintenance, Windows performs periodic system maintenance and optimization. Automatic Maintenance batches system optimization and background tasks and executes them all at once when the user is not interacting with the system.

Modern standby, particularly when on AC power, is the perfect time to perform Automatic Maintenance because the user is guaranteed to not be interacting with the system when the screen is off. Windows will perform Automatic Maintenance on a modern standby PC at the scheduled time if the system is on AC power at the time.

When an Automatic Maintenance task is running, desktop applications and services are allowed to run normally and the network is available. When Automatic Maintenance is being performed, [SleepStudy](p_WEG_hardware.modern_standby_sleepstudy) and other diagnostics indicate that the system is in the maintenance phase.

For more information, see Automatic Maintenance.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Other%20modern%20standby%20functionality%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




