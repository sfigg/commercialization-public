---
author: kpacquer
Description: 'Windows 10 IoT Core (IoT Core) is a version of Windows 10 that is optimized for smaller devices with or without a display. IoT Core uses the rich, extensible Universal Windows Platform (UWP) API for building great solutions.'
MSHAttr: 'PreferredLib:/library'
title: What's new in IoT Core manufacturing
---

# What's new in Windows manufacturing

This topic covers new improvements for desktop, mobile, and IoT manufacturing. 

## <span id="Whats_new_in_desktop_Manufacturing"></span>What's new in desktop manufacturing 

**September 30, 2016**

-  The recommended partition size for the Windows RE partition has shrunk from 500MB to 450MB. Your own Windows RE partition size may vary, based on add-ins like [boot-critical drivers and languages](desktop/add-drivers-langs-universal-apps-sxs.md). 

-  New topic: [Optimize Windows PE](desktop/winpe-optimize.md) helps you boot Windows PE faster after adding customizations like languages or boot-critical drivers.

**September 20, 2016**

-  To deploy individual Windows desktop apps, use [Siloed provisioning packages (SPPs)](desktop/siloed-provisioning-packages.md). To do this, you'll need to run a version of DISM from the Windows ADK, not the built-in version from Windows or Windows PE. The DISM installer program, WimMountADKSetup(x86/amd64).exe should be run from a non-removable drive. For a walkthrough, see [Lab 1f: Add Windows desktop applications with siloed provisioning packages](desktop/add-desktop-apps-wth-spps-sxs.md). To get command-line help, use **C:\ADKTools\DISM /Apply-SiloedPackage /?**.

**September 6, 2016**

-  [Features on Demand](https://msdn.microsoft.com/windows/hardware/commercialize/manufacture/desktop/features-on-demand-v2--capabilities): We've added the list of [all available language features](http://download.microsoft.com/download/8/3/0/830AC3A9-68CF-4F10-9357-F27E0A03148A/Windows%2010%201607%20FOD%20to%20LP%20Mapping%20Table.xlsx).

**September 2, 2016**

-  Updated [push-button reset](desktop/push-button-reset-overview.md), added details about feature changes for Windows 10, Version 1607.  

**September 1, 2016**

-  In Windows 10, Version 1607 language packs from the Windows ADK should not be used for WinRE. Instead, use the language packs available from the language pack ISO.

**August 25, 2016**

-  In Windows 10, Version 1607, it's no longer necessary to remove inbox apps when adding a language pack. If you do try to remove the apps, the DISM command may fail. 
   Updated topics: 
   -  [Add Language Packs to Windows](desktop/add-language-packs-to-windows.md)
   -  [Lab 1d: Add boot-critical drivers, languages, and universal Windows apps](desktop/add-drivers-langs-universal-apps-sxs.md).
   -  [OEM deployment of Windows 10 for desktop editions](desktop/oem-deployment-of-windows-10-for-desktop-editions.md)

**August 15, 2016**

-  In Windows 10, Version 1607, the base recovery (WinRE) image includes a new optional component: WinPE-WiFi-Package. You shouldn’t need to change any of your scripts; this package is not language-specific and does not need to be added or removed when changing the available languages.

**August 4, 2016**

-  Desktop apps, drivers, and settings added in audit mode need to be captured separately so they can be restored by the push-button recovery tools. To learn more, see [Lab 1g: Make changes from audit mode](desktop/prepare-a-snapshot-of-the-pc-generalize-and-capture-windows-images-blue-sxs.md).

-  Desktop apps, drivers, and settings added from siloed provisioning packages (SPPs) are configured automatically. 

**July 26, 2016**

-  New sample script: [WinPE: Identify drive letters with a script](desktop/winpe-identify-drive-letters.md)

**July 21, 2016**

The following changes are new for Windows 10, version 1607:

- Sysprep supports preparing an image that has been upgraded from a previous version of Windows 10. For more information, see [Sysprep Overview](desktop/sysprep--system-preparation--overview.md).

- Siloed provisioning packages are a new type of provisioning package that can capture classic Windows applications individually, drivers plus applications, and more. They provide more flexibility for the manufacturing process and help reduce factory time to build computers that run Windows. ScanState.exe and Dism.exe are both improved to capture and apply siloed provisioning packages, respectively. 

- File names for language packs and language interface packs have been renamed. For examples of the new file names, see [Language packs](desktop/language-packs-and-windows-deployment.md).

- The Chinese (Hong Kong SAR) language pack (zh-HK) is no longer used. The Chinese (Taiwan) language pack (zh-TW) supports both Taiwan and Hong Kong locales. For more information, see [Available Language Packs for Windows](desktop/available-language-packs-for-windows.md).

- Language packs for WinPE and WinRE have been moved to the language packs DVD. OEMs and System Builders with Microsoft Software License Terms can download language packs and LIPs from the [Microsoft OEM site](http://go.microsoft.com/fwlink/?LinkId=131359) or the [OEM Partner Center](http://go.microsoft.com/fwlink/?LinkId=131358).

- A new /Defer parameter can be specified along with /ResetBase when you [reduce the size of the component store](desktop/reduce-the-size-of-the-component-store-in-an-offline-windows-image.md) to defer any long-running cleanup operations to the next automatic maintenance, but we highly recommend that **only** use /Defer as an option in the factory where DISM /ResetBase requires more than 30 minutes to complete.

- A new /EA parameter has been added to Dism /Apply-Image and /Capture-Image commands to capture and apply extended attributes. For Windows, catalog location hints are captured in extended attributes for inbox Authenticate Code scenarios. This enables quicker verification of hashes to ensure system files/components that have not changed. The process of creating the catalog database and those hashes happens on first boot of a Sysprep –Generalized image. If extended attributes are used to capture and apply the image, those attributes will also be carried over, removing the time to re-create them and enabling a faster first boot. For more information, see [DISM Image Management Command-Line Options](desktop/dism-image-management-command-line-options-s14.md). 

- A new Windows Hardware Compatibility Program requirement, [Device.Graphics.AdapterBase.RunFromDriverStore](https://msdn.microsoft.com/windows/hardware/commercialize/design/compatibility/device-graphics#device-graphics-adapterbase), can impact OEM preloads. Drivers must be written so that their components can be run directly from the Driver Store. Drivers are installed at %SystemRoot%\System32\DriverStore\FileRepository.

## <span id="Whats_new_in_Mobile_Manufacturing"></span>What's new in mobile manufacturing


**October 4, 2016**
- New [optional feature](https://msdn.microsoft.com/library/windows/hardware/dn756780.aspx): **16GBFEATURESONDATA** added in Windows 10, version 1607. This feature moves several of the common inbox apps to the data partition. 

## <span id="Whats_new_in_IoT_Core_Manufacturing"></span>What's new in IoT Core manufacturing

**October 5, 2016**

[Windows 10 IoT Core is now free](iot/set-up-your-pc-to-customize-iot-core.md). You no longer need an MSDN subscription or an account as a registered Microsoft OEM, though you do need a Microsoft account.

**October 4, 2016**
- The [feature: **IOT\_SPEECHDATA\_EN\_US**](iot/iot-core-feature-list.md) is deprecated in Windows 10, version 1607. Do not add this feature. The default image includes speech data for US English. |

**September 22, 2016**

- In Windows 10, version 1607, to [prevent automatic updates of custom BSPs](../service/iot/managing-iot-device-update.md), use the IoT\_GENERIC\_POP package in the OemInput XML. (You can no longer use the Intel.Generic.DeviceInfo.cab, this file has been removed.)

- New [command-line options](iot/iot-core-adk-addons-command-line-options.md): 

    - Nightly build tools: **BuildAgent**, **BuildKitAgent**.

    - Tools to convert apps, drivers to packages: **Appx2pkg**, **Inf2Pkg**

    - Tool to create update packages: **newupdate.cmd**. Works like **newpackage.cmd**, makes tracking easier by storing version numbers (versioninfo.txt) and keeping multiple folders for each of this update for comparison (updateversions.txt).

**September 6, 2016**

You can set your IoT Core devices to [synchronize the time](iot/update-the-time-server.md) from one or more time servers.

**August 3, 2016**

By default, in Windows 10, version 1607, the built-in administrator account is now disabled. 

   -  To add the default account back, include the IOT_ENABLE_ADMIN feature in your feature manifest This adds the account with the user name: Administrator, and the password: `p@ssw0rd`.
   
   -  To add in a new account with its own username and password (recommended), update the file OEMCustomizations.cmd to use your own username and password, and add it into your build using the OEM_CustomCmd package. To learn more, see [Lab 1b: Add an app to your image](iot/deploy-your-app-with-a-standard-board.md).

Added [features for Windows 10, version 1607](iot/iot-core-feature-list.md) 
Features: 
   
   - IOT_UNIFIED_WRITE_FILTER – Adds [Unified Write Filter (UWF)](https://developer.microsoft.com/windows/iot/docs/uwf) to protect physical storage media from data writes.
   
   - IOT_GENERIC_POP – Adds the Generic device targeting info for OS only Updates. 
   
   - IOT_NANORDPSERVER – Adds [Remote Display packages](https://developer.microsoft.com/windows/iot/docs/remotedisplay).
   
   - IOT_SHELL_HOTKEY_SUPPORT – Adds support to launch default app using a hotkey: [VK_LWIN (Left Windows key)]
   
   - IOT_POWER_SETTINGS – (Renamed from IOT_POWER_SETIINGS)
   
   - IOT_ENABLE_ADMIN - Test feature
   
   Languages: 
   
   -  IOT_SPEECHDATA_JA_JP: Adds speech data for Japanese
   
   -  IOT_SPEECHDATA_ZH_HK: Adds speech data for Chinese (Hong Kong S.A.R.)
   
   -  IOT_SPEECHDATA_ZH_TW: Adds speech data for Chinese (Taiwan)
   

**June 28, 2016**

-  Added details on signing retail images: [Build a retail image](iot/build-retail-image.md)

-  Updated [Instructions to create your own BSP](iot/create-a-new-bsp.md), added details about the [IoT Device Layout](iot/device-layout.md).

**June 20, 2016**

*  New BSP tools added:
   -  New folder structure: BSPs are now stored in separate folders, \iot-adk-addonkit\Source-&lt;arch&gt;\BSP. Multiple projects can now more easily share the same BSP folder.
   -  Updated tool: newproduct: Now allows you to link to a custom BSP. By default, arm builds default to RPi2, x86 builds default to MBM.
   -  Updated lab: [Lab 2: Creating your own board support package](iot/create-a-new-bsp.md).

**June 9, 2016:** 

Several updates of [command-line tools](iot/iot-core-adk-addons-command-line-options.md):
*  New tool: BuildImage.cmd. Similar to CreateImage.cmd, this tool can build multiple images at a time, which can be useful for automated testing.  

   To troubleshoot, see log files at \\Build\\&lt;arch&gt;\\pkgs\\logs.   

*  Updated: [Update apps on your IoT Core devices](../service/iot/updating-iot-core-apps.md). You can use the same procedures to build app packages and app update packages. For Windows 10, version 1607, you can also update your apps through the Windows Store. 

**May 18, 2016:** 

Several updates of [command-line tools](iot/iot-core-adk-addons-command-line-options.md):
*  Added new tools: 
   -  NewAppxPkg: Creates and prepares working folders for creating app packages based on .appx files, certificates, and dependencies.
   
   -  NewDrvPkg: Creates and prepares working folders for creating driver packages based on .inf files.
   
   -  NewCommonPkg: Creates and prepares working folders for files, folders, registry keys, and other items that aren't architecture-specific.  
   
   -  Inf2Cab: Converts a .inf file to a .cab file.
   
   -  BuildPkg: Builds .cab packages using working folders.

*  Deprecated tools: 
   
   -  BuildAllPackages. Use BuildPkg instead.
   
   -  NewPkg. Use newappxpkg, newdrvpkg, and newcommonpkg instead.

*  Troubleshooting and logging: When building packages, you'll get a cleaner display just showing the packages that have been processed, and any errors. To troubleshoot, you can now see the full log files at \\Build\\&lt;arch&gt;\\pkgs\\logs.

*  Updated: CreatePkg now supports adding just the Component.Subcomponent names. Example:

    ``` syntax
    createpkg Registry.SystemSettings
    ```

*  Manufacturing labs: Updated labs to use new NewAppPkg, NewDriverPkg, NewCommonPkg tools.