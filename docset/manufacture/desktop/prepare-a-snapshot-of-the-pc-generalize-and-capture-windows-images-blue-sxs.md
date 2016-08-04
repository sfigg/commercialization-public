---
author: kpacquer
Description: 'Lab 1g: Make changes from Windows (audit mode)'
ms.assetid: 142bc507-64db-43dd-8432-4a19af3c568c
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Lab 1g: Make changes from Windows (audit mode)'
---

# Lab 1g: Make changes from Windows (audit mode)

You can use audit mode to customize Windows using the familiar Windows environment. In audit mode, you can add Windows desktop applications, change system settings, add data, and run scripts.  

To make sure your audit mode changes are included in the recovery image, you'll neeed to capture these changes into a provisioning package using ScanState. This image gets used by the system recovery tools to restore your changes if things go wrong. You can optionally save drive space by running the applications directly from the compressed recovery files; this is known as single-instancing.

If you want to capture the changes in an image and apply it to other devices, you'll need to use the Sysprep tool to generalize the image.


## <span id="Prepare_a_copy_of_the_Deployment_and_Imaging_Tools"></span><span id="prepare_a_copy_of_the_deployment_and_imaging Tools"></span><span id="PREPARE_A_COPY_OF_THE_DEPLOYMENT_AND_IMAGING_TOOLS"></span>Step 1: Prepare a copy of the Deployment and Imaging Tools

You'll need the Windows 10, version 1607 version of the Deployment and Imaging Tools from the ADK. This includes the ScanState tool and the latest version of DISM.

**Important**   Don't overwrite the existing DISM files on the WinPE image.

1.  From the technician PC, copy the Deployment and Imaging Tools from the Windows ADK to external storage (for example, a storage USB key with drive letter D:).

    ``` syntax
    CopyDandI.cmd amd64 D:\ADKTools\amd64
	```
	
## <span id="Get_into_audit_mode"></span>Step 2: Get into audit mode

1.  Boot up the reference device, if it's not already booted.

2.  If the device boots to the **Languages** or the **Get going fast** screen, press **Ctrl+Shift+F3** to enter Audit mode.

3.  In audit mode, the device reboots to the Desktop, and the System Preparation Tool (Sysprep) appears. Ignore Sysprep for now.

## <span id="Customize_the_PC"></span>Step 3: Customize the PC in audit mode.

-   Install a Windows desktop application. Change system settings. Add data. Run scripts.

## <span id="Capture_your_changes"></span>Step 4: Capture your changes for the recovery tools

1.  Connect to your external storage (for example, a storage USB key with the drive letter D:)

2.  Capture the changes into a provisioning package. This creates a compressed copy of the desktop applications and drivers that you added in audit mode that can be used by the recovery tools.

    ``` syntax
    D:\ADKTools\amd64\scanstate.exe /apps /ppkg C:\Recovery\Customizations\usmt.ppkg /o /c /v:13 /l:C:\Recovery\ScanState.log
    ```

    **Note**  Optional: Delete the ScanState logfile: `del C:\Recovery\Scanstate.log`.

## <span id="Prepare_for_image_capture"></span>Step 5: Prepare for image capture

This step is required when you're capturing images to apply to other PCs.
	
1.  Prepare the device for the end user: Right-click **Start**, select **Command Prompt (Admin)**, and from the command prompt, run the following command:

    ``` syntax
    C:\Windows\System32\Sysprep\sysprep /oobe /generalize /shutdown
    ```

    The Sysprep tool reseals the device. This process can take several minutes. After the process completes, the device shuts down automatically.

2.  Boot the device into Windows PE. To do this, you may need to press the key that opens the boot-device selection menu for the device (for example, the **Esc** key or **Volume Up** key).

    Select the option in the firmware menus to boot to the USB flash drive.

    **Warning**   If Windows begins booting instead of Windows PE, you must generalize the device again before capturing the image: After Windows boots, press **Ctrl+Shift+F3** to enter audit mode. The device will reboot. Generalize the device again: `C:\Windows\System32\Sysprep\sysprep /oobe /generalize /shutdown`.

3.  Optional: speed up the optimization and image capture processes by setting the power scheme to High performance:

    ``` syntax
    powercfg /s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
    ```

4.  Find the drive letters by using DiskPart:

    ``` syntax
    diskpart
    DISKPART> list volume
    DISKPART> exit
    ```

    For example, the drives can be lettered like this: *C* = Windows; *D* is the lab USB key, and *E* is an external hard drive.

    Note that some partitions might not receive a drive letter.

## <span id="Optimize_the_image"></span>Step 6: Optimize the image to take up less drive space (optional)

1.  Save space by single-instancing the image. This removes the original copy of the desktop applications, and adds pointer files so that these applications can run from the recovery provisioning package you created earlier.

    ``` syntax
    DISM /Apply-CustomDataImage /CustomDataImage:C:\Recovery\Customizations\USMT.ppkg /ImagePath:C:\ /SingleInstance
    ```

    where *C* is the drive letter of the Windows partition.

    **Warning**  Do not put quotes with the /ImagePath:C:\\ option.

2.  Cleanup the Windows files:

    ``` syntax
    md temp

    DISM /Cleanup-Image /Image=C:\ /StartComponentCleanup /ResetBase /ScratchDir:C:\Temp
    ```

    where *C* is the drive letter of the Windows partition. Beginning with Windows 10, version 1607, you can specify the /Defer parameter with /Resetbase to defer any long-running cleanup operations to the next automatic maintenance. But we highly recommend you **only** use /Defer as an option in the factory where DISM /Resetbase requires more than 30 minutes to complete.

### <span id="Capture_the_image"></span><span id="capture_the_image"></span><span id="CAPTURE_THE_IMAGE"></span>Step 7: Capture the image

-   Capture the image of the Windows partition.

    ``` syntax
    dism /Capture-Image /CaptureDir:C:\ /ImageFile:"C:\WindowsWithFinalChanges.wim" /Name:"Final changes"
    ```

    where *C* is the drive letter of the Windows partition and *French and Desktop Applications* is the image name.

    The DISM tool captures the Windows partition into a new image file. This process can take several minutes.

    **Troubleshooting**: If you receive an: "A parameter is incorrect" error message when you try to capture or copy the file to the USB key, the file might be too large for the destination file system. Copy the file to a different drive that is formatted as NTFS.

	2.  Copy the image to a network share. Example: 
    ```syntax
	net use N: \\server\share
	copy C:\WindowsWithFinalChanges.wim N:\Images\WindowsWithFinalChanges.wim
	```

## <span id="Apply_the_image_to_a_new_device"></span><span id="apply_the_image_to_a_new_device"></span><span id="APPLY_THE_IMAGE_TO_A_NEW_DEVICE"></span>Step 8: Apply the image to a new device (optional, to be done in the factory process)

This represents the steps you'd use in the factory. For the purposes of the lab, reuse the reference device for this.

Use the steps from [Lab 1b: Deploy Windows using a script](deploy-windows-with-a-script-sxs.md) to copy the image to the storage USB drive, apply the Windows image, SPPs, and the recovery image, and boot it up. The short version:

1.  Boot the reference PC to Windows PE.

2.  Find the drive letter of the storage drive (`diskpart, list volume, exit`) or connect to a network drive (`net use D: \\server\share`).

3.  Apply the image: `D:\ApplyImage.bat D:\Images\WindowsWithFinalChanges.wim`.

4.  Apply the SPPs. This example applies the Microsoft Office base pack, plus two Microsoft Office language packs: fr-fr and de-de.
    
	```syntax
    D:\ADKTools\amd64\WimMountAdkSetupAmd64.exe /Install /q
    D:\ADKTools\amd64\DISM.exe /Apply-SiloedPackage /ImagePath:W:\ /PackagePath:"D:\SPPs\office16_base.spp" /PackagePath:"D:\SPPs\office16_fr-fr.spp" /PackagePath:"D:\SPPs\office16_de-de.spp"
	```

5. 	Apply the recovery image after applying the SPP:

	```syntax
	D:\ApplyRecovery.bat
	```
	
6.  Disconnect the drives, then reboot (`exit`).
	
## <span id="Verify_everything"></span>Step 9: Verify everything

1.  After the PC boots, either create a new user account, or else press Ctrl+Shift+F3 to reboot into the built-in administrator account (This is also known as audit mode).

2.  See that the changes you made in audit mode are there.
