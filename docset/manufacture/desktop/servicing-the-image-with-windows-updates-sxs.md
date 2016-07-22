---
author: Justinha
Description: 'Add drivers, updates, and upgrade the edition.'
ms.assetid: 9a8f525c-bb8f-492c-a555-0b512e44bcd1
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Lab 1c: Servicing the image with Windows Updates'
---

# Lab 1c: Add drivers, updates, and upgrade the edition

For many customizations, like adding Windows updates or upgrading the edition, you can mount the Windows image to a temporary folder. Mounting an image maps the contents of a file to a location where you can view and modify them.

![image: copying image files and deployment scripts](images/dep-win8-sxs-createmodelspecificfiles.jpg)

## <span id="Prepare_and_mount_the_image"></span>Prepare and mount the image

**Step 1: Make a copy of your Windows image file (recommended)**

1.  Click **Start**, and type **deployment**. Right-click **Deployment and Imaging Tools Environment** and then select **Run as administrator**.

2.  Copy the file:
``` syntax
copy "C:\Images\Win10_x64\sources\install.wim" C:\Images\install-updated.wim
```

**Step 2: Mount the Windows image file**
Create a temporary folder to mount the files, and mount the image into it: 
``` syntax
md C:\mount\windows
Dism /Mount-Image /ImageFile:"C:\Images\install-updated.wim" /Index:1 /MountDir:"C:\mount\windows" /Optimize
```
Where /Index:1 refers to the image you want to mount. 
For the Windows 10 Home/Pro edition, use /Index:2 to select the Home edition.

This step can take several minutes.

-   **Troubleshooting**

    If this command fails, make sure that you are using the Windows 10 version of DISM that is installed with the Windows ADK.

    If your technician PC uses Windows 8.1, Windows 8, or Windows 7, make sure you're using the **Deployment and Imaging Tools Environment** rather than the standard command prompt.

    Don’t mount images to protected folders, such as your User\\Documents folder.

    If DISM processes are interrupted, consider temporarily disconnecting from the public network and disabling virus protection.
	
	If you've mounted an image to the folder before, try cleaning up the resources associated with the mounted image:
	``` syntax
	Dism /Cleanup-Mountpoints
	```

## <span id="Add_customizations_to_the_image"></span>Add customizations to the image
These are just examples - you don't have to add all of these.

**Step 3: Add drivers to Windows**

1.  Add any .inf-style drivers needed for your hardware.

    ``` syntax
    Dism /Add-Driver /Image:"C:\mount\windows" /Driver:"C:\Drivers\PnP.Media.V1\media1.inf" /LogPath=C:\mount\dism.log
    ```

    where "C:\\Drivers\\PnP.Media.V1\\media1.inf" is the base .inf file in your driver package.

    **Note**  For this section we’re adding /LogPath in case things go wrong –if there’s a problem with adding your driver, open this file to quickly check for errors.
    
    To install all of the drivers from a folder and all its subfolders, point to the folder and use the /Recurse option.

    ``` syntax
    Dism /Add-Driver /Image:"C:\mount\windows" /Driver:c:\drivers /Recurse
    ```

    **Warning**  While /Recurse can be handy, it's easy to bloat your image with it. Some driver packages include multiple .inf driver packages, which often share payload files from the same folder. During installation, each .inf driver package is expanded into a separate folder, each with a copy of the payload files. We've seen cases where a popular driver in a 900MB folder added 10GB to images when added with the /Recurse option.

2.  Verify that the driver is part of the image:

    ``` syntax
    Dism /Get-Drivers /Image:"C:\mount\windows"
    ```

    Review the resulting list of packages and verify that the list contains the driver.
	
**Step 4: Upgrade the edition from Home to Pro**

Use this procedure to upgrade the edition. You cannot set a Windows image to a lower edition. You should not use this procedure on an image that has already been changed to a higher edition.

1.  Determine what images you can upgrade the image to: Note the edition IDs available.

    ``` syntax
    Dism /Get-TargetEditions /Image:C:\mount\windows
    ```

2.  Upgrade the edition.

    ``` syntax
    Dism /Set-Edition:Professional /Image:C:\mount\windows
    ```
	
**Step 5: Add a Windows update package**

Note: by default, updates installed after a target rollup update are not restored. To ensure that updates preinstalled during manufacturing are not discarded after recovery, they should be marked as permanent by using the /Cleanup-Image command in DISM with the /StartComponentCleanup and /ResetBase options. Updates marked as permanent are always restored during recovery.

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
	
**Step 6: Unmount the images**

1.  Close all applications that might access files from the image.

2.  Commit the changes and unmount the Windows image:
    ``` syntax
    Dism /Unmount-Image /MountDir:"C:\mount\windows" /Commit
    ```

## <span id="Try_it_out"></span>Try it out

**Step 7: Apply the image to a new PC**
Use the steps from [Lab 1b: Deploy Windows using a script](deploy-windows-with-a-script-sxs.md) to copy the image to the storage USB drive, apply the image, and boot it up. The short version:

1.  Boot the reference PC to Windows PE.
2.  Find the drive letter of the storage drive (`diskpart, list volume, exit`).
3.  Apply the image: `D:\ApplyImage.bat D:\Images\install-updated.wim`.
4.  Disconnect the drives, then reboot (`exit`).

**Step 8: Verify drivers**
1.  After the PC boots, either create a new user account, or else press Ctrl+Shift+F3 to reboot into the built-in administrator account (This is also known as audit mode).
2.  Right-click the **Start** button, and select **Command Prompt (Admin)**.
3.  Verify that the drivers appear correctly:

    ``` syntax
    C:\Windows\System32\Dism /Get-Drivers /Online
    ```
	
4.  Verify that the packages appear correctly:

    ``` syntax
    C:\Windows\System32\Dism /Get-Packages /Online
    ```

    Review the resulting list of packages and verify that the list contains the package. For example:

    ``` syntax
    Package Identity : Microsoft-Windows-Client-LanguagePack  ...  fr-FR~10.0.10240.0
    State : Installed
    ```

Next step: [Lab 1d: Add drivers, languages, and universal Windows apps](add-drivers-langs-universal-apps-sxs.md)