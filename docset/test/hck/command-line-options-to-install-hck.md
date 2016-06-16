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

 

 

 






