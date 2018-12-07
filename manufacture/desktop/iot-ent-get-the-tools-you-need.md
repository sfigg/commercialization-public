---
author: themar-msft
Description: Get the tools you need to create an IoT Enterprise image
title: Get the tools you need to customize Windows 10 IoT Enterprise
ms.author: themar
ms.date: 10/19/2018
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---


# Get the tools needed to customize Windows 10 IoT Enterprise 

## What is Windows 10 IoT Enterprise? 

Windows 10 IoT Enterprise is a full version of Windows 10 that delivers enterprise manageability and security to IoT solutions. Windows 10 IoT Enterprise shares all the benefits of the worldwide Windows ecosystem. It is a binary equivalent to Windows 10 Enterprise, so you can use the same familiar development and management tools as client PCs and laptops. However, when it comes to licensing and distribution, the desktop version and IoT versions differ. Note that Windows 10 IoT Enterprise offers both LTSC and SAC options, and OEMs can choose the one they need for their devices. 

## Getting started 

Before reaching out to an Embedded/IoT Distributor, we recommend working with a device that meets the [Windows 10 Hardware requirements](https://docs.microsoft.com/en-us/windows-hardware/design/minimum/minimum-hardware-requirements-overview). You can load your PC or recommended device with an evaluation copy of Windows 10 Enterprise in order to begin prototyping right away.  

In order to start your journey in manufacturing with Windows 10 IoT Enterprise, you'll need to reach out to a distributor from [this list](https://docs.microsoft.com/en-us/windows/iot-core/windows-iot-enterprise).  

## What you need to build IoT Enterprise images
 
You'll need the following tools to go through any of the labs in this section and create OEM images using the Windows 10 IoT Enterprise Operating System. 

## PCs and devices 

Here's how we'll refer to them: 

- Technician PC: Your work PC. This PC should have at least 15GB of free space for installing the software and for modifying IoT Enterprise images. We recommend using either Windows 10 or Windows 8.1 with the latest updates. The minimum requirement is Windows 7 SP1, though this may require additional tools or workarounds for tasks such as mounting .ISO images. 

    - Configure the technician PC so it has the following:
        - [Windows ADK](https://docs.microsoft.com/en-us/windows-hardware/get-started/adk-install) with Deployment Tools, Configuration Designer, and the Windows PE add-on installed
        - Windows 10 IoT Enterprise 2019 LTSC OPK
        - Feature on Demand ISO
        - Language Pack ISO

- IoT device: A test device or board that represents all of the devices in a single model line. Depending on the device you will most likely need a keyboard, mouse and a monitor. 
- A USB key that's at least 8GB in size and that can have all information removed from it


## Next steps

Now you have what you need to build a custom image. Lab 1a shows how to get started.

>[!div class="nextstepaction"]
>[Go to lab 1a](iot-ent-create-a-basic-image.md) 

 
 

