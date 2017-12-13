---
title: Windows 10 S security features and hardware requirements for OEMs
description: Provides guidance on what Windows 10 S provides and what is required
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 12/15/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Windows 10 S Mode security features and requirements for OEMs
Windows 10 S is a specific configuration of Windows 10 Pro that offers a familiar Windows experience that’s streamlined for security and performance. Windows 10 S provides the best of the cloud and full featured apps, and is designed for modern devices. Windows Defender is always on and always up-to-date. 

Windows 10 S will only run verified apps from the Store and verified drivers from Windows Update. Windows 10 S provides supports Azure Active Directory, and when paired with MSA or Intune for Education, Windows 10 S defaults to storing files to OneDrive. Windows 10 S is available for any Windows 10 Professional edition, and users can switch to Windows 10 Pro.

## Features enabled for Windows 10 S
Windows 10 S Mode protects customers by using a combination of code integrity policies,  hardware, and certification for apps. Windows 10 S will only run executable code that is signed with a Windows, WHQL, ELAM, or Store certificate from the [Windows Hardware Developer Center Dashboard](https://aka.ms/DevCenterPortal). This includes companion apps for drivers. 

| Features | Windows 10 S | Windows 10 Home | Windows 10 Pro|
|-----------|-----------|---------| ---------|
| Non-store apps | | Yes | Yes |
| Domain join on premise | |  | Yes |
| Azure AD domain join | Yes |  | Yes |
| Windows Store apps (including Win32 centennial apps) | Yes | Yes | Yes |
| OneDrive automatic setup and sync; Requires MSA | Yes | Configurable | Configurable |
| Microsoft default apps set| Yes | Configurable | Configurable |
| Windows update for business | Yes |  | Yes |
| Windows Store for business | Yes |  | Yes |
| Mobile Device Management (MDM) | Yes | limited | Yes |
| BitLocker | Yes | | Yes |
| Enterprise state roaming with Azure AD  | Yes | | Yes |
| Shared PC configuration | Yes | | Yes |

### Windows 10 S default modern app configuration
* Email: Mail
* Maps : Maps
* Photo viewer : Photos
* Search : Bing
* Video player: Movies & TV
* Web browser: Edge
* OneDrive automatically configured for MSA accounts so that documents, Photos, and Desktop are automatically synced and the user has 5GB of standard storage. 

### Hypervisor Code integrity policy
Hypervisor code integrity policy (HVCI) blocks the execution of unsigned or improperly signed binaries. Using unsupported binaries is only recommended when performing lab or factory image customization, or during deployment where the execution environment is either WinPE or Audit Mode.
Once the CI policy is enabled on a system, it is enabled in two places:

* Windows 10 S, enforced at boot
* UEFI firmware policy, enforced during firmware load and OS boot

For more information, see the Enable virtualization-based isolation for Code Integrity section of [Driver compatibility with Device Guard in Windows 10](https://blogs.msdn.microsoft.com/windows_hardware_certification/2015/05/22/driver-compatibility-with-device-guard-in-windows-10/)

### Signed drivers and Windows 10 S
Driver signing is different for Windows 10 S. To install on Windows 10 S, driver packages must meet the following requirements:

* Driver packages must be digitally signed with a Windows, WHQL, ELAM, or Store certificate from the Windows Hardware Developer Center Dashboard.
* Companion software must be signed with a Microsoft Store Certificate.
* Does not include an *.exe, *.zip, *.msi or *.cab in the driver package that extracts unsigned binaries.
* Driver installs using only INF directives.
* Driver does not call blocked inbox components.
* Drivers does not include any user interface components, apps, or settings. Instead, use Universal applications from the Microsoft Store, for example:
* Hardware Support Apps
* UWP device apps
* Centennial Apps
* Driver and firmware servicing uses Windows Update and not an updater app.

For more information, see [Windows 10 S Driver Requirements](https://docs.microsoft.com/en-us/windows-hardware/drivers/install/windows10sdriverrequirements) and [Publish a driver to Windows Update](https://docs.microsoft.com/en-us/windows-hardware/drivers/dashboard/publish-a-driver-to-windows-update).

### What's not supported
Windows 10 S does not allow any apps that aren't in the Store. A second limitation is that Windows 10 S does not allow on-premise domain joins. Additionally, some Windows customizations and some apps are not supported. For more information, see [Planning a Windows 10 S deployment](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/windows-10-s-planning)

The following components are blocked from running in Windows 10 S. Any script or application that calls one of these blocked components will be blocked. If your manufacturing process uses scripts or applications that rely on blocked components, you can temporarily [enable manufacturing mode](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/windows-10-s-manufacturing-mode#enable-manufacturing-mode) for configuring and testing, but you can't ship a PC with manufacturing mode enabled.

* bash.exe
* cdb.exe
* cmd.exe
* cscript.exe
* csi.exe
* dnx.exe
* kd.exe
* lxsmanager.dll
* msbuild.exe
* ntsd.exe
* powershell.exe
* powershell_ise.exe
* rcsi.exe
* reg.exe
* regedt32.exe
* windgb.exe
* wmic.exe
* wscript.exe



