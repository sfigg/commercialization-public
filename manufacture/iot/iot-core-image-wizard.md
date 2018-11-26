---
author:
Description: 'This tool is built utilizing the Windows 10 IoT Core (IoT Core) ADK Add-Ons. To learn more about these tools, see What''s in the Windows ADK IoT Core Add-ons.'
ms.assetid:
MSHAttr: 'PreferredLib:/library'
title: 'IoT Core Image Wizard'
ms.author:
ms.date: 11/06/2018
ms.topic: article


---

# IoT Core Image Wizard (Preview release)

The IoT Core Image Wizard is a GUI experience utilizing the [IoT Core Add-ons Powershell Commands](iot-core-adk-addons-command-line-options.md).
Using the IoT Core Image Wizard, the process of creating your first image for your device is simplified.

## Download link

Download the [IoT Core Image Wizard](https://iottools.blob.core.windows.net/iotcoreimagewizard/WindowsIoTCoreImageWizard.zip).

## Setup instructions

1. Download the zip file
2. Extract to a folder
3. See the readme.md in the extracted files for the prerequisites
4. Once prerequisites are installed, go to the extracted files' folder and run IoTCoreImageWizard.exe

## November 2018 Preview release notes

- Only supports creating a new workspace.  Cannot open/edit a workspace.  Use the [Powershell Commands](iot-core-adk-addons-command-line-options.md) to open/edit a workspace.
- Just debug configurations of image builds.  If you need to build retail images, use the [Powershell Commands](iot-core-adk-addons-command-line-options.md).
- Errors with creating a recovery image.  Make sure the OS version matches or is newer than the kits' version.  Also, all the kits need to be the same version.

## Related topics

[IoT Core Add-ons](iot-core-adk-addons.md)

[IoT Core Add-ons Powershell Commands](iot-core-adk-addons-command-line-options.md)

[IoT Core manufacturing guide](iot-core-manufacturing-guide.md)

