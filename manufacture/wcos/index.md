---
author: kpacquer
Description: 'Windows Core Operating System (WCOS) is the common configuration of OneCore, OneCoreUAP, CShell and OneCore Operating Environment that will ship on a variety of products.'
ms.assetid: d67b79a7-c889-45ad-aaf2-199a347d7d64
MSHAttr: 'PreferredLib:/library'
title: IoT Core manufacturing
ms.author: themar
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Windows Core Operating System (WCOS)

Windows Core is the operating system used to build a wide range of devices, including HoloLens, Xbox, PCs, phones and Nano Servers. Windows Core is designed to help you create devices that run apps & drivers built for the Universal Windows Platform (UWP) that are more compact, servicable, and secure.

## WCOS packaging model

### Packages (*.cab)
*  **Everything you add is packaged**. Every file, folder, setting and customization that you add to the image gets captured into trackable package files.
*  **Packages help you work with partners**. Packages let OEMs, ODMs, developers, and Microsoft work together to help deliver security and feature updates to your devices without stomping on each other's work.
*  **Packages are signed**. Every customization on your device is trackable to a package with a signature. Only you and partners that you trust can update the packages.
*  **Packages are versioned for easy web-based updates**. Need to change a setting or a file? Update the package and put it on an update server, and the devices can update themselves.

![A sample package file (sample_pkg.cab) includes a package definition file, package contents like apps, drivers, and files, plus a signature file and a version number](images/WCOSPackages.png)

### <span id="Feature_manifests__FMs_"></span><span id="feature_manifests__fms_"></span><span id="FEATURE_MANIFESTS__FMS_"></span>Feature manifests (OEMFM.xml, BSPFM.xml)

After you've created a package, list its location in a feature manifest file, and give it a feature ID. This helps you sort which packages go into your final images.

-   **OEMFM.xml** includes features an OEM might add to a device, such as the app and a provisioning package.
-   **BSPFM.xml** includes features that a hardware manufacturer might use to define a board. For example, OEM\_RPi2FM.xml includes all of the features used for the Raspberry Pi 2.

The process is similar to [feature manifests in Windows 10 IoT and Windows 10 Mobile](https://msdn.microsoft.com/library/windows/hardware/dn756745).

![A sample feature manifest (feature manifest) includes paths to the package file, and assigns them feature IDs](images/WCOS-feature_manifest.png)


### <span id="image_configuration_file"></span>Image configuration files (TestOEMInput.xml, RetailOEMInput.xml)

Your image configuration file defines what features will be in the final image.

You can use as many FMs into an image as you want.

*  **Create feature manifests to track the packages**.
*  **Create device images using scripts**. Quickly combine packages for your devices with flexible scripts. These scripts help you create and maintain devices for a larger variety of target customer markets.

![A sample feature manifest (TestOEMInput-FR.xml) uses feature IDs from the feature manifests to define what packages are included in the build (from BSP.fm: config.cab, drive.cab, hdmi.cab, and chips.cab; from fabrikam.fm: vc1.cab, vc-fr.cab; from OEM.fm: logo-fr.cab, wc_fr.cab)](images/Project-Config-File.png)

To create the final image, you'll use the `imggen` tool with an image configuration file, **OEMInput.xml file**.

These are the same tools used to create Windows 10 Mobile images. To learn more, see [OEMInput file contents](https://msdn.microsoft.com/library/windows/hardware/dn756778).

The image configuration file lists:

-   The feature manifests (FMs) and the packages that you want to install from each one.


-   ~~An **SoC** chip identifier, which is used to help set up the device partitions. The supported values for **soc** are defined in the corresponding bspfm.xml, under \<devicelayoutpackages>.~~

-   ~~A **Device** identifier, which is used to select the device layout. The supported values for **device** are defined in the corresponding bspfm.xml, under \<oemdeviceplatformpackages>.~~

-   The ReleaseType (either **Production** or **Test**).

    **Retail builds**: We recommend creating retail images early on in your development process to verify that everything will work when you are ready to ship.

    These builds contain all of the security features enabled.

    To use this build type, all of your code must be signed using retail (not test) code signing certificates.

    For a sample, see %SRC\_DIR%\\Products\\SampleA\\RetailOEMInput.xml.

    **Test builds**: Use these to try out new versions of your apps and drivers created by you and your hardware manufacturer partners.

    These builds have some security features disabled, which allows you to use either test-signed or production-signed packages.

    These builds also include developer tools such as debug transport, SSH, and PowerShell, that you can use to help troubleshoot issues.

    For a sample, see %SRC\_DIR%\\Products\\SampleA\\TestOEMInput.xml.

<!--
|     |  Retail builds | Test builds |
| --- | -------------- | ----------- |
| Image release type   | ReleaseType: **Production** | ReleaseType: **Test** |
| Package release type | Only Production Type packages are supported | Both Production Type or Test Type are supported |
| Test-signed packages | Not supported | Supported <p> IOT_ENABLE_TESTSIGNING feature must be included. |
| Code integrity check | Supported. By default, this is enabled. | Not supported <p>IOT_DISABLE_UMCI feature must be included |
-->




~~OEMs can manufacture and deploy WCOS using existing or custom-built hardware. To see existing recommended hardware, see [device options](https://developer.microsoft.com/windows/iot/explore/deviceoptions) and the [Hardware Compatibility List](http://go.microsoft.com/fwlink/?LinkID=532948).~~

~~When developing your own board, see the [Minimum hardware requirements for IoT Core](https://msdn.microsoft.com/library/windows/hardware/dn915086#iotcore).~~



## <span id="in_this_section"></span>In this section

* [What's new in IoT Manufacturing](whats-new-in-manufacturing.md)

* [IoT Core manufacturing guides](iot-core-manufacturing-guide.md)

* [IoT Core feature list](iot-core-feature-list.md)

* [Windows ADK IoT Core Add-ons contents](iot-core-adk-addons.md)

* [IoT Core Add-ons command-line options](iot-core-adk-addons-command-line-options.md)


## <span id="related_topics"></span>Related topics

* [Learn about Windows 10 IoT Core](https://developer.microsoft.com/windows/iot/explore/iotcore)

* [IoT Core Developer Resources](https://developer.microsoft.com/windows/iot)
 

 