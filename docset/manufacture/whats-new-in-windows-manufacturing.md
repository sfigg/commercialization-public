---
author: kpacquer
Description: 'Windows 10 IoT Core (IoT Core) is a version of Windows 10 that is optimized for smaller devices with or without a display. IoT Core uses the rich, extensible Universal Windows Platform (UWP) API for building great solutions.'
MSHAttr: 'PreferredLib:/library'
title: What's new in IoT Core manufacturing
---

# What's new in Windows manufacturing

This topic covers new improvements for manufacturing. 

## What's new in desktop manufacturing 

**July 26, 2016**

- New sample script: [WinPE: Identify drive letters with a script](desktop/winpe-identify-drive-letters.md)

**July 21, 2016**

The following changes are new for Windows 10, version 1607:

- Sysprep supports preparing an image that has been upgraded from a previous version of Windows 10. For more information, see [Sysprep Overview](desktop/sysprep--system-preparation--overview.md).
- Siloed provisioning packages are a new type of provisioning package that can capture classic Windows applications individually, drivers plus applications, and more. They provide more flexibility for the manufacturing process and help reduce factory time to build computers that run Windows. ScanState.exe and Dism.exe are both improved to capture and apply siloed provisioning packages, respectively. 
- File names for language packs and language interface packs have been renamed. For examples of the new file names, see [Language packs](desktop/language-packs-and-windows-deployment.md).
- The Chinese (Honk Kong SAR) language pack (zh-HK) is no longer used. The Chinese (Taiwan) language pack (zh-TW) supports both Taiwan and Hong Kong locales. For more information, see [Available Language Packs for Windows](desktop/available-language-packs-for-windows.md).
- Language packs for WinPE and WinRE have been moved to the language packs DVD. OEMs and System Builders with Microsoft Software License Terms can download language packs and LIPs from the [Microsoft OEM site](http://go.microsoft.com/fwlink/?LinkId=131359) or the [OEM Partner Center](http://go.microsoft.com/fwlink/?LinkId=131358).
- A new /Defer parameter can be specified along with /ResetBase when you [reduce the size of the component store](desktop/reduce-the-size-of-the-component-store-in-an-offline-windows-image) to defer any long-running cleanup operations to the next automatic maintenance, but we highly recommend that **only** use /Defer as an option in the factory where DISM /ResetBase requires more than 30 minutes to complete.
- A new /EA parameter has been added to Dism /Apply-Image and /Capture-Image commands to capture and apply extended attributes. For Windows, catalog location hints are captured in extended attributes for inbox Authenticate Code scenarios. This enables quicker verification of hashes to ensure system files/components that have not changed. The process of creating the catalog database and those hashes happens on first boot of a Sysprep –Generalized image. If extended attributes are used to capture and apply the image, those attributes will also be carried over, removing the time to re-create them and enabling a faster first boot. For more information, see [DISM Image Management Command-Line Options](desktop/dism-image-management-command-line-options-s14.md). 

## What's new in IoT Core manufacturing

## <span id="IoT_Core_AddOns"></span>IoT Core Add-Ons

**June 20, 2016**
*  New BSP tools added:
   -  New folder structure: BSPs are now stored in separate folders, \iot-adk-addonkit\Source-&lt;arch&gt;\BSP. Multiple projects can now more easily share the same BSP folder.
   -  Updated tool: newproduct: Now allows you to link to a custom BSP. By default, arm builds default to RPi2, x86 builds default to MBM.
   -  Updated lab: [Lab 2: Creating your own board support package](create-a-new-bsp.md).

**June 9, 2016:** 
Several updates of [command-line tools](iot\iot-core-adk-addons-command-line-options.md):
*  New tool: BuildImage.cmd. Similar to CreateImage.cmd, this tool can build multiple images at a time, which can be useful for automated testing.  

   To troubleshoot, see log files at \\Build\\&lt;arch&gt;\\pkgs\\logs.   

*  Updated: [Update apps on your IoT Core devices](..\service\updating-iot-core-apps.md). You can use the same procedures to build app packages and app update packages. For Windows 10, version 1607, you can also update your apps through the Windows Store. 

**May 18, 2016:** 
Several updates of [command-line tools](iot\iot-core-adk-addons-command-line-options.md):
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