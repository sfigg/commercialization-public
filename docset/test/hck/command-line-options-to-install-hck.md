---
author: joshbax-msft
title: Command-line options to install HCK
description: Command-line options to install HCK
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f93d4d74-c5eb-452d-99b2-e6b988cd7159
---

# Command-line options to install HCK


## Installation and Uninstallation Examples


To install the Windows HCK Controller, Studio, Client and/or Manager (Unattended):

-   To install the Windows HCK Controller, use the following command from the root of the Windows HCK installation media: HCKSetup.exe /q

**Note**  
By installing one or all of the kits, you automatically install all prerequisites (Windows HCK Controller, .NET 4.5, SQL), so there is no need to individually install other Windows HCK features.

 

To uninstall Windows HCK Controller and HCK Studio (Unattended)

-   To uninstall the Windows HCK Controller and HCK Studio, use the following command from the root of the Windows HCK installation media: HCKSetup.exe /uninstall /q

To install the Windows HCK Client \\\\HCKController\\HCKInstall\\Client\\setup.exe /qn ICFAGREE=Yes

To install the Windows HCK Studio \\\\HCKController\\HCKInstall\\Studio\\setup.exe /qn

To uninstall the Windows HCK Client \\\\HCKController\\HCKInstall\\Client\\setup.exe /qn /uninstall

To uninstall the Windows HCK Studio \\\\HCKController\\HCKInstall\\Studio\\setup.exe /qn /uninstall

**Note**  
Replace “HCKController” with the name of the computer on which you installed the Controller.

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Command-line%20options%20to%20install%20HCK%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




