---
author: themar
Description: 'Features on Demand v2 (Capabilities), introduced in Windows 10, are Windows feature packages that can be added at any time. This page describes non-language FoDs.'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Available features on demand V2 (capabilities)'
ms.author: themar
ms.date: 12/01/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Available capabilities

The following Features on Demand are available for Windows 10. To see how to install, remove, or get information about Feature on Demand packages, see [Features on Demand V2 (Capabilities)](features-on-demand-v2--capabilities.md). 

## Available non-language capabilities

> [!div class="op_single_selector"]
> - [.Net Framework](#dotnet)
> - [OpenSSH](#openssh)
> - [Internet Explorer](#internet-explorer)
> - [Developer Mode](#developer-mode)
> - [Graphics Tools](#graphics-tools)
> - [Accessibility](#accessibility)
> - [Holographic](#holographic)
> - [Printing](#printing)

### <span id="DOTNET"></span><span id="dotnet"></span> .NET Framework  

.NET framework adds support for 3rd party .NET3.x apps.

**Recommendation:** Preinstall this capabilities on devices that are preloaded with apps that require .NET3.x.

| Component | Name | Description                                            | Size |
|-----------|-----------------------------------|--------------------------------------| --- |
| NetFx3    | Microsoft-Windows-NetFx3-OnDemand-Package.cab     | .NET 3.x Framework, a software framework required by many applications. | 70805 |
|           | Microsoft-Windows-NetFx3-OnDemand-en-US-Package.cab |   | 98   |
|           | Microsoft-Windows-NetFx3-OnDemand-ja-JP-Package.cab |   | 1438 |



### <span id="OPENSSH"></span><span id="openssh"></span> OpenSSH (Beta)

The OpenSSH capabilites enable the use of OpenSSH on a Windows PC.

**Recommendation:** Don't include these capabilities on your image.

| Component          | Name                       | Description                                   | Size |
|-----------------------|---------------------------|-------------------------------------|-----|
| OpenSSH Client (Beta) | OpenSSH-Client-Package.cab | The beta release of an OpenSSH client for remoting and authentication. | 657 |
| OpenSSH Server (Beta) | OpenSSH-Server-Package.cab | The beta release of an OpenSSH server for remoting and authentication. | 660 |


### Internet Explorer

Internet Explorer Features on Demand enable preinstallation of Internet Explorer.

**Recommendation:** Include the relevant capabilities on images that include Internet Explorer.

| Component | Name |  Description |
|-----------------------|---------------------------------------------------|---------------------|
| Internet Explorer 11  | Microsoft-Windows-InternetExplorer-Optional-Package.cab | Preinstalls Internet Explorer on a device |
| Internet Explorer 11  | Microsoft-Windows-InternetExplorer-Optional-en-US-Package.cab | Preinstalls Internet Explorer on a device |
| Internet Explorer 11  | Microsoft-Windows-InternetExplorer-Optional-ja-JP-Package.cab | Preinstalls Internet Explorer on a device |

### Developer Mode

An on-device diagnostic platform used via a browser.  Installs a SSH server on the device for UWP remote deployment as well as Windows Device Portal.

**Recommendation:** In general, don't preinstall on devices. You can consider preinstalling on "developer edition" devices, where the primary market for the device is developers or users who plan on developing or testing UWPs.

| Component | Name |  Description |
|-----------------------|---------------------------------------------------|---------------------|
| Windows Developer Mode | Microsoft-OneCore-DeveloperMode-Desktop-Package.cab |  |

### Graphics Tools

Used for Direct3D application development.  It is typically installed by AAA game engine developers, enterprise graphics software developrs (e.g. graphics developers at Autodesk), or niche hobbyists.  

**Recommendation:** Don't install. This capability is only needed by specific users who can trigger installation through Visual Studio when certain optional packages are chosen at install.

| Component | Name |  Description |
|-----------------------|---------------------------------------------------|---------------------|
| Graphics Tools | Microsoft-OneCore-Graphics-Tools-Package.cab |  |

### Accessibility

This package enables Braille devices to work with the inbox Narrator screen reader.

**Recommendation:** Don't include these capabilities in your image, as doing so could conflict with Braille device rights restrictions.

| Component | Name |  Description |
|-----------------------|---------------------------------------------------|---------------------|
| Accessibility - Braille Support | Microsoft-Windows-Accessibility-Braille-Package.cab |  |

### Holographic

This capability enables Mixed Reality devices to be used on a PC.

**Recommendation:** Preinstall only if you're shipping a PC bundled with a compatible Mixed Reality device.

| Component | Name |  Description |
|-----------------------|---------------------------------------------------|---------------------|
| Windows Mixed Reality | Microsoft-Windows-Holographic-Desktop-FOD-Package.cab |  |


### Printing

This capability is for devices running Windows Server as a Print Server role which supports Azure AD joined devices.

**Recommendation:** Only preinstall the capabilities on Windows Server devices running as a Print Server role.

| Component | Name |  Description |
|-----------------------|---------------------------------------------------|---------------------|
|  | Microsoft-Windows-Printing-EnterpriseCloudPrint-Package.cab |  |
|  | Microsoft-Windows-Printing-MopriaCloudService-Package.cab | |
