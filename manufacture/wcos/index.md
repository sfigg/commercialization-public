---
Description: 'Windows Core Operating System (WCOS) is the common configuration of OneCore, OneCoreUAP, CShell and OneCore Operating Environment that will ship on a variety of products.'
MSHAttr: 'PreferredLib:/library'
title: Build devices using Windows Core
ms.author: kenpacq
ms.date: 6/02/2018
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Windows Core manufacturing

Windows Core Operating System (WCOS): It's easier to build, more secure, and more flexible. You can use it to build devices on a variety of form factors.

## Benefits

* **You can build apps and drivers on one platform and be sure they'll work on another**
* **It's fast to create new custom device designs**
* **Use existing apps and drivers that run on the Universal Windows model**
* **It's easier to work with a variety of device form factors**
* **You can test apps and drivers in a more stable environment**
* **Easier updates and resets**

### You can build apps and drivers on one platform and be sure they'll work on another

For previous Windows releases on new form factors, our designs required a great deal of device-specific code. You'd often have to modify apps and drivers and manage different servicing strategies for each device. When you develop apps and drivers for Windows Core devices, you can build and test them on one platform and be sure they'll work on another, and you'll be able to service them using the same methods.

Each [edition](editions.md) built on Windows Core includes its own composer to help you build apps and drivers that can navigate the UI differences when changes are required between the different form factors.

### It's fast to create new device designs

Once you've collected your apps, drivers, and settings, you can create new image designs, choosing the right apps, drivers, and languages for your target market using a single image configuration file and generating a flashable image, often within an hour.

### Use existing apps and drivers that run on the Universal Windows model

Windows Core devices support Universal Windows Apps and Universal Windows Drivers that follow the [DHCU design principles](https://docs.microsoft.com/windows-hardware/drivers/develop/getting-started-with-universal-drivers#design-principles). You can use these same apps and drivers on your Windows 10 PCs and devices.

Apps and drivers that don't meet the [Universal Windows standards](https://docs.microsoft.com/windows-hardware/drivers/develop/getting-started-with-universal-drivers) must be repackaged to meet these standards before they can be added to retail/production devices. 

### It's easier to work with a variety of device form factors

You can create new device types by adding different composers, apps, and optional components, allowing you to bring hardware and software together in new ways.

If you're using hardware from another manufacturer, that manufacturer may combine all of the drivers you'll need into a Board Support Package (BSP). If you're creating hardware for other OEMs to use, you can create BSPs for them to help them get running quickly.

### You can test apps and drivers in a more stable environment 

While testing pre-release versions of Windows, you can use [Factory Edition](factory-edition.md) to test hardware and drivers without booting the full OS, and without dealing with the troubleshooting often required on pre-release Windows versions.

### Faster and easier updates

Windows Dev Center provides a secure path for trusted partners to deliver updates to your devices. After updates are installed and have proven stable on the local device, they're included in recovery scenarios automatically.

This lets OEMs, ODMs, developers, and Microsoft work together to help deliver security and feature updates to your devices without stomping on each other's work.

Note, traditional Windows desktop recovery tools won't work on Windows Core.

### Increased security and faster resets

Windows Core protects key system areas using [state separation](state-separation.md), defining which system settings can and cannot be changed, and which of these should be preserved during a system reset. This helps increase security and makes updates and resets faster and cleaner.

## License requirements

Shipments of devices that use this operating system are subject to all license requirements.
