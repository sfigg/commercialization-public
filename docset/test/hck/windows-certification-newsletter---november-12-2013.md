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

[Newsletter archive](windows-certification-newsletter-archive.md)

[Your dashboard](https://sysdev.microsoft.com/hardware/member/)

[Getting started](http://msdn.microsoft.com/library/windows/hardware/gg507680/)

 

 







