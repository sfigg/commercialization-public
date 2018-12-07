---
author: themar-msft
Description: Create a basic image that you can further customize
title: Create a basic Iot Enterprise image
ms.author: themar
ms.date: 10/19/2018
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---


# Lab 1a: Create a basic image

To get started, we'll walk through installing a basic Windows 10 IoT Enterprise image onto a device. This ensures that everything's working before we move on to adding customizations. This lab is a prerequisite  for completing all of the other labs in this section, as the other labs build on this first basic image.

## What you need to complete this series of labs

See [Get the tools you need to create an IoT Enterprise image](iot-ent-get-the-tools-you-need.md) and make sure you have everything you need. Once you have everything, you can move on to the next section.

## Create your basic image

### Install Windows onto a reference device

This section covers how to create bootable USB Windows installation media, and then install it onto a device so it's ready to be customized.

#### Create a bootable USB key

The typical way to install Windows is to create a bootable USB key, and then copy the Windows installation files onto the USB key. Once you have the files on the USB key, you can insert it into the IoT device and boot from the USB key. See [Install Windows from a USB flash drive](install-windows-from-a-usb-flash-drive.md) to learn more. 

Here's how to prepare the installation USB key: 

1. Insert a USB key into your Technician PC 
2. Open an Administrative Command Prompt and run diskpart: 
    
    ```cmd
    diskpart
    ```

3. Use diskpart to list the disks so you can identify the USB drive:
    
    ```cmd
    list disk
    ```
    
    You should see something like the following:

    ```
    Disk ###  Status         Size     Free     Dyn  Gpt
    --------  -------------  -------  -------  ---  ---
    Disk 0    Online          238 GB      0 B        *
    Disk 1    Online          3822 MB     0 B      
    ```
    
    In this example Disk 1 is our USB drive, because the size represents the size of the USB drive that we're using.

4. When you've identified the disk number of your USB drive, use diskpart to prepare the drive so you can use it as a bootable installation drive:
    
    >[!Warning]
    >The following commands will erase everything on the USB drive.

    Enter the following commands from within Diskpart, where Disk 1 is the USB drive:

    ```diskpart
    Select disk 1
    clean
    create partition primary
    select partition 1
    active
    Format fs=fat32 quick
    assign
    exit
    ```

5. Copy the entire contents of the Windows 10 IoT Enterprise 2019 LTSC ISO or DVD onto the root of the USB drive. You can use File explorer to manually copy the files.  

#### Install Windows from the USB drive onto your IoT device and boot into Audit mode

This section covers how to use the Windows installation USB key to install Windows onto your IoT device using Windows Setup. 

We recommend not having your device connected to any network during Windows Setup. Network connectivity could cause it to come out of the deferred activation state.  

##### Boot the device to Windows Setup
1. Move the USB key from the Technician PC to the powered down IoT device. 
2. Turn on your IoT device and enter the device's boot menu. Your device will have a specific button combination or keyboard key to press to get to the boot menu. If you don't know how to get to your device's boot menu, consult your hardware documentation.  
3. From the boot menu select the USB key to boot from. Your device will boot from the USB key and enter into the Windows Setup.

##### Install Windows with Windows Setup
1. Step through the Windows Setup menus, providing the requested information. Choose the settings, such as language, time and currency, and keyboard options that apply to your device and click to the next screen.
2. On the "Install now" screen click on **Install now**.
3. On the Activate Windows screen insert a valid product key. If you don't have a valid product key select "I don't have a product key".  
4. On the Application notices and license terms screen, if the terms are acceptable check the checkbox that you accept the license terms and then click **Next**.  
5. On the "Which type of installation do you want" screen, select **Custom: Install Windows only**. This starts a clean installation 
6. In the "Where do you want to install Windows?" screen, if the device has existing partitions, we recommend deleting the partitions so you have a single block on unallocated space to start from, then click **Next** to start the installation.
7. While the Operating System is being installed the device may restart a couple of time. Wait until the IoT device has entered OOBE (Out Of Box Experience) and is showing a screen that says "Let's start with region. Is this right?".

##### Enter Audit Mode
1. From the first OOBE screen, use the **CTRL+SHIFT+F3** combination on your keyboard to enter Audit mode. 
2. Your device should restart in Audit mode. You'll know you're in Audit mode when you see a System Preparation Tool window. click **Cancel** on the System Preparation Tool to close it.
3. Every time you reboot the system you will see the System Preperation Tool, also called Sysprep.  In a future lab you will be invoking the Sysprep utility to get the system out of Audit mode. Refer to lab 1b for more information on Audit mode.

## Next steps

Windows is installed on your reference device and you have a basic image that's ready to be customized. In lab 1b, we'll take the basic image and use Audit mode to customize it.

>[!div class="nextstepaction"]
>[Go to lab 1b](iot-ent-customize-the-reference-device-in-audit-mode.md)