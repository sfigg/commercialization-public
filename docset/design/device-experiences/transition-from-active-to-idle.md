---
title: Transition from active to idle
description: Windows transitions the SoC platform from active mode to idle mode after all software activity is stopped and the devices on and off the SoC chip have entered low-power states.
MS-HAID:
- 'cstandby.transition\_from\_active\_to\_idle'
- 'p\_weg\_hardware.transition\_from\_active\_to\_idle'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: C5ED0F62-3AC1-4850-8631-E102023EADD3
---

# Transition from active to idle


Windows transitions the SoC platform from active mode to idle mode after all software activity is stopped and the devices on and off the SoC chip have entered low-power states.

The SoC transitions between idle and active modes during modern standby based on the triggers explained in the previous section. Whenever the SoC is active, Windows will aggressively attempt to return it to the idle (DRIPS) state to reduce power consumption.

**Note**  During modern standby, the SoC can be idle or active.

 

The SoC will also be active when the system exits modern standby in response to user input, such as a power button press. The SoC will be put back in the idle (DRIPS) state automatically when all of the following conditions are true:

-   All devices outside of the SoC have been powered down.
-   All network and radio devices have entered their low-power state to wait for interesting network packets or wake interrupts.
-   All host controllers on the SoC have been powered down.
-   All app background tasks have completed.
-   All CPU and GPU activity has stopped and all CPUs are idle.

Almost all modern standby power problems are related to making sure all of these five conditions have been met. Windows includes a built-in diagnostic tool called SleepStudy to help discover which of these conditions is not being met when the SoC is prevented from entering the idle (DRIPS) state.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Transition%20from%20active%20to%20idle%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




