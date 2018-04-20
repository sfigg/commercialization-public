---
title: SKUPolicyRequired
description: SKUPolicyRequired
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 04/23/2018
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# SKUPolicyRequired

`SKUPolicyRequired` is new in Windows 10, version 1803. This setting indicates whether a Windows 10 device is running in S mode.

Windows 10 in S mode can be applied to a Windows edition to enable a productive user experience that's streamlined for security. Windows 10 in S mode supports using apps from the Microsoft Store only, and supports web browsing only in the Microsoft Edge browser. In previous versions of Windows, Windows 10 S was a separate edition that required working with a different Windows image than non-S editions. Starting with Windows 10, version 1803, you can Enable S mode on supported Windows editions.

Configuring this Unattend setting is only part of the process required to design and manufacture devices that run Windows 10 in S mode. While the overall process is similar to building other Windows 10 devices, Windows 10 in S mode has some additional considerations. To review the full end-to-end process, see [Windows 10 in S mode manufacturing overview](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/windows-10-s-overview).

> [!Important]
> S mode can be applied to Windows Home, Pro, Pro EDU, and Pro WS editions.

## Values

| Value             | Description                                                                      |
|:------------------|:---------------------------------------------------------------------------------|
| 1                 | Indicates the Windows 10 device is operating in S mode.                          |
| 0                 | Indicates the Windows 10 device is not running in S mode. This is the default value.  |

## Parent Hierarchy

[Microsoft-Windows-CodeIntegrity](microsoft-windows-codeintegrity-skupolicyrequired.md) | **SKUPolicyRequired**

## Valid Configuration Passes

offlineServicing

## Applies To

For a list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-CodeIntegrity](microsoft-windows-codeintegrity.md).

## XML Example

The following XML output specifies that Windows will play a medium volume tone when a photo is taken.

```XML
 <unattend xmlns="urn:schemas-microsoft-com:unattend">
    <settings pass="offlineServicing">
        <component name="Microsoft-Windows-CodeIntegrity" processorArchitecture="amd64" publicKeyToken="31bf39567ab364e25" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">            <SkuPolicyRequired>1</SkuPolicyRequired>
        </component>
    </settings>
 </unattend>
```

## Related topics

[Microsoft-Windows-CoreMmRes](microsoft-windows-codeintegrity.md)