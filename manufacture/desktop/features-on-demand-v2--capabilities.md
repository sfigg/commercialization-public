---
author: themar
Description: 'Features on Demand v2 (Capabilities), introduced in Windows 10, are Windows feature packages that can be added at any time. Common features include language resources like handwriting recognition or the .NET Framework (.NetFx3).'
ms.assetid: 6390f427-a201-487e-928f-964e7b84327c
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Features On Demand V2 (Capabilities)'
ms.author: themar
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Features On Demand V2 (Capabilities)


Features on Demand v2 (Capabilities), introduced in Windows 10, are Windows feature packages that can be added at any time. Common features include language resources like handwriting recognition or the .NET Framework (.NetFx3).

When the PC needs a new feature, it can request the feature package from Windows Update.

OEMs can preinstall Features on Demand by adding packages from the Features on Demand ISO. Only preinstall the Features on Demand that you need in an image. See [DISM operating system package servicing command line options](dism-operating-system-package-servicing-command-line-options.md) to see how to add packages to an image.

Unlike previous feature packs, Features on Demand V2 can be applicable to multiple Windows builds, and can be added using DISM without knowing the build number. Always use Features on Demand that match the architecture of the operating system. Adding Features on Demand of the wrong architecture might not return an error immediately, but will likely cause functionality issues in the operating system. 

> **Note:** If you install an update (hotfix, general distribution release [GDR], or service pack) prior to installing a Feature on Demand or language pack, you'll have to reinstall the update. Always install language packs and Features on Demand before you install updates.

## <span id="Adding_or_removing_features_capabilities"></span><span id="adding_or_removing_features_capabilities"></span><span id="ADDING_OR_REMOVING_FEATURES_CAPABILITIES"></span>Adding or removing features/capabilities


Use DISM to add or remove capabilities:

-   Use the /Online option to add the capability to your PC.

-   Use the /Image:&lt;mount path&gt; option to add the capability to a Windows image file (.wim).
 

| Command | Description | Example |
| --- | --- | --- |
| /Add-Capability | Adds a capability to an image.<br></br>For packages with dependencies this also pulls dependent packages. For example, if you add the Speech package, you'll also get the Text-to-speech and Basic packages in addition to Speech. | `DISM.exe /Online /Add-Capability /CapabilityName:Language.Basic~~~en-US~0.0.1.0` |
| /Get-Capabilities | Get capabilities in the image. | `DISM /Online /Get-Capabilities` |
| /Get-CapabilityInfo | Get information of a capability in the image. | `DISM /Online /Get-CapabilityInfo /CapabilityName:Language.Basic~~~en-US~0.0.1.0` |
| /Remove-Capability | Removes a capability from an image. <br></br>**Note**: You cannot remove a capability that other packages depend on. For example, if you have the French handwriting and basic capabilities installed, you can't remove the basic capability. | `DISM.exe /Online /Remove-Capability  CapabilityName:Language.Basic~~~en-US~0.0.1.0` |


## <span id="related_topics"></span>Related topics

[Add Language Packs to Windows](add-language-packs-to-windows.md)

[DISM Capabilities Package Servicing Command-Line Options](dism-capabilities-package-servicing-command-line-options.md)

