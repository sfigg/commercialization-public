---
author: KPacquer
Description: 'Add updates, and upgrade the edition.'
ms.assetid: 9a8f525c-bb8f-492c-a555-0b512e44bcd1
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Lab 4: Add updates and upgrade the edition'
---

# Lab 4: Add updates and upgrade the edition

For many customizations, like adding .inf-style drivers, Windows updates or upgrading the edition, you can mount and edit the Windows image. Mounting an image maps the contents of a file to a temporary location where you can edit the files or use DISM to perform common deployment tasks.

**Notes** 

* Add updates before adding languages. If you've already added languages to your image, then after adding the update, go back and [add your language again](add-drivers-langs-universal-apps-sxs.md).

-  **For major updates, update the recovery image too**: These may include hotfixes, general distribution releases, service packs, or other pre-release updates. We'll show you how to update these later in [Lab 9: Update the recovery image](update-the-recovery-image.md).

![image: copying image files and deployment scripts](images/dep-win8-sxs-createmodelspecificfiles.jpg)

Note: To add drivers that include an installation package, see [Lab 11: Add desktop applications and .exe-style drivers with siloed provisioning packages (SPPs)](add-desktop-apps-wth-spps-sxs.md)

## <span id="Mount_the_image"></span>Mount the image

**Step 1: Mount the image**

Use the steps from [Lab 3: Add device drivers (.inf-style)](add-device-drivers.md) to mount the image. The short version:

1.  Open the command line as an administrator (**Start** > type **deployment** > right-click **Deployment and Imaging Tools Environment** > **Run as administrator**.)

2.  Make a backup of the file (`copy "C:\Images\Win10_x64\sources\install.wim" C:\Images\install-backup.wim`)

3.  Mount the image (`md C:\mount\windows`, then `Dism /Mount-Image /ImageFile:"C:\Images\install.wim" /Index:1 /MountDir:"C:\mount\windows" /Optimize`)

## <span id="Add_customizations_to_the_image"></span>Add customizations to the image
	
**Step 2: Upgrade the edition from Home to Pro**

Use this procedure to upgrade the edition. You cannot set a Windows image to a lower edition. You should not use this procedure on an image that has already been changed to a higher edition.

1.  Determine what images you can upgrade the image to: Note the edition IDs available.

    ``` syntax
    Dism /Get-TargetEditions /Image:C:\mount\windows
    ```

2.  Upgrade the edition.

    ``` syntax
    Dism /Set-Edition:Professional /Image:C:\mount\windows
    ```
	
**Step 3: Add a Windows update package**

1.  From Microsoft Connect, download the Windows update. Save this in the folder: C:\\WindowsUpdates.

2.  Add the updates to the image. For packages with dependencies, make sure you install the packages in order. If you’re not sure of the dependencies, it’s OK to put them all in the same folder, and then add them all using the same DISM /Add-Package command.

    ``` syntax
    Dism /Add-Package /Image:"C:\mount\windows" /PackagePath="C:\WindowsUpdates\kb1010101.cab" /PackagePath="C:\WindowsUpdates\kb1020202.cab" /PackagePath="C:\WindowsUpdates\kb1030303.cab" /LogPath=C:\mount\dism.log
    ```

    where C is the drive letter of the drive and `kb1010101.cab`, `kb1020202.cab`, and `kb3030303.cab` are update packages that you’re adding to the image.

3.  Lock in the updates, so that they are restored during a recovery. 

    ``` syntax
    DISM /Cleanup-Image /Image=C:\ /StartComponentCleanup /ResetBase /ScratchDir:C:\Temp
    ```

## <span id="Unmount_the_image"></span>Unmount the image
	
**Step 4: Unmount the images**

1.  Close all applications that might access files from the image.

2.  Commit the changes and unmount the Windows image:

    ``` syntax
    Dism /Unmount-Image /MountDir:"C:\mount\windows" /Commit
    ```

## <span id="Try_it_out"></span>Try it out

**Step 5: Apply the image to a new PC**

Use the steps from [Lab 2: Deploy Windows using a script](deploy-windows-with-a-script-sxs.md) to copy the image to the storage USB drive, apply the image, and boot it up. The short version:

1.  Boot the reference PC to Windows PE.
2.  Find the drive letter of the storage drive (`diskpart, list volume, exit`).
3.  Apply the image: `D:\ApplyImage.bat D:\Images\install.wim`.
4.  Disconnect the drives, then reboot (`exit`).

**Step 6: Verify updates**
1.  After the PC boots, either create a new user account, or else press Ctrl+Shift+F3 to reboot into the built-in administrator account (This is also known as audit mode).

2.  Right-click the **Start** button, and select **Command Prompt (Admin)**.

3.  Verify that the edition is correct:

    ``` syntax
    dism /online /get-currentedition
    ```

    Make sure it's the right edition. For example:

    ``` syntax
    Current edition is:

    Current Edition : Professional

    The operation completed successfully.
    ```

4.  Verify that the packages appear correctly:

    ``` syntax
    Dism /Get-Packages /Online
    ```

    Review the resulting list of packages and verify that the list contains the package. For example:

    ``` syntax
    Package Identity : Package_for_RollupFix~31bf3856ad364e35~amd64~~14393.321.1.5
    State : Installed
    Release Type : Security Update
    Install Time : 10/13/2016 6:26 PM

    The operation completed successfully.
    ```

Next step: [Lab 5: Add languages](add-drivers-langs-universal-apps-sxs.md)