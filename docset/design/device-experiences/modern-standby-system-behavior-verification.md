---
title: Modern Standby system behavior verification
description: Identifying whether a system is connected or disconnected while in standby is very simple. If the system’s NIC is not offload-capable, but reports in the FADT table that it supports S0 low power idle, it is using disconnected Modern Standby.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 257CF09C-191E-4086-B96D-8EE7BD34682A
---

# Modern Standby system behavior verification


Identifying whether a system is connected or disconnected while in standby is very simple. If the system’s NIC is not offload-capable, but reports in the FADT table that it supports S0 low power idle, it is using disconnected Modern Standby.

You can use the `powercfg /a` command to identify if a system supports Modern Standby. It will also identify whether the system is connected or not while in the standby mode. The command produces the following output when the system is in connected state in Standby.

`The following sleep states are available on this system:     Standby (S0 Low Power Idle) Network Connected A disconnected Standby state will produce the following output.`

`TThe following sleep states are available on this system:     Standby (S0 Low Power Idle) Network Disconnected`

[Modern standby SleepStudy report](modern-standby-sleepstudy-report.md)s also note whether a standby session was connected or not.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Modern%20Standby%20system%20behavior%20verification%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




