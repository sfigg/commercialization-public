---
author: kpacquer
Description: 'Windows 10 IoT Core (IoT Core) is a version of Windows 10 that is optimized for smaller devices with or without a display. IoT Core uses the rich, extensible Universal Windows Platform (UWP) API for building great solutions.'
MSHAttr: 'PreferredLib:/library'
title: What's new in IoT Core manufacturing
---

# What's new in IoT Core manufacturing


## <span id="IoT_Core_AddOns"></span>IoT Core Add-Ons


**June 9, 2016:** 
Several updates of [command-line tools](iot-core-adk-addons-command-line-options.md):
*  New tool: BuildImage.cmd. To troubleshoot, see log files at \Build\<arch>\pkgs\logs.
   This tool replaces CreateImage.cmd.   

*  Updated: [Update apps on your IoT Core devices](..\service\updating-iot-core-apps.md). You can use the same procedures to build app packages and app update packages. For Windows 10 Anniversary SDK Preview Build 14295, you can also update your apps through the Windows Store. 

**May 18, 2016:** 
Several updates of [command-line tools](iot-core-adk-addons-command-line-options.md):
*  Added new tools: NewAppPkg, NewDrvPkg, NewCommonPkg, Inf2Cab, BuildPkg

*  Updated: BuildPkg, BuildAllPkgs: When building packages, you'll get a cleaner display just showing the packages that have been processed, and any errors. To troubleshoot, you can now see the full log files at \Build\<arch>\pkgs\logs.
   These tools replace buildallproducts.cmd and cleanbuild.cmd.

*  Updated: CreatePkg now supports adding just the Component.Subcomponent names. Example:

    ``` syntax
    createpkg Registry.SystemSettings
    ```

*  Manufacturing labs: Updated labs to use new NewAppPkg, NewDriverPkg, NewCommonPkg tools.
 