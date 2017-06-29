---
title: Command-line options to install HLK
description: Command-line options to install HLK
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 356d44dc-226c-482b-bf47-2fa6ab6a4d94
---

# Command-line options to install HLK


## <span id="Installation_and_Uninstallation_Examples"></span><span id="installation_and_uninstallation_examples"></span><span id="INSTALLATION_AND_UNINSTALLATION_EXAMPLES"></span>Installation and Uninstallation Examples


To install the Windows HLK Controller, Studio, Client and/or Manager (Unattended):

-   To install the Windows HLK Controller, use the following command from the root of the Windows HLK installation media:

    -   HLKSetup.exe /q

**Note**  
By installing one or all of the kits, you automatically install all prerequisites (Windows HLK Controller, .NET 4.5, SQL), so there is no need to individually install other Windows HLK features.

 

To install/uninstall Windows HLK Controller and HLK Studio (Unattended)

-   To uninstall the Windows HLK Controller and HLK Studio, use the following command from the root of the Windows HLK installation media:

    -   HLKSetup.exe /uninstall /q

-   To install the Windows HLK Client:

    -   \\\\HLKController\\HLKInstall\\Client\\setup.cmd /qn ICFAGREE=Yes

-   To install the Windows HLK Studio:

    -   \\\\HLKController\\HLKInstall\\Studio\\setup.exe /qn

-   To uninstall the Windows HLK Client:

    -   \\\\HLKController\\HLKInstall\\Client\\setup.cmd /qn /uninstall

-   To uninstall the Windows HLK Studio:

    -   \\\\HLKController\\HLKInstall\\Studio\\setup.exe /qn /uninstall

**Note**  
Replace “HLKController” with the name of the computer on which you installed the Controller.

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk\p_hlk%5D:%20Command-line%20options%20to%20install%20HLK%20%20RELEASE:%20%286/29/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




