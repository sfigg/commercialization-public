---
title: Unattended Windows Setup Reference
description: The Windows Unattended Setup Reference provides a complete listing of all the settings that you can use to automate the configuration and the deployment of Windows 10 for desktop editions (Home, Pro, Enterprise, and Education), Windows 8.1 Update, Windows 8.1, Windows Server 2012 R2, Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008 R2, and Windows Server 2008.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 55fecacd-75e3-4b94-a4b8-b2f6313ddf74
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 10/17/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Unattended Windows Setup Reference

The Windows Unattended Setup Reference provides a complete listing of all the settings that you can use to automate the configuration and the deployment of Windows 10.

The Windows Unattended Setup Reference is organized by Windows components and Windows packages, in the same order that the Windows System Image Manager (Windows SIM) tool displays each Windows component and package.

Each Windows component includes settings that can be used to create an unattended-installation answer file. Each setting in a component is listed in its own individual topic. If an element contains a value, valid value types are described and XML examples are given.

Information about how to use Windows SIM and other deployment tools is available in the [Windows Assessment and Deployment Kit (Windows ADK) Technical Reference](http://go.microsoft.com/fwlink/p/?LinkId=206587).

## In this section

| Topic                                 | Description                                                                          |
|:--------------------------------------|:-------------------------------------------------------------------------------------|
| [Changed answer file settings for Windows 10 for desktop editions, version 1709](changed-answer-file-settings-for-windows-10-build-1709.md) | This topic describes Windows 10, version 1709 answer-file settings that have changed since Windows 10 for desktop editions, version 1703. |
| [Changed answer file settings for Windows 10 for desktop editions, version 1703](changed-answer-file-settings-for-windows-10-build-1703.md) | This topic describes Windows 10, version 1703 answer-file settings that have changed since Windows 10 for desktop editions, version 1607. |
| [Changed answer file settings for Windows 10 for desktop editions, version 1607](changed-answer-file-settings-for-windows-10-build-1607.md) | This topic describes Windows 10, version 1607 answer-file settings that have changed since Windows 10 for desktop editions, version 1511. |
| [Changed answer file settings for Windows 10 for desktop editions, version 1511](changed-answer-file-settings-for-windows-10-build-1511.md) | This topic describes Windows 10, version 1511 answer-file settings that have changed since Windows 10 for desktop editions was introduced. |
| [Components](components-b-unattend.md) | The topics in this section describe all of the unattended settings that can be set in Windows 10 and Windows Server 2016. To determine whether a component applies to the image you’re building, load your image into Windows SIM and search for the component or setting name. For information on how to view components and settings, see [Configure Components and Settings in an Answer File](https://docs.microsoft.com/en-us/windows-hardware/customize/desktop/wsim/configure-components-and-settings-in-an-answer-file) |