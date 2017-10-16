---
author: Justinha
Description: Install Windows from a USB Flash Drive
ms.assetid: b1ed80f1-cc1d-4eeb-9d5e-22c615479e1d
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Install Windows from a USB Flash Drive
ms.author: themar
ms.date: 08/13/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Install Windows from a USB Flash Drive


You can install Windows on a device without a DVD drive by using a USB flash drive. 

> [!Note]
> If you are looking for a tool that downloads Windows 10 and creates a bootable Windows installation USB drive, see [Download Windows 10](https://www.microsoft.com/en-us/software-download/windows10).

This topic covers how to create a bootable Windows installation USB drive from a Windows 10 install .iso or DVD.

## What you need

> [!div class="checklist"]
> * Windows 10 install .iso or DVD
> * USB flash drive with at least 5GB free space. This drive will be formatted, so make sure it doesn't have any important files on it.
> * Technician PC - Windows PC that you'll use to format the USB flash drive
> * Destination PC - A PC that you'll install Windows on

### Step 1 - Format the drive and set the primary partition as active

1.  Connect the USB flash drive to your technician PC.

2.  Open Disk Management: Right-click on **Start** and choose **Disk management**.

3.  Format the partition: Right-click the USB drive partition and choose **Format**. Select the **FAT32** file system to be able to boot either BIOS-based or UEFI-based PCs. The default install.wim is smaller than the 4 GB file size limit of FAT32.

4.  Set the partition as active: Right-click the USB drive partition and click **Mark Partition as Active**.

### Step 2 - Copy Windows Setup to the USB flash drive

1.  Use File Explorer to copy and paste the entire contents of the Windows product DVD to the USB flash drive.

2.  Optional: add an Unattend file or a configuration set to automate the installation process. For more information, see [Automate Windows Setup](windows-setup-automation-overview.md).

### Step 3 - Install Windows to the new PC

1.  Connect the USB flash drive to a new PC.

2.  Turn on the PC and press the key that opens the boot-device selection menu for the computer, such as the Esc/F10/F12 keys. Select the option that boots the PC from the USB flash drive.

    Windows Setup starts. Follow the instructions to install Windows.

3.  Remove the USB flash drive.

## <span id="related_topics"></span>Related topics


[Windows Setup Technical Reference](windows-setup-technical-reference.md)

 

 






