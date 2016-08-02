---
author: kpacquer
Description: 'Deploy Windows using a script'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Lab 1b: Deploy Windows using a script'
---

# Lab 1b: Deploy Windows using a script

You can use scripts to take a Windows image and deploy Windows onto new PCs quickly. You can modify these scripts to change the size of the drive partitions, or to completely automate deployment. 

## <span id="Copy_the_base_image"></span>Step 1: Copy the base Windows image file to the Storage USB drive

1.  From your technician PC, copy the main Windows image file to your USB storage drive:

    ``` syntax
    copy D:\sources\install.wim file E:\images\install.wim.
	```
	
	where D: is the drive from the Windows ISO and E: is the USB storage drive. 

2.  Copy the [sample scripts](windows-deployment-sample-scripts-sxs.md) to the root of the USB storage drive.

## <span id="Apply_the_image"></span>Step 2: Apply the Windows image using a script

Use deployment scripts to apply the image onto a test device. These scripts set up the hard drive partitions and add the files from the Windows image to the partitions.

    You can use the [sample scripts](windows-deployment-sample-scripts-sxs.md) for different device firmware types (the newer UEFI-based BIOS, or the legacy BIOS). Some UEFI-based devices include support for the older legacy BIOS. For more info, see [UEFI Firmware](http://go.microsoft.com/fwlink/?LinkId=526945).

    ![Image shows that to create a reference computer with customizations, you need a new PC, an image file, and a deployment script.](images/dep-win8-sxs-createdeploymentscript.jpg)

1.  [Boot the reference device to Windows PE using the Windows PE USB key](install-windows-pe-sxs.md).

2.  Take out the Windows PE USB key and put in the Storage USB key.
	
3.  Find the drive letters of the USB key by using diskpart:

    ``` syntax
    diskpart
    DISKPART> list volume
    DISKPART> exit
    ```

    For example, the drives can be lettered like this: C = Windows; D = USB storage drive.

4.  Format the primary hard drive, create the partitions, and apply the image by using the pre-made [sample scripts](windows-deployment-sample-scripts-sxs.md). 

The script **ApplyImage.bat** uses the diskpart scripts: CreatePartitions-UEFI.txt and CreatePartitions-BIOS.txt to create the partitions and define the partition layout. These scripts must be placed in the same folder. You can update these scripts to change the partition sizes.

    ``` syntax
    D:
    D:\ApplyImage.bat D:\Images\install.wim
    ```

    When prompted by the script: 
    
    1.  Press Y to format the drive.
    2.  Press Y to select Compact OS, or N to select a non-compacted OS:
        -   **Y**: Applies the image using Compact OS. This is best for devices with solid-state drives and drives with limited free space. Use this for hardware configuration 1 and 2.
        -   **N**: Applies the image as a fully-uncompressed image. This is best for high-performance devices or devices that use traditional hard drives with rotational media. Use this for hardware configuration 3.
    3.  Press N to indicate the image does not include extended attributes (EA).

    The scripts apply the image to the drive, and then finishes.

	
## <span id="Apply_desktop_applications"></span>Step 3: Apply desktop applications

**Skip this step** until you've completed [Lab 1f: Add Windows desktop applications with siloed provisioning packages (SPP)](add-desktop-apps-wth-spps-sxs.md). This step adds Windows desktop applications to your images. This must be done before adding the recovery image.

1.  Apply desktop applications.
    ```syntax
    D:\ADKTools\amd64\WimMountAdkSetupAmd64.exe /Install /q
    D:\ADKTools\amd64\DISM.exe /ImagePath:C:\ /Apply-SiloedPackage /PackagePath:E:\SPPs\office16_base.spp /PackagePath:E:\SPPs\office16_fr-fr.spp /PackagePath:E:\SPPs\office16_de-de.spp
	```

## <span id="Apply_the_recovery_image"></span>Step 4: Set up the system recovery tools

Apply the Windows Recovery Environment (Windows RE) image. These tools help repair common causes of unbootable operating systems. The image is stored in a separate drive partition. The script **ApplyRecovery.bat** uses the diskpart scripts: HidePartitions-UEFI.txt and HidePartitions-BIOS.txt to set up this partition. These scripts must be placed in the same folder as ApplyRecovery.bat.

	```syntax
	D:\ApplyRecovery.bat
	```

## <span id="Reboot"></span>Step 5: Reboot

Disconnect the drives, then reboot (`exit`).

The PC should reboot into Windows. While you’re waiting for the preparation phase to complete, go back to your technician PC and continue with the lab.

**Troubleshooting**: If the device does not boot, turn on the device, and press the key that opens the boot-device selection menu (for example, the **Esc** key). Select the hard drive as your boot device, and continue.

**Optional: Test the recovery image**
1.  Complete the first logon experience like a regular user.
2.  Select **Start** &gt; **Settings** &gt; **Update & security** &gt; **Recovery** &gt; under **Reset this PC**, click **Get started** > **Remove everything** > ** Just remove my files** > **Next**.
3.  After Windows completes the reset,  Windows should go back to the original welcome screens as if there were no user account on the device.

## <span id="Whats_next"></span>What's next

The next labs show you how to customize the images. You can do them in any order.
*  [Lab 1c: Add drivers, updates and upgrade the edition](servicing-the-image-with-windows-updates-sxs.md)
*  [Lab 1d: Add boot-critical drivers, languages, and universal Windows apps](add-drivers-langs-universal-apps-sxs.md)
*  [Lab 1e: Change settings and run scripts with an answer file](update-windows-settings-and-scripts-create-your-own-answer-file-sxs.md)
*  [Lab 1f: Add Windows desktop applications with siloed provisioning packages](add-desktop-apps-wth-spps-sxs.md)
*  [Lab 1g: Make changes from Windows (audit mode)](prepare-a-snapshot-of-the-pc-generalize-and-capture-windows-images-blue-sxs.md)
