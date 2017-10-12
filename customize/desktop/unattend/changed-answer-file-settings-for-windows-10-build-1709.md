---
title: Changed answer file settings for Windows 10 for desktop editions, build 1709
description: This topic describes Windows 10, version 1709 answer-file settings that have changed since Windows 10 for desktop editions (Home, Pro, Enterprise, and Education), Build 1607.
ms.author: alhopper
ms.date: 10/17/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Changed answer file settings for Windows 10 for desktop editions, build 1709

This topic describes Windows 10, version 1709 answer file settings that have changed since Windows 10 for desktop editions (Home, Pro, Enterprise, and Education), version 1703.

## New Windows settings

| Setting name         | Description                                                                      |
|:---------------------|:---------------------------------------------------------------------------------|
| [Microsoft-Windows-Shell-Setup-OEMInformation-SupportProvider](microsoft-windows-shell-setup-oeminformation-supportprovider.md)           | New. Specifies the name of the OEM support app or website to display in the Get Help app. If not provided, the default System Manufacturer name (from msinfo32.exe) will be used. |
| [Microsoft-Windows-Embedded-UnifiedWriteFilter-OverlayFlags](microsoft-windows-embedded-unifiedwritefilter-overlayflags.md)           | New. Specifies whether writes to unused space on the volume are allowed to pass through, rather than being redirected to the overlay. |
| [Microsoft-Windows-WorkstationService-AllowInsecureGuestAuth](microsoft-windows-workstationservice-allowinsecureguestauth.md)           | New. Specifies whether an SMB client allows insecure guest logons to an SMB server. Microsoft recommends using the default value of `0`. |

## Deprecated Windows settings

| Setting name                                           | Description                                                                      |
|:-------------------------------------------------------|:---------------------------------------------------------------------------------|
| [Microsoft-Windows-Shell-Setup-OEMInformation-HelpCustomized](microsoft-windows-shell-setup-oeminformation-helpcustomized.md)             | Deprecated. Setting this no longer has any impact. To [customize the Get Help app](https://review.docs.microsoft.com/en-us/windows-hardware/customize/desktop/customize-get-help-app), define `SupportURL` or `SupportAppURL` as part of your `OEMInformation`.                                                                                                                      |
| [Microsoft-Windows-Shell-Setup-OEMInformation-Logo](microsoft-windows-shell-setup-oeminformation-logo.md)                                 | Deprecated as no OEM logo is displayed in the Get Help app.                                                                                            |
| [Microsoft-Windows-Shell-Setup-OEMInformation-SupportHours](microsoft-windows-shell-setup-oeminformation-supporthours.md)                 | Deprecated as no OEM support hours are displayed in the Get Help app.                                                                                  |
| [Microsoft-Windows-Shell-Setup-OEMInformation-SupportPhone](microsoft-windows-shell-setup-oeminformation-supportphone.md)                 | Deprecated as no OEM support phone number is displayed in the Get Help app.                                                                            |
| [Microsoft-Windows-Shell-Setup-OEMInformation-Model](microsoft-windows-shell-setup-oeminformation-model.md)                               | Deprecated. The Model name displayed in the Get Help app is now based on your System Product Name value, as defined in System Information (msinfo.exe). |
| [Microsoft-Windows-Shell-Setup-OEMInformation-Manufacturer](microsoft-windows-shell-setup-oeminformation-manufacturer.md)                 | Deprecated. The Manufacturer name displayed in the Get Help app is now based on your System Manufacturer value, as defined in System Information (msinfo.exe), unless you provide a `SupportProvider` parameter as part of your `OEMInformation`. When `SupportProvider` is provided, it will override the System Manufacturer name. For this release, if `SupportProvider` is not present but the deprecated value `Manufacturer` is, it will still be used to support upgrade scenarios. |

## Removed Windows settings

| Setting name                                           | Description                                                                      |
|:-------------------------------------------------------|:---------------------------------------------------------------------------------|
| [Microsoft-Windows-Shell-Setup-VisualEffects-FontSmoothing](microsoft-windows-shell-setup-visualeffects-fontsmoothing.md)                 | This previously deprecated setting is now removed.                                                                                               |
| [Microsoft-Windows-Shell-Setup-Themes-ScreenSaver](microsoft-windows-shell-setup-themes-screensaver.md)                                   | ScreenSaver functionality in Themes is removed. ScreenSaver is deprecated in Group Policy, Control Panel, and SysPrep. Lockscreen features and policies are preferred over using ScreenSaver. We recommend using automatic power plans to dim the screen. This can help reduce system power consumption.          |