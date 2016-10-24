---
author: KPacquer
Description: 'Lab 1i: Add Windows desktop applications and .exe-style drivers with siloed provisioning packages'
ms.assetid: 142bc507-64db-43dd-8432-4a19af3c568c
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Lab 1i: Update the recovery image'
---
# Lab 1i: Update the recovery image

If the system can't boot to the Windows image, it will fail over to the Windows Recovery Environment (WinRE). WinRE can repair common causes of unbootable operating systems. WinRE is based on Windows Preinstallation Environment (WinPE), and to make it work for your customers, you can add drivers, languages, Windows PE Optional Components, and other troubleshooting and diagnostic tools. 

The WinRE image is included inside the Windows 10 and Windows Server 2016 images, and is eventually copied to the Windows RE tools partition on the destination PC or device. To modify it, you'll mount the Windows image, then mount the WinRE image inside it. Make your changes, unmount the WinRE image, then unmount the Windows image. 

   ![image: Mount the Windows image, then mount the recovery image inside it. Make changes, then unmount the recovery image, and finally the Windows image](images/customize-recovery-image.jpg)

You should update your recovery image to ensure a consistent recovery experience whenever you:
* Add boot-critical .inf-style drivers, such as the graphics and storage drivers for [Lab 1a: Install Windows PE](install-windows-pe-sxs.md).
* Add major updates to Windows, like general distribution releases ([Lab 1d: Add updates and upgrade the edition](servicing-the-image-with-windows-updates-sxs.md)).   
* Add new languages, like you did in [Lab 1e: Add languages](add-drivers-langs-universal-apps-sxs.md).  (This isn’t always possible, as not all languages have Windows RE equivalents.)

 **Note**  This lab assumes you’d rather keep winre.wim inside of install.wim to keep your languages and drivers in sync. If you’d like to save a bit of time on the factory floor, and if you’re OK managing these images separately, you may prefer to remove winre.wim from the image and apply it separately.

## <span id="Mount_the_images"></span>Mount the images

**Step 1: Mount the Windows image**

Use the steps from [Lab 1c: Add device drivers (.inf-style)](add-device-drivers.md) to mount the Windows image. The short version:

1.  Open the command line as an administrator (**Start** > type **deployment** > right-click **Deployment and Imaging Tools Environment** > **Run as administrator**.)

2.  Make a backup of the file (`copy "C:\Images\Win10_x64\sources\install.wim" C:\Images\install-backup.wim`)

3.  Mount the image (`md C:\mount\windows`, then `Dism /Mount-Image /ImageFile:"C:\Images\install.wim" /Index:1 /MountDir:"C:\mount\windows" /Optimize`)

**Step 2: Mount the recovery image**

-   Mount the Windows RE image file. 

    ``` syntax
    md C:\mount\winre
    ```

    ``` syntax
    Dism /Mount-Image /ImageFile:"C:\mount\windows\Windows\System32\Recovery\winre.wim" /Index:1 /MountDir:"C:\mount\winre"
    ```

    Where *C* is the drive letter of the drive that contains the image.

    This step can take several minutes.

    **Troubleshooting**: If winre.wim cannot be seen under the specified directory, use the following command to set the file visible:

    `attrib -h -a -s C:\mount\windows\Windows\System32\Recovery\winre.wim`

## <span id="Add_drivers_to_the_image"></span>Add drivers to the image

**Step 3: Add boot-critical drivers to WinRE**

1.  Add any .inf-style drivers needed for your hardware.

    ``` syntax
    Dism /Add-Driver /Image:"C:\mount\winre" /Driver:"C:\Drivers\PnP.Media.V1\media1.inf" /LogPath=C:\mount\dism.log
    ```

## <span id="Add_languages_to_the_image"></span>Add languages to the image

**Step 4: Add or change languages**

If the PC runs into trouble, your users may not be able to read/understand the recovery screens unless you add the appropriate language resources into the Windows Recovery Environment (Windows RE).

1.  Add languages. These languages are included with the Windows ADK. You must use a matching version of the Windows ADK to service the Windows RE image.

    **Note**  Windows RE now requires the WinPE-HTA package, this is new for Windows 10.

    **Note**  The WinPE-WiFi-Package is not language-specific and does not need to be added when adding other languages. This is new for Windows 10.

    ``` syntax
    Dism /Add-Package /image:C:\mount\winre /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\fr-fr\lp.cab"

    Dism /Add-Package /image:C:\mount\winre /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\fr-fr\WinPE-Rejuv_fr-fr.cab"

    Dism /Add-Package /image:C:\mount\winre /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\fr-fr\WinPE-EnhancedStorage_fr-fr.cab"

    Dism /Add-Package /image:C:\mount\winre /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\fr-fr\WinPE-Scripting_fr-fr.cab"

    Dism /Add-Package /image:C:\mount\winre /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\fr-fr\WinPE-SecureStartup_fr-fr.cab"

    Dism /Add-Package /image:C:\mount\winre /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\fr-fr\WinPE-SRT_fr-fr.cab"

    Dism /Add-Package /image:C:\mount\winre /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\fr-fr\WinPE-WDS-Tools_fr-fr.cab"

    Dism /Add-Package /image:C:\mount\winre /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\fr-fr\WinPE-WMI_fr-fr.cab"

    Dism /Add-Package /image:C:\mount\winre /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\fr-fr\WinPE-StorageWMI_fr-fr.cab"

    Dism /Add-Package /image:C:\mount\winre /PackagePath:"C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\fr-fr\WinPE-HTA_fr-fr.cab"
    ```

2.  Set the default recovery language to match the preferred language for your customers.

    ``` syntax
    Dism /Set-AllIntl:fr-fr /Image:C:\mount\winre
    ```

3.  Optional: Remove languages from Windows RE (only needed for non-English regions)

    When you remove languages from Windows, remove them from Windows RE to save space.

    You can either use the /PackagePath switch (which requires a matching version of Windows and the Windows ADK) or the /PackageName switch (which requires identifying the package including the version number).

    Example:

    ``` syntax
    Dism /Remove-Package /Image:"C:\mount\winre" /PackageName:WinPE-Rejuv-Package~31bf3856ad364e35~amd64~en-US~10.0.14393.0 /LogPath=C:\mount\dism.fod2.log
    Dism /Remove-Package /Image:"C:\mount\winre" /PackageName:WinPE-HTA-Package~31bf3856ad364e35~amd64~en-US~10.0.14393.0 /LogPath=C:\mount\dism.fod2.log
    Dism /Remove-Package /Image:"C:\mount\winre" /PackageName:WinPE-StorageWMI-Package~31bf3856ad364e35~amd64~en-US~10.0.14393.0 /LogPath=C:\mount\dism.fod2.log
    Dism /Remove-Package /Image:"C:\mount\winre" /PackageName:WinPE-WMI-Package~31bf3856ad364e35~amd64~en-US~10.0.14393.0 /LogPath=C:\mount\dism.fod2.log
    Dism /Remove-Package /Image:"C:\mount\winre" /PackageName:WinPE-WDS-Tools-Package~31bf3856ad364e35~amd64~en-US~10.0.14393.0 /LogPath=C:\mount\dism.fod2.log
    Dism /Remove-Package /Image:"C:\mount\winre" /PackageName:WinPE-SRT-Package~31bf3856ad364e35~amd64~en-US~10.0.14393.0 /LogPath=C:\mount\dism.fod2.log
    Dism /Remove-Package /Image:"C:\mount\winre" /PackageName:WinPE-SecureStartup-Package~31bf3856ad364e35~amd64~en-US~10.0.14393.0 /LogPath=C:\mount\dism.fod2.log
    Dism /Remove-Package /Image:"C:\mount\winre" /PackageName:WinPE-Scripting-Package~31bf3856ad364e35~amd64~en-US~10.0.14393.0 /LogPath=C:\mount\dism.fod2.log
    Dism /Remove-Package /Image:"C:\mount\winre" /PackageName:WinPE-EnhancedStorage-Package~31bf3856ad364e35~amd64~en-US~10.0.14393.0 /LogPath=C:\mount\dism.fod2.log
    Dism /Remove-Package /Image:"C:\mount\winre" /PackageName:Microsoft-Windows-WinPE-LanguagePack-Package~31bf3856ad364e35~amd64~en-US~10.0.14393.0 /LogPath=C:\mount\dism.fod2.log
    ```

4.  Verify that the language packages are part of the image:

    ``` syntax
    Dism /Get-Packages /Image:"C:\mount\winre"
    ```

    where *C* is the drive letter of the drive that contains the image.

5.  Review the resulting list of packages and verify that the list contains the package. For example:

    ``` syntax
    Package Identity : Microsoft-Windows-WinPE-Rejuv_fr-fr ...  fr-FR~10.0.14393.0
    State : Installed
    ```

## <span id="Optimizing_the_image_part_1"></span><span id="optimizing_the_image_part_1"></span><span id="OPTIMIZING_THE_IMAGE_PART_1"></span>Step 5: Optimizing the image, part 1 (optional)

After adding a language or Windows update package, you can reduce the size of the final Windows RE package by checking for duplicate files and marking the older versions as superseded.

1.  Optimize the image:

    ``` syntax
    Dism /Image:c:\mount\winre /Cleanup-Image /StartComponentCleanup /ResetBase
    ```

2.  Later, you'll export the image to remove the superseded files.

## <span id="BKMK_SaveImage"></span><span id="bkmk_saveimage"></span><span id="BKMK_SAVEIMAGE"></span>Step 6: Unmount the WinRE image


-   Unmount and save the image:

    ``` syntax
    Dism /Unmount-Image /MountDir:C:\mount\winre /Commit
    ```

## <span id="Optimizing_the_image_part_2"></span><span id="optimizing_the_image_part_2"></span><span id="OPTIMIZING_THE_IMAGE_PART_2"></span>Step 7: Optimizing the image, part 2 (optional)


If you've optimized the image, you'll need to export the image in order to see a change in the file size. During the export process, DISM removes files that were superseded.

1.  Export the Windows RE image into a new Windows image file.

    ``` syntax
    Dism /Export-Image /SourceImageFile:c:\mount\windows\windows\system32\recovery\winre.wim /SourceIndex:1 /DestinationImageFile:c:\mount\winre-optimized.wim
    ```

2.  Replace the old Windows RE image with the newly-optimized image.

    ``` syntax
    del c:\mount\windows\windows\system32\recovery\winre.wim

    copy c:\mount\winre-optimized.wim c:\mount\windows\windows\system32\recovery\winre.wim
    ```

4.  Check the new size of the Windows RE image.

    ``` syntax
    Dir "C:\mount\windows\Windows\System32\Recovery\winre.wim"
    ```

    If the size of the partition is greater than 524,288,000 bytes, convert the file size into megabytes, add free space, and modify the deployment script: CreatePartitions-&lt;Firmware&gt;.txt with the new value. To learn more about free space recommendations, see [UEFI/GPT-based hard drive partitions](http://go.microsoft.com/fwlink/?LinkId=526950). Example:

    ``` syntax
    rem == 3. Windows RE tools partition ===============
    create partition primary size=600
    ```

5.  Commit the changes and unmount the Windows image:

    ``` syntax
    Dism /Unmount-Image /MountDir:"C:\mount\windows" /Commit
    ```

    where *C* is the drive letter of the drive that contains the image.

    This process may take several minutes.

## <span id="Try_it_out"></span>Try it out

**Step 8: Apply the image to a new PC**
Use the steps from [Lab 1b: Deploy Windows using a script](deploy-windows-with-a-script-sxs.md) to copy the image to the storage USB drive, apply the Windows image and the recovery image, and boot it up. The short version:

1.  Boot the reference PC to Windows PE.

2.  Find the drive letter of the storage drive (`diskpart, list volume, exit`).

3.  Apply the image: `D:\ApplyImage.bat D:\Images\install.wim`.
	
4.  Apply the recovery image:
    ``` syntax
	D:\ApplyRecovery.bat
	```
	
    Note: To test a different recovery image, add it the same way, specifying the recovery image: 
    ``` syntax
	D:\ApplyRecovery.bat D:\Images\winre_with_drivers_for_fabrikam_model_1.wim
	```

5.  Disconnect the drives, then reboot (`exit`).
	
**Step 9: Verify drivers and packages**
1.  After the PC boots, either create a new user account, or else press Ctrl+Shift+F3 to reboot into the built-in administrator account (This is also known as audit mode).

2.  Click the **Start** button, click the Power icon, then hold down the **Shift key** and select **Restart**.

    If the boot-critical drivers have been successfully applied, you should see the Windows recovery environment.

    If languages have been successfully added, you'll either see the new language (for a single language image) or be prompted for your language (for a multi-language image). 
	
Next step: [Lab 1e: Change settings and run scripts with an answer file](update-windows-settings-and-scripts-create-your-own-answer-file-sxs.md)