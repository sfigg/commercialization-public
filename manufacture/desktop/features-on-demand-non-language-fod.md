---
author: themar
Description: 'Features on Demand v2 (Capabilities), introduced in Windows 10, are Windows feature packages that can be added at any time. This page describes non-language FODs.'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Available features on demand'
ms.author: themar
ms.date: 12/01/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Available Features on Demand

The following Features on Demand are available for Windows 10. You can use either `DISM /image:<path_to_image> /get-capabilities` or `DISM /online /get-capabilities` to see which Features on Demand are available in your image of Windows 10. To see how to add Features on Demand, see [Features on Demand](features-on-demand-v2--capabilities.md). 

To see available Features on Demand for languages and regions, see [Language and region Features on Demand](features-on-demand-language-fod.md)


## Available non-language Features on Demand

> [!div class="op_single_selector"]
> - [.Net Framework](#dotnet)
> - [Accessibility](#accessibility)
> - [Developer Mode](#developer-mode)
> - [Graphics Tools](#graphics-tools)
> - [Mixed Reality](#mixed-reality)
> - [Internet Explorer](#internet-explorer)
> - [OpenSSH](#openssh)
> - [Printing](#printing)
> - [Retail Demo Experience](#retail-demo-experience-rdx)
> - [Sync](#sync)

### <span id="DOTNET"></span><span id="dotnet"></span> .NET Framework  

.NET framework adds support for 3rd party .NET3.x apps. If this Feature on Demand is not installed, .NET3.x apps won't work.

**Recommendation:** Preinstall these Features on Demand on devices that are preloaded with apps that require .NET3.x.

| Name | Capability Name |CAB Name |                                            CAB Size  | Install size |
|-----------|-----------------------------------|------------|--------------------------| --- | 
| NetFx3    | NetFX3~~~~ | Microsoft-Windows-NetFx3-OnDemand-Package.cab     |  70,805 KB | 306.33 MB |
| NetFx3 en-US package |         | Microsoft-Windows-NetFx3-OnDemand-en-US-Package.cab |    98 KB   | |
| NetFx3 ja-JP package  |        | Microsoft-Windows-NetFx3-OnDemand-ja-JP-Package.cab |    1,438 | |

### Accessibility

This Feature on Demand enables Braille devices to work with the inbox Narrator screen reader. Without this Feature on Demand, Braille drivers and translation tables will be missing, causing Braille to no function properly.

**Recommendation:** Don't include these Features on Demand in your image, as doing so could conflict with Braille device rights restrictions.

This Feature on Demand's installation can be triggered by a user from the Windows Settings app. 

| Name | Capability Name |CAB Name |                                            CAB Size | Install size |
|-----------|-----------------------------------|------------|--------------------------| --- | 
| Accessibility - Braille Support | Accessibility.Braille~~~~0.0.1.0 | Microsoft-Windows-Accessibility-Braille-Package.cab | 3,480 KB | 13.83 MB |

### Developer Mode

An on-device diagnostic platform used via a browser.  Installs a SSH server on the device for UWP remote deployment as well as Windows Device Portal.

Enabling Developer Mode will attempt to auto-install this Feature on Demand. On devices that are WSUS-managed, this auto-install will likely fail due to WSUS blocking FOD packages by default. If this Feature on Demand is not successfully installed, device discovery and Device Portal can't be enabled, preventing remote deployment to the device.

**Recommendation:** In general, don't preinstall on devices. If you are building an image for "developer edition" devices, where the primary market for the device is developers or users who plan on developing or testing UWPs, consider preinstalling.

| Name | Capability Name |CAB Name |                                            CAB Size | Install size |
|-----------|-----------------------------------|------------|--------------------------| --- | 
| Windows Developer Mode | Tools.DeveloperMode.Core~~~~0.0.1.0 | Microsoft-OneCore-DeveloperMode-Desktop-Package.cab | 1,876 KB | 12.63 MB |

### Graphics Tools

Used for Direct3D application development.  It is typically installed by AAA game engine developers, enterprise graphics software developers, or niche hobbyists.  

**Recommendation:** Don't install. This Feature on Demand is only needed by specific users who can trigger installation through Visual Studio when certain optional packages are chosen at install.

| Name | Capability Name |CAB Name |                                            CAB Size | Install size |
|-----------|-----------------------------------|------------|--------------------------| --- | 
| Graphics Tools | Tools.Graphics.DirectX~~~~0.0.1.0 | Microsoft-OneCore-Graphics-Tools-Package.cab | 14,252 KB | 68.83 MB |


### Mixed Reality

This Feature on Demand enables Mixed Reality (MR) devices to be used on a PC. If this Feature on Demand is not present, MR devices may not function properly.

**Note:** Make sure to add this feature on demand prior to adding an update (hotfix, general distribution release [GDR], or service pack).

**Recommendation:** Recommended for MR-Ready badged PCs, otherwise do not preinstall.

| Name | Capability Name |CAB Name |                                            CAB Size | Install size |
|-----------|-----------------------------------|------------|--------------------------| --- | 
| Windows Mixed Reality | Analog.Holographic.Desktop~~~~0.0.1.0 | Microsoft-Windows-Holographic-Desktop-FOD-Package.cab | 1,016 MB  | 1.35 GB |


### Internet Explorer

Internet Explorer Features on Demand enable preinstallation of Internet Explorer. Internet Explorer will not be enabled on a device that does not have this Feature on Demand added.

**Recommendation:** Include the relevant Features on Demand on images that include Internet Explorer.

| Name | Capability Name |CAB Name |                                            CAB Size | Install size |
|-----------|-----------------------------------|------------|--------------------------| --- | 
| Internet Explorer 11 | Browser.InternetExplorer~~~~0.0.11.0 | Microsoft-Windows-InternetExplorer-Optional-Package.cab |  268 KB | 1.5 MB |
| Internet Explorer 11 optional en-US package |  | Microsoft-Windows-InternetExplorer-Optional-en-US-Package.cab |  15 KB | |
| Internet Explorer 11 optional ja-JP package |  | Microsoft-Windows-InternetExplorer-Optional-ja-JP-Package.cab |  18 KB | |


### <span id="OPENSSH"></span><span id="openssh"></span> OpenSSH (Beta)

The OpenSSH Features on Demand enable the use of OpenSSH on a Windows PC.

**Recommendation:** Don't include these Features on Demand on your image.

| Name | Capability Name |CAB Name |                                            CAB Size | Install size |
|-----------|-----------------------------------|------------|--------------------------| --- | 
| OpenSSH Client (Beta) | OpenSSH.Client~~~~0.0.1.0 | OpenSSH-Client-Package.cab  | 657 KB | 6.05 MB |
| OpenSSH Server (Beta) | OpenSSH.Server~~~~0.0.1.0 | OpenSSH-Server-Package.cab  | 660 KB | 5.61 MB |


### Printing

These Features on Demand are for devices running Windows Server as a Print Server role which supports Azure AD joined devices.  If this FOD is not installed, then a Windows Server acting as a Print Server will only support the printing needs of traditional domain joined devices.  Azure AD joined devices will not be able to discover corporate printers.

**Recommendation:** Only preinstall the Features on Demand on Windows Server devices running as a Print Server role.

| Name | Capability Name |CAB Name |                                            CAB Size | Install size |
|-----------|-----------------------------------|------------|--------------------------| --- | 
| Enterprise Cloud Print | Print.EnterpriseCloudPrint~~~~0.0.1.0 | Microsoft-Windows-Printing-EnterpriseCloudPrint-Package.cab | 1,046 KB  | 3.28 MB |
| Mopria Cloud Service | Print.MopriaCloudService~~~~0.0.1.0 | Microsoft-Windows-Printing-MopriaCloudService-Package.cab | 3,296 KB | 11.13 MB |


### Retail Demo Experience (RDX)

These Features on Demand add the retail demo package to a device, for use in retail stores. These features are available as .cab packages on the FOD ISO.

**Recommendation:** Only preinstall on devices that are sold to retail stores for demonstration. Not including this Feature on Demand will cause no retail demo presentation to be available on a device.

| Name | CAB Name |
|-----------------------|---------------------------------------------------|
| Retail Demo Content  | Microsoft-Windows-RetailDemo-OfflineContent-Content-Package.cab |
| Language specific Retail Demo Content | Microsoft-Windows-RetailDemo-OfflineContent-Content-*language-country*-Package.cab |

### Sync

This Feature on Demand is a mail, contacts, and calendar sync component. Not including this Feature on Demand on your Windows image will cause UWP apps such as Mail, People, and Calendar to not be able to properly sync.

**Recommendation:** Preinstall this Feature on Demand on your Windows image.

| Name | Capability Name |CAB Name |                                            CAB Size | Install size |
|-----------|-----------------------------------|------------|--------------------------| --- | 
| Exchange ActiveSync and Internet Mail Sync Engine | OneCoreUAP.OneSync~~~~0.0.1.0 | Microsoft-OneCore-ApplicationModel-Sync-Desktop-FOD-Package.cab | 4,025 KB  | 18.21 MB |


## Related topics

[Features on Demand](features-on-demand-v2--capabilities.md). 

[Language and region Features on Demand](features-on-demand-language-fod.md)