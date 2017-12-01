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

# Available features on demand

The following Features on Demand are available for Windows 10. To see how to install, remove, or get information about Feature on Demand packages, see [Features on Demand V2 (Capabilities)](features-on-demand-v2--capabilities.md). 

## Available non-language capabilities

### <span id="DOTNET"></span><span id="dotnet"></span> .NET Framework  

.NET framework adds support for 3rd party .NET3.x apps.

**Recommendation:** Preinstall this capabilities on devices that are preloaded with apps that require .NET3.x.

| Component | Name | Description                                            | Size |
|-----------|-----------------------------------|--------------------------------------| --- |
| NetFx3    |  Microsoft-Windows-NetFx3-OnDemand-Package.cab     | .NET 3.x Framework, a software framework required by many applications. | 70805 |
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






Microsoft-OneCore-DeveloperMode-Desktop-Package.cab
Microsoft-OneCore-Graphics-Tools-Package.cab
Microsoft-Windows-Accessibility-Braille-Package.cab
Microsoft-Windows-Holographic-Desktop-FOD-Package.cab
Microsoft-Windows-InternationalFeatures-Taiwan-Package.cab
Microsoft-Windows-InternetExplorer-Optional-Package.cab
Microsoft-Windows-InternetExplorer-Optional-en-US-Package.cab
Microsoft-Windows-InternetExplorer-Optional-ja-JP-Package.cab
Microsoft-Windows-NetFx3-OnDemand-Package.cab
Microsoft-Windows-NetFx3-OnDemand-en-US-Package.cab
Microsoft-Windows-NetFx3-OnDemand-ja-JP-Package.cab
Microsoft-Windows-Printing-EnterpriseCloudPrint-Package.cab
Microsoft-Windows-Printing-MopriaCloudService-Package.cab