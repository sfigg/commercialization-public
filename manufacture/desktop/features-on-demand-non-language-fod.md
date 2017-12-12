---
author: themar
Description: 'Features on Demand v2 (Capabilities), introduced in Windows 10, are Windows feature packages that can be added at any time. This page describes non-language FoDs.'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Available features on demand'
ms.author: themar
ms.date: 12/01/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Available Features on Demand

The following Features on Demand are available for Windows 10. To see how to install, remove, or get information about Feature on Demand packages, see [Features on Demand](features-on-demand-v2--capabilities.md). 

To see available Features on demand for languages and region, see [Language and region Features on Demand](features-on-demand-language-fod.md)


## Available non-language Features on Demand

> [!div class="op_single_selector"]
> - [.Net Framework](#dotnet)
> - [Accessibility](#accessibility)
> - [Developer Mode](#developer-mode)
> - [Graphics Tools](#graphics-tools)
> - [Holographic](#holographic)
> - [Internet Explorer](#internet-explorer)
> - [OpenSSH](#openssh)
> - [Printing](#printing)
> - [Retail Demo Experience](#retail-demo-experience-rdx)

### <span id="DOTNET"></span><span id="dotnet"></span> .NET Framework  

.NET framework adds support for 3rd party .NET3.x apps. If this Feature on Demand is not installed, .NET3.x apps won't work.

**Recommendation:** Preinstall these Features on Demand on devices that are preloaded with apps that require .NET3.x.

| Name | Capability Name |Cab Name |                                            Size (KB) |
|-----------|-----------------------------------|--------------------------------------| --- |
| NetFx3    | NetFX3 | Microsoft-Windows-NetFx3-OnDemand-Package.cab     |  | 70805 
| NetFx3 en-US package |         | Microsoft-Windows-NetFx3-OnDemand-en-US-Package.cab |    98   |
| NetFx3 ja-JP package  |        | Microsoft-Windows-NetFx3-OnDemand-ja-JP-Package.cab |    1438 |

### Accessibility

This Feature on Demand enables Braille devices to work with the inbox Narrator screen reader. Without this Feature on Demand, Braille drivers and translation tables will be missing, causing Braille to no function properly.

**Recommendation:** Don't include these Features on Demand in your image, as doing so could conflict with Braille device rights restrictions.

This Feature on Demand's installation can be triggered by a user from the Windows Settings app. 

| Name | Capability Name |Cab Name |                                            Size (KB) |
|-------------|---------|---------------------------------------------------|---------------------|
| Accessibility - Braille Support | Accessibility.Braille | Microsoft-Windows-Accessibility-Braille-Package.cab | 3,480 |

### Developer Mode

An on-device diagnostic platform used via a browser.  Installs a SSH server on the device for UWP remote deployment as well as Windows Device Portal.

**Recommendation:** In general, don't preinstall on devices. You can consider preinstalling on "developer edition" devices, where the primary market for the device is developers or users who plan on developing or testing UWPs.

Enabling Developer Mode will attempt to auto-install this Feature on Demand, but will likely fail on devices that are managed by WSUS. If this Feature on Demand is not installed, device discovery and Device Portal will not be enabled when Developer Mode is enabled.

| Name | Capability Name |Cab Name |                                            Size (KB) |
|-----------------|------|---------------------------------------------------|---------------------|
| Windows Developer Mode | Tools.DeveloperMode.Core | Microsoft-OneCore-DeveloperMode-Desktop-Package.cab | 1,876 |

### Graphics Tools

Used for Direct3D application development.  It is typically installed by AAA game engine developers, enterprise graphics software developrs (e.g. graphics developers at Autodesk), or niche hobbyists.  

**Recommendation:** Don't install. This Feature on Demand is only needed by specific users who can trigger installation through Visual Studio when certain optional packages are chosen at install.

| Name | Capability Name |Cab Name |                                            Size (KB) |
|-----------------------|------|---------------------------------------------|---------------------|
| Graphics Tools | Tools.Graphics.DirectX | Microsoft-OneCore-Graphics-Tools-Package.cab | 14,252 |


### Mixed Reality

This Feature on Demand enables Mixed Reality devices to be used on a PC. If this Feature on Demand is not present, MR devices may not function properly.

**Note:** Make sure to add this feature on demand prior to adding an update (hotfix, general distribution release [GDR], or service pack).

**Recommendation:** Recommended for MR-Ready and Compatible PCs, otherwise do not preinstall.

| Name | Capability Name |Cab Name |                                            Size (KB) |
|-----------------|------|---------------------------------------------------|---------------------|
| Windows Mixed Reality | Analog.Holographic.Desktop | Microsoft-Windows-Holographic-Desktop-FOD-Package.cab | 1,016,425 |


### Internet Explorer

Internet Explorer Features on Demand enable preinstallation of Internet Explorer. Internet Explorer will not be enabled on a device that does not have this Feature on Demand added.

**Recommendation:** Include the relevant Features on Demand on images that include Internet Explorer.

| Name | Capability Name |Cab Name |                                            Size (KB) |
|-----------------------|---------------------------------------------------|-----------|----------|
| Internet Explorer 11 | Browser.InternetExplorer | Microsoft-Windows-InternetExplorer-Optional-Package.cab | Preinstalls Internet Explorer on a device | 268 |
| Internet Explorer 11 optional en-US package |  | Microsoft-Windows-InternetExplorer-Optional-en-US-Package.cab | Preinstalls Internet Explorer on a device | 15 |
| Internet Explorer 11 optional ja-JP package |  | Microsoft-Windows-InternetExplorer-Optional-ja-JP-Package.cab | Preinstalls Internet Explorer on a device | 18 |


### <span id="OPENSSH"></span><span id="openssh"></span> OpenSSH (Beta)

The OpenSSH Features on Demand enable the use of OpenSSH on a Windows PC.

**Recommendation:** Don't include these Features on Demand on your image.

| Name | Capability Name |Cab Name |                                            Size (KB) |
|-----------------------|---------------------------|-------------------------------------|-----|
| OpenSSH Client (Beta) | OpenSSH.Client | OpenSSH-Client-Package.cab | The beta release of an OpenSSH client for remoting and authentication. | 657 |
| OpenSSH Server (Beta) | OpenSSH.Server | OpenSSH-Server-Package.cab | The beta release of an OpenSSH server for remoting and authentication. | 660 |


### Printing

These Features on Demand are for devices running Windows Server as a Print Server role which supports Azure AD joined devices.  If this FOD is not installed, then a Windows Server acting as a Print Server will only support the printing needs of traditional domain joined devices.  Azure AD joined devices will not be able to discover corporate printers.

**Recommendation:** Only preinstall the Features on Demand on Windows Server devices running as a Print Server role.

| Name | Capability Name |Cab Name |                                            Size (KB) |
|-----------------------|------------------|---------------------------------|---------------------|
| Enterprise Cloud Print | Print.EnterpriseCloudPrint | Microsoft-Windows-Printing-EnterpriseCloudPrint-Package.cab | 1,046  |
| Mopria Cloud Service | Print.MopriaCloudService | Microsoft-Windows-Printing-MopriaCloudService-Package.cab | 3,296 |


### Retail Demo Experience (RDX)

These Features on Demand add the retail demo package to a device, for use in retail stores. These features are available as .cab packages on the FoD ISO.

**Recommendation:** Only preinstall on devices that are sold to retail stores for demonstration. Not including this Feature on Demand will cause no retail demo presentation to be available on a device.

| Name | Cab Name |
|-----------------------|---------------------------------------------------|
| Retail Demo Content  | Microsoft-Windows-RetailDemo-OfflineContent-Content-Package.cab |
| Language specific Retail Demo Content | Microsoft-Windows-RetailDemo-OfflineContent-Content-*language-country*-Package.cab |