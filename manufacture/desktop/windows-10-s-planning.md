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

# Planning a Windows 10 S deployment

Building a Windows 10 S image is like building an image for any other desktop edition of Windows, with some key differences to consider when planning your deployment. You can add apps, drivers, and customizations to Windows 10 S, but you'll have to make sure they are supported in Windows 10 S.

## Executables

When planning a deployment, make sure you understand what runs, and what is blocked in Windows 10 S. Choose and test customizations that work with Windows 10 S and won't interrupt your deployment. If you need to run unsigned code, you can [enable the manufacturing mode registry key](windows-10-s-manufacturing-mode.md) which allows you to run unsigned code, but once the PC ships the unsigned code will be blocked.

### What runs on Windows 10 S?

Windows 10 S will only run executable code that is signed with a **Windows**, **WHQL**, **ELAM**, or **Store** certificate from the [Windows Hardware Developer Center Dashboard](https://aka.ms/DevCenterPortal). This includes companion apps for drivers.

Any apps not signed with one of the certificates mentioned, including companion apps, are blocked. When a blocked app is run, the user is notified that the app cannot run.

### What is blocked in Windows 10 S?

The following components are blocked from running in Windows 10 S. Any script or application that calls one of these blocked components will be blocked. If your manufacturing process uses scripts or applications that rely on blocked components, you can temporarily [enable manufacturing mode](windows-10-s-manufacturing-mode.md#enable-manufacturing-mode) for configuring and testing, but you can't ship a PC with manufacturing mode enabled.

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


### Testing your app

For information on how to test your app, see [Test your Windows app for Windows 10 S](https://docs.microsoft.com/en-us/windows/uwp/porting/desktop-to-uwp-test-windows-s).

## Drivers

For Windows 10 S driver guidelines and requirements, see [Windows 10 S Driver Requirements](https://docs.microsoft.com/en-us/windows-hardware/drivers/install/Windows10SDriverRequirements).

## Customizations

Not all customizations are supported in Windows 10 S. This section shows which customizations are supported, which customizations are not supported, and how to enable manufacturing mode that allows you to perform customizations in audit mode.

### Supported customizations

The following table shows customizations in Windows 10 S, the mechanism to deploy the customizations, and the environment where you can deploy the customizations.

| Customization or task                                                                                          | Mechanism                            | Environment                |
| -------------------------------------------------------------------------------------------------------------- | ------------------------------------ | -------------------------- |
| [Language Packs](language-packs-and-windows-deployment.md)                                                     | DISM                                 | Offline, WinPE, Audit Mode |
| [Features on Demand](features-on-demand-v2--capabilities.md)                                                   | DISM                                 | Offline, WinPE, Audit Mode |
| [Start Menu Layout](customize-the-start-screen.md)                                                             | layoutmodification.xml               | N/A                        |
| [OEM Taskbar tiles](https://docs.microsoft.com/en-us/windows-hardware/customize/desktop/customize-the-taskbar) | taskbarlayoutmodification.xml        | N/A                        |
| InkWorkstationTiles                                                                                            | InkWorkstationLayoutModification.xml | N/A                        |
| [OOBE customizations](configure-oobexml.md)                                                                    | OOBE.xml, OOBE folder structure      | OOBESystem pass            |
| [UWP apps](https://docs.microsoft.com/en-us/windows/uwp/get-started/universal-application-platform-guide)      | DISM                                 | Offline, WinPE, Audit mode |
| [Bridge apps](https://docs.microsoft.com/en-us/windows/uwp/porting/desktop-to-uwp-root.md)                     | DISM                                 | Offline, WinPE, Audit Mode |
| Drivers with no unsigned or win32 scripts/exe/binaries                                                         | DISM                                 | Offline, WinPE, Audit Mode |
| [Wallpaper](https://docs.microsoft.com/en-us/windows-hardware/customize/desktop/unattend/microsoft-windows-shell-setup-themes-desktopbackground) | unattend.xml                         | N/A                        |
| Command prompt from OOBE using \<Shift + F10>                                                                  | Manufacturing reg key                | OOBE                       |

### Unsupported customizations

The following tables shows customizations that are not supported in Windows 10 S.

| Customization or task                                               | Mechanism                            | Environment                |
| ------------------------------------------------------------------- | ------------------------------------ | -------------------------- |
| Driver installation with setup.exe                                  | Unsupported                          | Unsupported                |
| Drivers with co-installers or dependent on scripts or cmd execution | Unsupported                          | Unsupported                |
| Win32 apps                                                          | Unsupported                          | Unsupported                |
| First logon commands                                                | Unsupported                          | Unsupported                |

### Enable customizations in audit mode

To enable customizations in audit mode, you have to enable manufacturing mode by adding a registry key to your offline image. Manufacturing mode allows you to run unsigned code that is normally blocked. For instructions on how to add or remove the manufacturing registry key, see [Manufacturing registry key](windows-10-s-manufacturing-mode.md).

You'll also have to configure ScanState to exclude the registry key when capturing your recovery package. This ensures that the registry key doesn't get restored during reset or recovery scenarios. We'll cover how to exclude the key from recovery in the [Windows 10 S deployment lab](windows-10-s-deployment-sxs.md)

> [!IMPORTANT]
> Don't ship your Windows 10 S PC with the registry in place. You'll have to remove the registry key prior to shipping the device.

## Upgrade paths

Windows 10 S allows the following upgrade paths:

|  Upgrade paths                         |   
| -------------------------------------- | 
| Windows 10 S to Professional           |
| Windows 10 S N to Professional N      | 
| Windows 10 S to Enterprise             |
| Windows 10 S N to Enterprise N         |  
| Windows 10 S to Education              | 
| Windows 10 S N to Education N          |        
| Windows 10 S to Professional Education |
| Windows 10 S N to Professional Education N |

For information on using DISM to change the a Windows image to a different edition, see [Change the windows image to a higher edition using dism](change-the-windows-image-to-a-higher-edition-using-dism.md).

## Recovery

### Built-in recovery

Windows 10 S includes a recovery solution that enables a user to restore, refresh, or troubleshoot their PC. Recovery in Windows 10 S has some differences from other editions of Windows. These differences are:

- Third party recovery solutions are NOT supported
- Extensibility points for customizations documented in this section is supported
    - OEM tools in WinRE is not supported
    - CMD prompt in WinRE will be enabled but only allow execution of inbox WinRE binaries
    - Extensibility script must be in the form of a *.CMD
    - Does not call any of the blocked inbox components except reg.exe and wmic.exe

### Validating recovery in your deployment

After you configure your Windows 10 S PC for recovery scenarios, validate that it is working properly by verifying that these scenarios run successfully:

- Run refresh recovery and validate the user files are preserved and your factory desktop customizations are restored.
- Run reset recovery and validate the user files and profile are removed and your factory desktop customizations are restored.
- Validate extensibility scripts in the simulated RS3 enforcement level using the provided policy file.
- If you created a recovery package with ScanState, ensure that the manufacturing key was excluded from capture.

## Retail Demo eXperience (RDX)

Microsoft will provide updated content for RDX that will need to be deployed during Manufacturing. This updated content includes new content packages with Windows 10 Pro in S mode (Windows 10 S) specific marketing messages for Windows and Office. 

The Updated RDX supersedes previously released RDX included in the RS2 Features on Demand.  The updated RDX which includes Windows 10 Pro in S mode (Windows 10 S) specific content can be used on all SKUs. The RDX will detect the Windows edition to display the corresponding RDX content. 

