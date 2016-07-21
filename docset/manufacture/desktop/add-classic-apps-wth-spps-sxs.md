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
**Tip**: Virtual machines (VMs) can be a huge time-saver here. Rather than reinstalling Windows each time, with VMs, you can capture checkpoints of the PC at the freshly-installed state, allowing you to quickly revert back to the checkpoint to install more classic Windows applications. 

## <span id="Prepare_a_copy_of_ScanState"></span><span id="prepare_a_copy_of_scanstate"></span><span id="PREPARE_A_COPY_OF_SCANSTATE"></span>Step 1: Prepare a copy of ScanState

1.  On your technician PC, plug in the storage USB key or drive.
2.  In File Explorer, create a new folder on the USB key, for example: **D:\\ScanState\\amd64**.
3.  Copy the files from the Windows ADK. When copying, there will be duplicate files, it's OK to skip copying these files. You don't need to copy the subfolders.

    ``` syntax
    md D:\ScanState\amd64
    xcopy /E "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\User State Migration Tool\amd64" D:\ScanState\amd64
    xcopy /E /Y "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Setup\amd64\Sources"  D:\ScanState\amd64
    ```

## <span id="Prepare_a_copy_of_the_Deployment_and_Imaging_Tools"></span><span id="step_1__prepare_a_copy_of_the_deployment_and_imaging Tools"></span><span id="PREPARE_A_COPY_OF_THE_DEPLOYMENT_AND_IMAGING_TOOLS"></span>Step 2: Prepare a copy of the Deployment and Imaging Tools

You'll need the Windows 10, version 1607 version of the Deployment and Imaging Tools from the ADK. As of Windows 10, version 1607, the full set of tools don't get installed with Windows PE, so you'll need to add them to the storage drive and run it from there.

**Important**   Don't overwrite the existing DISM files on the WinPE image.

1.  Copy the Deployment and Imaging Tools from the Windows ADK to the storage USB key.

    ``` syntax
    CopyDandI.cmd amd64 E:\ADKTools\
	```

## <span id="Prepare_a_device_for_image_capture"></span><span id="prepare_a_device_for_image_capture"></span><span id="PREPARE_A_DEVICE_FOR_IMAGE_CAPTURE"></span>Step 3: Prepare a device for image capture

**Get into audit mode**

1.  Boot up the reference device (or VM), if it's not already booted.
2.  If the device boots to the **Languages** or the **Get going fast** screen, press **Ctrl+Shift+F3** to enter Audit mode.
3.  In audit mode, the device reboots to the Desktop, and the System Preparation Tool (Sysprep) appears. Ignore Sysprep for now.

## <span id="Install_and capture_a_Classic_Windows_application"></span><span id="install_a_classic_windows_application"></span><span id="INSTALL_A_CLASSIC_WINDOWS_APPLICATION"></span>Step 4: Install and capture a Classic Windows application

1.  Optional: if you're using a VM, capture a checkpoint.

2.  Install a Classic Windows application. For example, to install Office 2016, put in a USB key with the Office installation program, open File Explorer and navigate to **oemsetup.en-us.cmd**. To learn more, download the Office OPK Update image from the Office OPK Connect site.

3.  Start a command prompt.

4.  Capture the changes into the siloed provisioning package, and save it on the hard drive:

    ``` syntax
    E:\ScanState\amd64\ScanState.exe /apps:-sysdrive /o /v:13 /config:E:\ScanState\amd64\Config_AppsOnly.xml /ppkg e:\SPPs\office16_base.spp
    ```

    where *E* is the drive letter of the USB drive with ScanState.

    **Optional**: Delete the ScanState logfile: `del C:\Scanstate.log`.

5.  To capture an add-on package, repeat the process. 
    Example: add Office 2016 language packs. Get these from the Office OPK Update image from the Office OPK Connect site.
	
	1.  Optional: If you're using a VM, capture a 2nd checkpoint.
	
    2.  Install the fr-fr language pack.
	
	3.  Capture the combined files as an add-on pack.
        ``` syntax
        E:\ScanState\amd64\ScanState.exe /apps:-sysdrive /o /v:13 /config:E:\ScanState\amd64\Config_AppsOnly.xml /diff:e:\SPPs\office16_base.spp /ppkg E:\SPPs\office16_fr-fr.spp
        ```

        The Sysprep tool reseals the device. This process can take several minutes. After the process completes, the device shuts down automatically.
	
	4. To capture more add-on packs:
       -  Reinstall Windows and the Office base app, and capture the next LP.
	      or
	   -  For VMs, revert back to the 2nd checkpoint, then install the next LP and capture it.

6.  To capture more apps:
    -  Reinstall Windows, then capture the next app
	   or
	-  For VMs, revert back to the 1st checkpoint, then capture the next app.

## <span id="Try_it_out"></span><span id="try_it_out"></span><span id="TRY_IT_OUT"></span>Step 5: Try it out
	
**Apply the image**

Use the steps from [Lab 1b: Deploy Windows using a script](deploy-windows-with-a-script-sxs.md) to copy the image to the storage USB drive, apply the image, and boot it up. The short version:

1.  Boot the reference PC to Windows PE.
2.  Find the drive letter of the storage drive (`diskpart, list volume, exit`).
3.  Apply the image:
    D:\ApplyImage.bat D:\Images\install-updated.wim

**Apply the SPP**
1.  Install the Deployment and Imaging Tools  by using either **WimMountAdkSetupAmd64.exe /Install** or **WimMountAdkSetupX86.exe /Install**.

    ``` syntax
    D:\ADKTools\amd64\WimMountAdkSetupAmd64.exe /Install /q
    ```

2.  Apply the SPPs. This example applies the Office base pack, plus two language packs: fr-fr and de-de.
    
    ```syntax
    D:\ADKTools\amd64\DISM.exe /Apply-SiloedPackage /ImagePath:W:\ /PackagePath:"D:\SPPs\office16_base.spp" /PackagePath:"D:\SPPs\office16_fr-fr.spp" /PackagePath:"D:\SPPs\office16_de-de.spp"
	```

3. 	Apply the recovery image after applying the SPPs:
	```syntax
	D:\ApplyRecovery.bat
	```

4.  Disconnect the drives, then reboot (`exit`).
	
**Verify apps**
1.  After the PC boots, either create a new user account, or else press Ctrl+Shift+F3 to reboot into the built-in administrator account (This is also known as audit mode).
2.  See if your classic Windows applications and add-ons are installed.

Next step: [Lab 1g: Make changes from Windows (audit mode)](prepare-a-snapshot-of-the-pc-generalize-and-capture-windows-images-blue-sxs.md)