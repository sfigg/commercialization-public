---
title: Transition from idle to active
description: During modern standby, Windows periodically transitions the SoC platform from idle mode to active mode to perform kernel maintenance tasks.
MS-HAID:
- 'cstandby.transition\_from\_idle\_to\_active'
- 'p\_weg\_hardware.transition\_from\_idle\_to\_active'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 848A53F5-1FDD-4B2F-B823-B96DE2FCED94
---

# Transition from idle to active


During modern standby, Windows periodically transitions the SoC platform from idle mode to active mode to perform kernel maintenance tasks. In addition, on-demand transitions to active mode can occur in response to user inputs, interrupts from networking devices, and other hardware events.

After the SoC has entered the DRIPS state, the platform will typically be in its lowest power mode. In modern standby, the platform will switch between this idle (DRIPS) mode and the active mode periodically. Low power is achieved in modern standby by spending the majority of the time in the DRIPS mode and very small amounts of time in the active mode.

Windows will transition the SoC to the active mode for the following reasons:

-   An on-demand wake event due to an interrupt from a networking device (Wi-Fi, mobile broadband, or Ethernet). The networking device generates an interrupt when a matching WoL pattern is detected or when the media or connection state changes. The interrupt wakes the SoC using an out-of-band GPIO, in-band USB resume signaling, or PCI PME interrupt.
-   An on-demand wake event due to a platform device interrupt from a source such as the battery fuel gauge, battery charge controller, or thermal sensors.
-   An on-demand wake event due to an interrupt caused by user input at a keyboard, touchpad, external USB peripheral, power button, or lid switch.

As soon as the SoC wakes and the platform exits the DRIPS state, the CPUs start running code again. However, the screen stays powered off unless the interrupt was a result of user input or a power source change. The Windows power manager determines whether the screen should be powered on; the system designer needs only to ensure that the interrupt from each device is connected and programmed to wake the SoC from the DRIPS state.

System designers must work closely with the SoC vendor to connect device interrupts for SoC wakeup. Some SoC devices require device interrupts to be connected to special "wake-capable" inputs or configured for wake using system firmware.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Transition%20from%20idle%20to%20active%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




