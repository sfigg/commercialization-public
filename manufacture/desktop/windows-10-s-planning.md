---
author: themar
Description: 'Planning a Windows 10 S image.'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Planning a Windows 10 S image'
ms.author: themar
ms.date: 06/07/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Planning a Windows 10 S image

Building a Windows 10 S image is like building an image for any other desktop edition of Windows, with some key differences you must consider when planning your deployment. Windows 10 S allows adding drivers, applications, and other customizations, but you'll have to consider the following when you decide what to include in an image.

## Executables

When planning a deployment, make sure you understand what runs, and what is blocked in Windows 10 S. Choose and test customizations that work with Windows 10 S and won't interrupt your deployment. If you need to run unsigned code, you can [enable the manufacturing mode registry key](windows-10-s-manufacturing-key.md) which allows you to run unsigned code in audit mode, but once the PC ships the unsigned code will be blocked.

### What runs on Windows 10 S?

Windows 10 S will only run executable code that is signed with a **Windows**, **WHQL**, **ELAM**, or **Store** certificate from the [Windows Hardware Developer Center Dashboard](https://aka.ms/DevCenterPortal). This includes companion software for drivers.

Any apps not signed with one of the certificates mentioned, including companion apps, are blocked. When a blocked app is run, the user is notified that the app cannot run.

### What is blocked in Windows 10 S?

The following components are also blocked from running in Windows 10 S:

- bash.exe
- cdb.exe
- cmd.exe
- cscript.exe
- csi.exe
- dnx.exe
- kd.exe
- lxsmanager.dll
- msbuild.exe
- ntsd.exe
- powershell.exe
- powershell_ise.exe
- rcsi.exe
- reg.exe
- regedt32.exe
- windgb.exe
- wmic.exe
- wscript.exe

Any script or application that calls one of these blocked components will be blocked.

### Testing your app

For information on how to test your app, see [Test your Windows app for Windows 10 S](https://docs.microsoft.com/en-us/windows/uwp/porting/desktop-to-uwp-test-windows-s).

## Drivers

For Windows 10 S driver guidelines and requirements, see [Windows 10 S Driver Requirements](https://docs.microsoft.com/en-us/windows-hardware/drivers/install/Windows10SDriverRequirements).

## Customizations

The following table shows customizations in Windows 10 S, the mechanism to deploy the customizations, and the environment where you can deploy the customizations.

| Customization or task                                               | Mechanism                            | Environment                |
| ------------------------------------------------------------------- | ------------------------------------ | -------------------------- |
| Language Packs                                                      | DISM                                 | Offline, WinPE, Audit Mode |
| Features on Demand                                                  | DISM                                 | Offline, WinPE, Audit Mode |
| Start Menu Layout                                                   | layoutmodification.xml               | N/A                        |
| OEM Taskbar tiles                                                   | taskbarlayoutmodification.xml        | N/A                        |
| InkWorkstationTiles                                                 | InkWorkstationLayoutModification.xml | N/A                        |
| OOBE customizations                                                 | OOBE.xml, OOBE folder structure      | OOBESystem pass            |
| UWP apps                                                            | DISM                                 | Offline, WinPE, Audit mode |
| Bridge apps                                                         | DISM                                 | Offline, WinPE, Audit Mode |
| Drivers with no unsigned or win32 scripts/exe/binaries              | DISM                                 | Offline, WinPE, Audit Mode |
| Wallpaper                                                           | unattend.xml                         | N/A                        |
| \<Shift + F10> from first OOBE screen                               | Manufacturing reg key                | OOBE                       |
| Driver installation with setup.exe                                  | Unsupported                          | Unsupported                |
| Drivers with co-installers or dependent on scripts or cmd execution | Unsupported                          | Unsupported                |
| Win32 apps                                                          | Unsupported                          | Unsupported                |
| First logon commands                                                | Unsupported                          | Unsupported                |

### Enable customizations in audit mode

To enable customizations in audit mode, you have to enable manufacturing mode by adding a registry key to your offline image. Manufacturing mode allows you to run unsigned code that is normally blocked. For instructions on how to add or remove the manufacturing registry key, see [Manufacturing registry key](windows-10-s-manufacturing-mode.md).

You'll also have to configure ScanState to exclude the registry key when capturing your recovery package. This ensures that the registry key doesn't get restored during reset or recovery scenarios. We'll cover how to exclude the key from recovery in the [Windows 10 S deployment lab](windows-10-s-deployment-sxs.md)

>**Important**: Don't ship your Windows 10 S PC with the registry in place. You'll have to remove the registry key prior to shipping the device.

## Upgrade paths

Windows 10 S allows the following upgrade paths:

|  Upgrade paths                         |   |  
| -------------------------------------- | ------------------------- |
| Windows 10 S to Professional           | Windows 10 S N to Professional N |          
| Windows 10 S to Professional Education | Windows 10 S N to Professional Education N |
| Windows 10 S to Enterprise             | Windows 10 S N to Enterprise N |
| Windows 10 S to Education              | Windows 10 S N to Education N |


