---
title: Functional overview summary
description: Summarizes the capabilities supported by modern standby.
MS-HAID:
- 'cstandby.functional\_overview\_summary'
- 'p\_weg\_hardware.functional\_overview\_summary'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: F734C722-52EE-4230-85FD-509CCB284163
---

# Functional overview summary


Modern standby achieves low power and constant connectivity by spending the majority of time in a low-power state in which the SoC is powered down (the DRIPS state).

Windows powers up the SoC to perform scheduled background activity or to respond to incoming network activity or device interrupts. Windows achieves low power consumption by aggressively entering the idle power mode and controlling the amount of activity.

If the system is in disconnected standby, very little activity occurs during standby. The system should spend most of its time in the idle power mode (DRIPS).

If the system has an Internet connection through Wi-Fi, mobile broadband, or Ethernet, and is modern standby capable, the amount of activity is higher. This activity is mostly the result of app background tasks that require a network connection to be usable. For example, email will not sync without an Internet connection, and Windows Update will not download critical security updates if an Internet connection is not available. When an active Internet connection is present, the system will transition between the idle and active modes on demand if incoming network packets match WoL patterns.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Functional%20overview%20summary%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




