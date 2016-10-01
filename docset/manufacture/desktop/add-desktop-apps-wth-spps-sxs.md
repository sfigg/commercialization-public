---
author: Justinha
Description: 'Lab 1f: Add Windows desktop applications with siloed provisioning packages'
ms.assetid: 142bc507-64db-43dd-8432-4a19af3c568c
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Lab 1f: Add Windows desktop applications with siloed provisioning packages'
---
# Lab 1f: Add Windows desktop applications with siloed provisioning packages

Siloed provisioning packages (SPPs) are a new type of provisioning package that is available for Windows 10, version 1607. Where traditional provisioning packages can capture all Windows desktop applications and settings that are installed with a Windows image, a siloed provisioning package can capture Windows desktop applications individually, or capture add-ons for provisioning packages that were captured previously, or Windows settings. This provides more flexibility for the manufacturing process and helps reduce the time required to build PCs that run Windows. 

These packages are automatically included in the recovery tools. When you apply SPPs to a Compact OS system, the applications in that SPP are single-instanced automatically to save space.

We recommend that each time you capture a new Windows desktop application, you start with a clean, freshly-installed Windows image, in audit mode. 

### Tip: Use Virtual machines (VMs)
VMs can be a huge time-saver when capturing multiple classic applications.  Rather than reinstalling each time, use checkpoints to quickly bounce back to the clean, freshly-reinstalled state. We con't cover the steps in this lab, but here's the general steps:

1.  Create a VM with a new Windows image, and boot it into audit mode.
	
2.  Create a checkpoint.

3.  Install a Windows desktop application, then capture it as an SPP.
	
4.  Revert to the checkpoint and repeat to capture more Windows desktop applications.

## <span id="Prepare_a_copy_of_the_Deployment_and_Imaging_Tools"></span><span id="prepare_a_copy_of_the_deployment_and_imaging Tools"></span><span id="PREPARE_A_COPY_OF_THE_DEPLOYMENT_AND_IMAGING_TOOLS"></span>Step 1: Prepare a copy of the Deployment and Imaging Tools

You'll need the Windows 10, version 1607 version of the Deployment and Imaging Tools from the ADK. This includes the ScanState tool and the latest version of DISM.

**Important**   Don't overwrite the existing DISM files on the WinPE image.

1.  Start the Deployment and Imaging Tools Environment as an administrator.

2.  From the technician PC, copy the Deployment and Imaging Tools from the Windows ADK to the storage USB key.

    ``` syntax
    CopyDandI.cmd amd64 E:\ADKTools\amd64
	```

## <span id="Prepare_a_device_for_image_capture"></span><span id="prepare_a_device_for_image_capture"></span><span id="PREPARE_A_DEVICE_FOR_IMAGE_CAPTURE"></span>Step 2: Prepare a device for image capture

**Get into audit mode**

1.  Boot up the reference device (or VM), if it's not already booted.

2.  If the device boots to the **Languages** or the **Get going fast** screen, press **Ctrl+Shift+F3** to enter Audit mode.

3.  In audit mode, the device reboots to the Desktop, and the System Preparation Tool (Sysprep) appears. Ignore Sysprep for now.

## <span id="Install_and capture_a_Classic_Windows_application"></span><span id="install_a_windows_desktop_application"></span><span id="INSTALL_A_WINDOWS_DESKTOP_APPLICATION"></span>Step 3: Install and capture a Windows desktop application

1.  Optional: if you're using a VM, capture a checkpoint.

2.  Install a Windows desktop application. For example, to install Office 2016, put in a USB key with the Office installation program, open File Explorer and navigate to **oemsetup.en-us.cmd**. To learn more, download the Office OPK Update image from the Office OPK Connect site.

3.  Start a command prompt.

4.  Capture the changes into the siloed provisioning package, and save it on the hard drive:

    ``` syntax
    E:\ADKTools\amd64\ScanState.exe /apps:-sysdrive /o /v:13 /config:E:\ADKTools\amd64\Config_AppsOnly.xml /ppkg e:\SPPs\office16_base.spp
    ```

    where *E* is the drive letter of the USB drive with ScanState.

    **Optional**: Delete the ScanState logfile: `del C:\Scanstate.log`.

5.  To capture an add-on package, repeat the process. 
    Example: add Office 2016 language packs. Get these from the Office OPK Update image from the Office OPK Connect site.
	
	1.  Optional: If you're using a VM, capture a 2nd checkpoint.
	
    2.  Install the fr-fr language pack.
	
	3.  Capture the combined files as an add-on pack.
        ``` syntax
        E:\ADKTools\amd64\ScanState.exe /apps:-sysdrive /o /v:13 /config:E:\ADKTools\amd64\Config_AppsOnly.xml /diff:e:\SPPs\office16_base.spp /ppkg E:\SPPs\office16_fr-fr.spp
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

## <span id="Try_it_out"></span><span id="try_it_out"></span><span id="TRY_IT_OUT"></span>Step 4: Try it out
	
**Apply the image**

Use the steps from [Lab 1b: Deploy Windows using a script](deploy-windows-with-a-script-sxs.md) to copy the image to the storage USB drive, apply the image, and boot it up. The short version:

1.  Boot the reference PC to Windows PE.

2.  Find the drive letter of the storage drive (`diskpart, list volume, exit`).

3.  Apply the image: `D:\ApplyImage.bat D:\Images\install-updated.wim`.

**Apply the SPP**
1.  Copy the ADK tools to a non-removable file location, such as the primary hard drive, which is assigned to W after the ApplyImage command. 
    Copying the file to a non-removable location avoids an error associated with installing DISM from removable drives.
    ``` syntax
    xcopy D:\ADKTools\ W:\ADKTools\ /s
    ```

2.  Install the ADK Tools by using either **WimMountAdkSetupAmd64.exe /Install /q** or **WimMountAdkSetupX86.exe /Install /q**.

    ``` syntax
    W:\ADKTools\amd64\WimMountAdkSetupAmd64.exe /Install /q
    ```

3.  Apply the SPPs. This example applies the Office base pack, plus two language packs: fr-fr and de-de.
    
    ```syntax
    W:\ADKTools\amd64\DISM.exe /Apply-SiloedPackage /ImagePath:W:\ /PackagePath:"D:\SPPs\office16_base.spp" /PackagePath:"D:\SPPs\office16_fr-fr.spp" /PackagePath:"D:\SPPs\office16_de-de.spp"
	```
    To learn more, see [Siloed provisioning packages](siloed-provisioning-packages.md). For syntax, see [DISM Image Management Command-Line Options](dism-image-management-command-line-options-s14.md). 


4. 	Apply the recovery image after applying the SPPs:
	```syntax
	D:\ApplyRecovery.bat
	```

5.  Disconnect the drives, then reboot (`exit`).
	
**Verify apps**

1.  After the PC boots, either create a new user account, or else press Ctrl+Shift+F3 to reboot into the built-in administrator account (This is also known as audit mode).

2.  See if your Windows desktop applications and add-ons are installed.

Next step: [Lab 1g: Make changes from Windows (audit mode)](prepare-a-snapshot-of-the-pc-generalize-and-capture-windows-images-blue-sxs.md)