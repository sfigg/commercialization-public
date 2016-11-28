---
title: Modern Standby
description: Windows 10 Modern Standby (MS) expands the Windows 8.1 Connected Standby power model to be more inclusive and allows systems based on rotational media and hybrid media (for example, SSD + HDD or SSHD), and/or a NIC that doesn’t support all of the prior requirements for Connected Standby to still take advantage of the low power idle model. In Modern Standby, the PC uses the S0 low power idle model. Modern Standby has the flexibility to configure the default behavior to limit network activity while in the low power state.
MS-HAID:
- 'cstandby.connected\_standby\_portal'
- 'p\_weg\_hardware.modern\_standby'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a5704441-d856-44ae-a3de-82c66af65098
---

# Modern Standby


With Windows 8, Connected Standby (CS) enables the smartphone power model on the PC. It provides an instant on/instant off user experience that users expect to have with their phones. Just like the phone, the S0 low power idle model on Connected Standby enables the system to stay up-to-date whenever a suitable network is available.

The number of systems capable of S0 low power idle is increasing. We expect more systems to use the always on, instantly available power model instead of the traditional S3/S4 power model. These topics introduce the changes in Windows 10 that support this trend and what partners need to provide.

## Introducing Modern Standby


The low power idle infrastructure is evolving in several significant ways in Windows 10. This helps grow the use of low power idle for market segments that were previously limited to the S3 power model.

Windows 10 Modern Standby (MS) expands the Windows 8.1 Connected Standby power model to be more inclusive and allows systems based on rotational media and hybrid media (for example, SSD + HDD or SSHD), and/or a NIC that doesn’t support all of the prior requirements for Connected Standby to still take advantage of the low power idle model. In Modern Standby, the PC uses the S0 low power idle model. Modern Standby has the flexibility to configure the default behavior to limit network activity while in the low power state.

Windows 10 reduces power consumption by the OS and only wakes from the lowest power state when absolutely necessary. With Modern Standby, the system wakes when there is real time action required, such as OS maintenance, or a user wakes the system.

Modern Standby is available for both Windows 10 desktop and Windows 10 Mobile.

## Terminology


*Platform* refers to a set of firmware, hardware and software components that delivers an S0 low-power state. The low-power idle state is accomplished through tight integration between the firmware, chipset, low-power components, devices and drivers.

*DRIPS* refers to the Deepest Runtime Idle Platform State. The DRIPS state corresponds to the lowest power state for the SoC during Connected Standby or Modern Standby. Each SoC defines its own DRIPS state and corresponding state index. This is also referred to as S0 low power idle.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Modern%20Standby%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




