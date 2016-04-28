---
author: joshbax-msft
title: Windows Certification Newsletter - November 12, 2013
description: Windows Certification Newsletter - November 12, 2013
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: db525914-77f3-41bc-96cf-3eb63da326cc
---

# Windows Certification Newsletter - November 12, 2013


This newsletter provides up-to-date news about the Windows Certification (formerly Logo) Program and often provides info you can't get anywhere else. Did you get this from a friend? [Subscribe now](http://go.microsoft.com/fwlink/p/?linkID=313282) so you don't miss any important updates or changes.

## In this issue


[Windows Server scanning support](#windows116)

[HCK QFE 04 for Windows 8.1 now available](#hck116)

## <a href="" id="windows116"></a>Windows Server scanning support


The Desktop Experience feature (called “Desktop-Experience” in DISM.exe) is required for scanning support on Windows Server.

Devices capable of scanning that are locally attached to a computer running Windows Server (through a USB port, for example) are therefore not capable of meeting the requirements for Windows Server devices, specifically, that the device and driver operate in the Windows Server Core environment.

The device and driver will fail the Windows Server Core test in the Hardware Certification Kit for Windows Server Devices. When submitting HCKX results for certification of Windows Server 2012 R2, reference manual errata \#4509 in the Readme file.

Driver setup packages that require scanning functionality should check for Server Core and warn the user that the Desktop Experience will need to be installed for local scanning support. Information about how to check for the availability of Windows features programmatically is available on the [Server Core blog](http://blogs.technet.com/b/server_core/archive/2013/09/30/detecting-server-core-in-code.aspx). Additional information, including instructions for installing the Desktop Experience, is available in this [Knowledge Base article](http://support.microsoft.com/kb/2908152).

## <a href="" id="hck116"></a>HCK QFE 04 for Windows 8.1 now available


For information about QFE updates, see [Windows Hardware Certification Kit QFE Updates](windows-hardware-certification-kit-qfe-updates.md).

To get the latest QFEs for the Windows HCK, run [HCKSetup.exe](http://msdn.microsoft.com/windows/hardware/bg127147). The Windows HCK download includes all previous QFE updates.

[Windows Hardware Certification Kit QFE Updates](windows-hardware-certification-kit-qfe-updates.md)

[Download and install HCK to get the QFE](http://msdn.microsoft.com/windows/hardware/bg127147)

[Download the QFE now](http://msdn.microsoft.com/windows/hardware/bg127147)

**Note**  
Before applying the QFE, close all active DTM Studio sessions. Applying this QFE might affect in-progress submissions, so please complete any submissions before applying the QFE. After installing this QFE, you'll need to regenerate any affected submission that was generated before the QFE was installed.

 

## Related topics


[Hardware Dev Center](http://msdn.microsoft.com/en-US/windows/hardware/)

[Windows hardware development kits and tools](http://msdn.microsoft.com/windows/hardware/bg127147)

[Windows hardware development samples](http://code.msdn.microsoft.com/windowshardware/)

[Windows Hardware Certification](http://msdn.microsoft.com/en-US/windows/hardware/gg463010)

[Newsletter archive](http://msdn.microsoft.com/library/windows/hardware/dn339175.aspx)

[Your dashboard](https://sysdev.microsoft.com/hardware/member/)

[Getting started](http://msdn.microsoft.com/library/windows/hardware/gg507680/)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Windows%20Certification%20Newsletter%20-%20November%2012,%202013%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





