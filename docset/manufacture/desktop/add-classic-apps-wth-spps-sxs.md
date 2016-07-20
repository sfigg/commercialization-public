---
author: Justinha
Description: 'Lab 1f: Add classic Windows applications with siloed provisioning packages'
ms.assetid: 142bc507-64db-43dd-8432-4a19af3c568c
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Lab 1f: Add classic Windows applications with siloed provisioning packages'
---
# Lab 1f: Add classic Windows applications with siloed provisioning packages

Siloed provisioning packages (SPPs) are a new type of provisioning package that is available for Windows 10, version 1607. Where traditional provisioning packages can capture all classic Windows applications and settings that are installed with a Windows image, a siloed provisioning package can capture classic Windows applications individually, or capture add-ons for provisioning packages that were captured previously, or Windows settings. This provides more flexibility for the manufacturing process and helps reduce the time required to build PCs that run Windows.

We recommend that each time you capture a new app, you start with a clean, freshly-installed Windows image, in audit mode.
**Tip**: Virtual machines (VMs) can be a huge time-saver here. Rather than reinstalling Windows each time, with VMs, you can capture a snapshots of the PC at the freshly-installed state, allowing you to quickly revert back to the snapshot to install more classic Windows applications. 

## <span id="Step_1__Prepare_a_copy_of_ScanState"></span><span id="step_1__prepare_a_copy_of_scanstate"></span><span id="STEP_1__PREPARE_A_COPY_OF_SCANSTATE"></span>Step 1: Prepare a copy of ScanState

1.  On your technician PC, plug in the storage USB key or drive.
2.  In File Explorer, create a new folder on the USB key, for example: **D:\\ScanState\\x64**.
3.  Copy the files from **"C:\\Program Files (x86)\\Windows Kits\\10\\Assessment and Deployment Kit\\User State Migration Tool\\amd64"** into **D:\\ScanState\\x64**. You don't need to copy the subfolders.
4.  Copy the files from **"C:\\Program Files (x86)\\Windows Kits\\10\\Assessment and Deployment Kit\\Windows Setup\\amd64\\Sources"** into **D:\\ScanState\\x64**. There will be duplicate files, it's OK to skip copying these files. You don't need to copy the subfolders.

``` syntax
md C:\ScanState_amd64
xcopy /E "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\User State Migration Tool\amd64" D:\ScanState_x64
xcopy /E /Y "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Setup\amd64\Sources" D:\ScanState_x64
```

## <span id="Prepare_a_device_for_image_capture"></span><span id="prepare_a_device_for_image_capture"></span><span id="PREPARE_A_DEVICE_FOR_IMAGE_CAPTURE"></span>Step 2: Prepare a device for image capture

**Get into audit mode**

1.  Boot up the reference device (or VM), if it's not already booted.
2.  If the device boots to the **Languages** or the **Get going fast** screen, press **Ctrl+Shift+F3** to enter Audit mode.
3.  In audit mode, the device reboots to the Desktop, and the System Preparation Tool (Sysprep) appears. Ignore Sysprep for now.
4.  Optional: if you're using a VM, capture a snapshot.

## <span id="Step_3__Install_and capture_a_Classic_Windows_application"></span><span id="step_3__install_a_classic_windows_application"></span><span id="STEP_3__INSTALL_A_CLASSIC_WINDOWS_APPLICATION"></span>Step 3: Install and capture a Classic Windows application


1.  Install a Classic Windows application. For example, to install Office 2016, put in a USB key with the Office installation program, open File Explorer and navigate to **oemsetup.en-us.cmd**. To learn more, download the Office OPK Update image from the Office OPK Connect site.

2.  Capture the changes into the siloed provisioning package, and save it on the hard drive:

    ``` syntax
    D:\ScanState\x64\ScanState.exe /apps:-sysdrive /o /v:13 /config:D:\ScanState\x64\Config_AppsOnly.xml /ppkg e:\repository\office16_base.spp
    ```

    where *D* is the drive letter of the USB drive with ScanState.

    **Optional**: Delete the ScanState logfile: `del C:\Scanstate.log`.

3.  To capture an add-on package, repeat the process. 
    Example: add Office 2016 language packs. Get these from the Office OPK Update image from the Office OPK Connect site.
	
	1.  Optional: If you're using a VM, capture another snapshot.
	
    2.  Install the fr-fr language pack.
	
	3.  Capture the combined files as an add-on pack.
        ``` syntax
        ScanState.exe /apps:-sysdrive /o /v:13 /config:Config_AppsOnly.xml /diff:e:\repository\office16_base.spp /ppkg e:\repository\office16_fr-fr.spp
        ```

        The Sysprep tool reseals the device. This process can take several minutes. After the process completes, the device shuts down automatically.
	
	4. To capture more add-on packs:
       -  Reinstall Windows and the Office base app, and capture the next LP.
	      or
	   -  For VMs, revert back to the 2nd snapshot, then install the next LP and capture it.

4.  To capture more apps:
    -  Reinstall Windows, then capture the next app
	   or
	-  For VMs, revert back to the 1st snapshot, then capture the next app.

## <span id="Try_it_out"></span><span id="try_it_out"></span><span id="TRY_IT_OUT"></span>Step 4: Try it out
	
**Apply the image**
Use the steps from [Lab 1b: Deploy Windows using a script](deploy-windows-with-a-script-sxs.md) to copy the image to the storage USB drive, apply the image, and boot it up. The short version:

1.  Boot the reference PC to Windows PE.
2.  Find the drive letter of the storage drive (`diskpart, list volume, exit`).
3.  Apply the image:
    D:\ApplyImage.bat D:\Images\install-updated.wim

**Apply the SPP**
1.  Apply the SPPs. This example applies the Office base pack, plus two language packs: fr-fr and de-de.

    ```syntax
    DISM.exe /ImagePath:C:\ /Apply-SiloedPackage /PackagePath:e:\repository\office16_base.spp /PackagePath:e:\repository\office16_fr-fr.spp /PackagePath:e:\repository\office16_de-de.spp
	```

2. 	Apply the recovery image after applying the SPPs:
	```syntax
	D:\ApplyRecovery.bat
	```

3.  Disconnect the drives, then reboot (`exit`).
	
**Verify apps**
1.  After the PC boots, either create a new user account, or else press Ctrl+Shift+F3 to reboot into the built-in administrator account (This is also known as audit mode).
2.  See if your classic Windows applications and add-ons are installed.

Next step: [Lab 1g: Make changes from Windows (audit mode)](prepare-a-snapshot-of-the-pc-generalize-and-capture-windows-images-blue-sxs.md)