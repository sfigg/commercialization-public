---
title: Build and deploy an image for Windows 10 Mobile
description: You can use Windows Imaging and Configuration Designer (ICD) to create a new Windows 10 Mobile image and customize it by adding settings and some assets.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: A16A9E0E-6F9E-4207-859A-5DA21854E4BD
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: msdn
---

# Build and deploy an image for Windows 10 Mobile

You can create a new Windows 10 Mobile image and customize it by adding settings and some assets.

This imaging method requires a pre-installed OS kit so you must have all the necessary Microsoft OS packages and feature manifest files in your default install path. A configuration data file (BSP.config.xml), which contains information about the hardware component packages for your board support package (BSP), is also required. For the BSP.config.xml file, you can:

-   Use the BSP.config.xml file you downloaded as part of the BSP kit, or,

-   Generate your own BSP.config.xml by running the BSP kit configuration tools from the SoC vendor and selecting your component drivers.

## <a href="" id="copypackages"></a>Copy the mobile OS packages and feature manifest files

The MobileOS-arm-fre.zip file contains the mobile OS packages that you need to build a Windows 10 Mobile image. Contact your Microsoft representative to obtain these packages. You must extract the packages and the feature manifest files to the kit install location. Once you've extracted all the files from the .zip, do the following:

-   Copy the MSPackages folder and all its contents to **C:\\Program Files (x86)\\Windows Kits\\10**.
-   Copy the FMFiles folder and all its contents to **C:\\Program Files (x86)\\Windows Kits\\10**.

If your host computer is a x86 computer instead of a x64 computer, copy these folders to **C:\\Program Files\\Windows Kits\\10** instead.

## <a href="" id="oemcerts"></a>Install the OEM certificates


## To deploy an image to a mobile device

1.  Boot your device into image or FFU download mode. To force your phone into image or FFU download mode manually, press and release the power button to reboot the phone and then immediately press and hold the volume up button. Note that this option is available only after an initial FFU has been flashed to the phone.

    If this doesn't work, check and follow the device flashing instructions provided by the SoC vendor.

2.  Using a USB cable, connect your phone to the host computer.

3.  Click **Deploy** from the main menu and choose either of the following:

    -   **To USB connected device** - Select to deploy an FFU image to a target device.

    -   **To removable drive** - Select to deploy an FFU image to a removable drive.

4.  In the **Select an FFU image** window, click **Browse...** to launch File Explorer and select the FFU that you want to flash to your target device or target disk, and then click **Next**.

5.  Choose the target device or drive from the list. If your device or drive is not listed, click **Refresh**.

6.  Click **Next** to start the image deployment process. Once the progress bar reaches 100%, you will see the status marked as completed.

7.  Click **Finish** to close the **Deployment** page.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_icd\p_icd%5D:%20Build%20and%20deploy%20an%20image%20for%20Windows%C2%A010%20Mobile%20%20RELEASE:%20%2811/17/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




