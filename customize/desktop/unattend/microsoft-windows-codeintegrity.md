---
title: Microsoft-Windows-CodeIntegrity
description: Microsoft-Windows-CodeIntegrity
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
# Microsoft-Windows-CodeIntegrity

The `Microsoft-Windows-CodeIntegrity` component is new in Windows 10, version 1803. Use the `SKUPolicyRequired` setting to indicate whether a Windows 10 device will run in S mode on next boot.

## In This Section

| Setting                 | Description                                                                           |
|:------------------------|:--------------------------------------------------------------------------------------|
| [SKUPolicyRequired](microsoft-windows-codeintegrity-skupolicyrequired.md) | new in Windows 10, version 1803. This setting indicates whether a Windows 10 device is running in S mode. |

## Applies To

To determine whether a component applies to the image you’re building, load your image into Windows SIM and search for the component or setting name. For information on how to view components and settings, see [Configure Components and Settings in an Answer File](https://docs.microsoft.com/en-us/windows-hardware/customize/desktop/wsim/configure-components-and-settings-in-an-answer-file).

## Related topics

[Components](components-b-unattend.md)