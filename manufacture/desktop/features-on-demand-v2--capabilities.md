---
author: themar
Description: 'Features on Demand v2 (Capabilities), introduced in Windows 10, are Windows feature packages that can be added at any time. Common features include language resources like handwriting recognition or the .NET Framework (.NetFx3).'
ms.assetid: 6390f427-a201-487e-928f-964e7b84327c
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Features On Demand'
ms.author: themar
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Features On Demand


Features on Demand (FODs) are Windows feature packages that can be added at any time. Common features include language resources like handwriting recognition or the .NET Framework (.NetFx3).

When the PC needs a new feature, it can request the feature package from Windows Update.

OEMs can also preinstall FODs into a Windows image in two different ways. FODs can be added with DISM, using the `/add-capability` command-line option. This method downloads features from Windows Update and adds them to the image. Alternatively, FOD .cab packages, available on the FOD ISOs, can be added to a Windows image by using DISM with the `/add-package` command-line option. This method doesn't require internet connectivity, as the packages are available offline.

Unlike previous feature packs, Features on Demand can be applicable to multiple Windows builds, and can be added using DISM without knowing the build number. Always use Features on Demand that match the architecture of the operating system. Adding Features on Demand of the wrong architecture might not return an error immediately, but will likely cause functionality issues in the operating system. 

> [!Tip] 
> If you install an update (hotfix, general distribution release [GDR], or service pack) prior to installing a Feature on Demand or language pack, you'll have to reinstall the update. Always install language packs and Features on Demand before you install updates.

## <span id="Adding_or_removing_features_capabilities"></span><span id="adding_or_removing_features_capabilities"></span><span id="ADDING_OR_REMOVING_FEATURES_CAPABILITIES"></span>Adding or removing Features on Demand


### Using DISM to add or remove capabilities:

-   Use the /Online option to add the capability to your PC.

-   Use the /Image:\<mount path> option to add the capability to a mounted Windows image.
 
| Command | Description | Example |
| --- | --- | --- |
| /Add-Capability | Adds a capability to an image.<br></br>For packages with dependencies this also pulls dependent packages. For example, if you add the Speech package, you'll also get the Text-to-speech and Basic packages in addition to Speech. | `DISM.exe /Online /Add-Capability /CapabilityName:Language.Basic~~~en-US~0.0.1.0` |
| /Get-Capabilities | Get capabilities in the image. | `DISM /Online /Get-Capabilities` |
| /Get-CapabilityInfo | Get information of a capability in the image. | `DISM /Online /Get-CapabilityInfo /CapabilityName:Language.Basic~~~en-US~0.0.1.0` |
| /Remove-Capability | Removes a capability from an image. <br></br>**Note**: You cannot remove a capability that other packages depend on. For example, if you have the French handwriting and basic capabilities installed, you can't remove the basic capability. | `DISM.exe /Online /Remove-Capability  CapabilityName:Language.Basic~~~en-US~0.0.1.0` |

To see all available DISM commands for capabilities, see [DISM Capabilities Package Servicing Command-Line Options](dism-capabilities-package-servicing-command-line-options.md).

### Using DISM to add or remove packages:

-   Use the /Online option to add the package to your PC.

-   Use the /Image:\<mount path> option to add the package to a mounted Windows image.

| Command | Description | Example |
| --- | --- | --- |
| /Add-package | Installs a specified .cab or .msu package in the image. An .msu package is supported only when the target image is offline, either mounted or applied. Multiple packages can be added on one command line. | `Dism /Image:C:\test\offline /Add-Package /PackagePath:<path_to_cabfile>` | 
| /Get-Packages | Displays basic information about all packages in the image. The list of packages that this command outputs is not limited to installed Features on Demand. | `Dism /Image:C:\test\offline /Get-Packages` |
| /Get-PackageInfo | Displays detailed information about a package provided as a .cab file. You can use the /Get-Packages option to find the name of the package in the image, or you can specify the path to the .cab file. The path to the .cab file should point to the original source of the package, not to where the file is installed on the offline image. | `Dism /Image:C:\test\offline /Get-PackageInfo /PackagePath:C:\packages\package.cab` |
| /Remove-Package | Removes a specified .cab file package from the image. | `Dism /Image:C:\test\offline /Remove-Package /PackageName:Microsoft-Windows-NetFx3-OnDemand-Package~31bf3856ad364e35~amd64~~10.0.17056.1000` |

To see all available DISM commands for package servicing, see [DISM operating system package servicing command-line options](dism-operating-system-package-servicing-command-line-options.md).

## <span id="related_topics"></span>Related topics

[Available Features on Demand](features-on-demand-non-language-fod.md)

[Language and region Features on Demand](features-on-demand-language-fod.md)

[Add Language Packs to Windows](add-language-packs-to-windows.md)

[DISM Capabilities Package Servicing Command-Line Options](dism-capabilities-package-servicing-command-line-options.md)

