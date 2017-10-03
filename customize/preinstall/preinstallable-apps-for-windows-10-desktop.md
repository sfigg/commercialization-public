---
title: Preinstallable apps for desktop devices
description: Learn how to add an app to a Windows 10 for desktop editions (Home, Pro, Enterprise, and Education) image that will be available to customers at first boot.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 047A9971-29C1-402A-8671-C36272EC511B
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Preinstallable apps for desktop devices

## To add a preinstalled app to a desktop image

You will need to use the Windows Assessment and Deployment Kit (ADK) to pre-install Microsoft Store apps in your desktop images. [Download the Windows ADK](http://go.microsoft.com/fwlink/p/?LinkId=526740).

## Request a preinstallation package

Once an app has been added to the Dev Center, you can request a preinstallation package for it. If you are the OEM adding this application to your OS image, you would ask the developer of the application to do this on your behalf. They would then give you the downloaded zip file. You cannot access their developer account directly.

1. From the dashboard in Dev Center, select the app that is to be preinstalled. If it is a new app, click **Create new app**.
1. Select **manage published** packages
1. Select **Request package** for OS preinstallation
1. A confirmation dialog will appear, noting that apps preinstalled on an OS prior to Windows 10 must be free. Select **Enable**.
1. Find the correct package for the targeted OS and download by selecting **Download** or **Generate package**.
1. Once ready the link will change to **Download**.
1. Zip file is ready for inclusion in OS image.

## <a href="" id="add-the-app-to-the-os-image-"></a>Add the app to the OS image

Applications are considered Assets, which are configurable customizations that are not settings. You can add them using DISM, which is part of the Windows Assessment and Deployment Kit (ADK).

For detailed instructions, see [Preinstall apps using DISM](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/preinstall-apps-using-dism).