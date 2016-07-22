---
author: Justinha
Description: 'Lab 1g: Make changes from Windows (audit mode)'
ms.assetid: 142bc507-64db-43dd-8432-4a19af3c568c
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Lab 1g: Make changes from Windows (audit mode)'
---

# Lab 1g: Make changes from Windows (audit mode)

You can use audit mode to customize Windows using the familiar Windows environment. In audit mode, you can add Windows classic applications, change system settings, add data, and run scripts.  

We'll also show you how to generalize the image, which prepares the Windows files to be captured and applied to other devices.

## <span id="Step_1__Get_into_audit_mode"></span>Step 1: Get into audit mode

1.  Boot up the reference device, if it's not already booted.
2.  If the device boots to the **Languages** or the **Get going fast** screen, press **Ctrl+Shift+F3** to enter Audit mode.
3.  In audit mode, the device reboots to the Desktop, and the System Preparation Tool (Sysprep) appears. Ignore Sysprep for now.

## <span id="Install_a_Classic_Windows_application"></span><span id="install_a_classic_windows_application"></span><span id="INSTALL_A_CLASSIC_WINDOWS_APPLICATION"></span>Step 2: Customize the PC in audit mode.

-   Install a Classic Windows application. Change system settings. Add data. Run scripts.

## <span id="Capture_your_changes"></span>Step 3: Capture your changes

1.  Prepare the device for the end user: Right-click **Start**, select **Command Prompt (Admin)**, and from the command prompt, run the following command:

    ``` syntax
    C:\Windows\System32\Sysprep\sysprep /oobe /generalize /shutdown
    ```

    The Sysprep tool reseals the device. This process can take several minutes. After the process completes, the device shuts down automatically.

**Boot to Windows PE and prepare to capture**

1.  Plug in the lab USB key with Windows Preinstallation Environment (WinPE).
2.  Turn on the device and press the key that opens the boot-device selection menu for the device (for example, the **Esc** key or **Volume Up** key).

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

**Optimize the image to take up less drive space (optional)**

1.  Convert the Classic Windows application and files outside of the provisioning package into pointer files which reference the contents inside the provisioning package. This is known as single-instancing the image:

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

## <span id="Step_5__Capture_the_image"></span><span id="step_5__capture_the_image"></span><span id="STEP_5__CAPTURE_THE_IMAGE"></span>Step 5: Capture the image

-   Capture the image of the Windows partition, and then copy it to the external drive or share:

    ``` syntax
    dism /Capture-Image /CaptureDir:C:\ /ImageFile:"C:\WindowsWithFinalChanges.wim" /Name:"Final changes"
    ```

    where *C* is the drive letter of the Windows partition and *French and Classic Applications* is the image name.

    The DISM tool captures the Windows partition into a new image file. This process can take several minutes.

    **Troubleshooting**: If you receive an: "A parameter is incorrect" error message when you try to capture or copy the file to the USB key, the file might be too large for the destination file system. Copy the file to a different drive that is formatted as NTFS.

## <span id="Step_6__Apply_the_image_to_a_new_device__optional__to_be_done_in_the_factory_process_"></span><span id="step_6__apply_the_image_to_a_new_device__optional__to_be_done_in_the_factory_process_"></span><span id="STEP_6__APPLY_THE_IMAGE_TO_A_NEW_DEVICE__OPTIONAL__TO_BE_DONE_IN_THE_FACTORY_PROCESS_"></span>Step 6: Apply the image to a new device (optional, to be done in the factory process)

This represents the steps you'd use in the factory. For the purposes of the lab, reuse the reference device for this.

**Prepare a place to store your files**

1.  For this step, you'll need another USB key, or an external hard drive or network location that can handle large files.
    -   To format a separate USB key to accept large files: On your technician PC, go to File Explorer, right-click the drive and select **Format**. Select File system: **NTFS**, accept all other defaults, and click **OK**.

        Then, connect the USB key to the reference device.

    -   To use a network file share: On your reference device, map a drive. Example: **net use N: \\\\server\\share**.
    -   **Note**  You won't be able to use the WinPE key. To make WinPE bootable for both UEFI and BIOS-based systems, WinPE formats the key using the FAT32 file system, which has a 4GB limit. For other ways to get around this limit, see [Split a Windows image file (.wim) for FAT32 media or to span across multiple DVDs](http://go.microsoft.com/fwlink/?LinkId=526946).

2.  Copy C:\\WindowsWithFinalChanges.wim to the storage USB drive or network share.

Skip this step if the reference device is already booted to WinPE.

**Step 7: Apply the image to a new PC**
Use the steps from [Lab 1b: Deploy Windows using a script](deploy-windows-with-a-script-sxs.md) to copy the image to the storage USB drive, apply the Windows image, SPPs, and the recovery image, and boot it up. The short version:

1.  Boot the reference PC to Windows PE.
2.  Find the drive letter of the storage drive (`diskpart, list volume, exit`).
3.  Apply the image: `D:\ApplyImage.bat D:\Images\WindowsWithFinalChanges.wim`.
4.  Apply the SPPs. This example applies the Office base pack, plus two language packs: fr-fr and de-de.
    ```syntax
    D:\ADKTools\amd64\WimMountAdkSetupAmd64.exe /Install /q
    D:\ADKTools\amd64\DISM.exe /Apply-SiloedPackage /ImagePath:W:\ /PackagePath:"D:\SPPs\office16_base.spp" /PackagePath:"D:\SPPs\office16_fr-fr.spp" /PackagePath:"D:\SPPs\office16_de-de.spp"
	```
5. 	Apply the recovery image after applying the SPP:
	```syntax
	D:\ApplyRecovery.bat
	```
6.  Disconnect the drives, then reboot (`exit`).

	
**Step 8: Verify everything**
1.  After the PC boots, either create a new user account, or else press Ctrl+Shift+F3 to reboot into the built-in administrator account (This is also known as audit mode).
2.  See that the stuff you added in audit mode is there.


