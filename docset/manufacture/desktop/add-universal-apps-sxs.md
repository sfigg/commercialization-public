---
author: KPacquer
Description: 'Lab 6: Add universal Windows apps, start tiles, and taskbar pins'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Lab 6: Add universal Windows apps, start tiles, and taskbar pins'
---

# <span id="Add_apps"></span>Lab 6: Add universal Windows apps, start tiles, and taskbar pins

Add apps to your images to support different customer needs. Some have different installation procedures:

-  **Windows universal platform apps (UWP apps)**: These can be added or re-installed using tools described in this topic.    
-  **Windows desktop applications**: We'll show you how to add those in [Lab 12: Add desktop applications and settings with siloed provisioning packages (SPPs)](add-desktop-apps-wth-spps-sxs.md).

**Notes** 

*    **Add updates before languages.** These include hotfixes, general distribution releases, or service packs. If you add an update later, you'll need to re-add the language.

*    **Add languages before apps**. This includes universal Windows apps and desktop applications. If you add a language later, you'll need to re-install the apps.

## <span id="Mount_the_image"></span>Mount the image

**Step 1: Mount the image**

Use the steps from [Lab 3: Add device drivers (.inf-style)](add-device-drivers.md) to mount the image. The short version:

1.  Open the command line as an administrator (**Start** > type **deployment** > right-click **Deployment and Imaging Tools Environment** > **Run as administrator**.)

2.  Make a backup of the file (`copy "C:\Images\Win10_x64\sources\install.wim" C:\Images\install-backup.wim`)

3.  Mount the image (`md C:\mount\windows`, then `Dism /Mount-Image /ImageFile:"C:\Images\install.wim" /Index:1 /MountDir:"C:\mount\windows" /Optimize`)

## <span id="Add_or_reinstall_apps"></span>Add/reinstall apps
	
**Step 2: Add/reinstall inbox apps (required whenever adding languages)**

Note, in previous versions, it was required to first remove inbox apps. This is no longer required, and if you do, the commands may fail.

NOTE: For Windows 10 version 1607, app bundles now only contain the dependency packages that pertain to the app. You no longer need to check the prov.xml file for what dependencies to install. Install all dependency packages found in the folder.

1.  Go to <https://microsoftoem.com> and get the supplemental OPK. This package includes the Windows 10, version 1607 inbox apps. There will not be monthly updates of these apps. 

2.  Extract the package to a folder, for example, E:\apps\amd64.

3.  Add/reinstall the inbox apps. The following example shows you how to reinstall the Get Started inbox app. Repeat these steps for each of the inbox apps (with the exception of AppConnector) by substituting the appropriate package.

    ``` syntax
    Dism /Add-ProvisionedAppxPackage /Image:c:\mount\windows /PackagePath:e:\apps\amd64\Microsoft.3DBuilder_8wekyb3d8bbwe.appxbundle /LicensePath:e:\apps\amd64\Microsoft.3DBuilder_8wekyb3d8bbwe.xml /DependencyPackagePath:e:\apps\amd64\Microsoft.VCLibs.x64.14.00.appx /DependencyPackagePath:e:\apps\amd64\Microsoft.VCLibs.x86.14.00.appx
    ```

    See [Sample scripts](windows-deployment-sample-scripts-sxs.md#Reinstall_Windows_inbox_apps).

**Step 3: Add/reinstall Windows Universal apps (Optional)**

In our example, we install Office Mobile, though you can install any UWP app using this procedure.

**Note**: Install either Office Single Image (either with or with out perpetual or subscription license) or Office Mobile (not both). Office Mobile must be used on devices with screen size of 10.1” and below, and Office Single Image must be used on devices with screen sizes above 10.1”. For devices that have a single fixed storage drive with less than 32 GB, OEMs may preinstall Office Mobile, regardless of the screen size. To learn more, see [Office Mobile Communication](https://myoem.microsoft.com/oem/myoem/en/product/office/Pages/COMM-OfficeUnvrslAppsOPKRlsTmng.aspx).

1.  Go to <https://microsoftoem.com> and get the supplemental OPK. This package includes the Windows 10, version 1607 inbox apps. There will not be monthly updates of these apps. 

2.  Extract the package to a folder, for example, e:\Universal_Office.

3.  Add/reinstall Office Mobile:

    ``` syntax
    Dism /Add-ProvisionedAppxPackage /Image:"c:\mount\windows" /packagepath:"e:\Universal_Office\PC_TH1_store.16.0.6228.1011.Excelim.appxbundle_Windows10_PreinstallKit\1b0569bd5fbd41d6bf0669beb013073c.appxbundle" /dependencypackagepath:"e:\Universal_Office\PC_TH1_store.16.0.6228.1011.Excelim.appxbundle_Windows10_PreinstallKit\Microsoft.VCLibs.140.00_14.0.22929.0_x86__8wekyb3d8bbwe.appx" /licensepath:"e:\Universal_Office\PC_TH1_store.16.0.6228.1011.Excelim.appxbundle_Windows10_PreinstallKit\1b0569bd5fbd41d6bf0669beb013073c_License1.xml"

    Dism /Add-ProvisionedAppxPackage /Image:"c:\mount\windows"  /packagepath:"e:\Universal_Office\PC_TH1_store.16.0.6228.1011.Pptim.appxbundle_Windows10_PreinstallKit\7f255062294a415a974b4958961df056.appxbundle" /dependencypackagepath:"e:\Universal_Office\PC_TH1_store.16.0.6228.1011.Pptim.appxbundle_Windows10_PreinstallKit\Microsoft.VCLibs.140.00_14.0.22929.0_x86__8wekyb3d8bbwe.appx" /licensepath:"e:\Universal_Office\PC_TH1_store.16.0.6228.1011.Pptim.appxbundle_Windows10_PreinstallKit\7f255062294a415a974b4958961df056_License1.xml"

     Dism /Add-ProvisionedAppxPackage /Image:"c:\mount\windows" /packagepath:"e:\Universal_Office\PC_TH1_store.16.0.6228.1011.Wordim.appxbundle_Windows10_PreinstallKit\532f710ca9d34f0aae6af4abe0af0592.appxbundle" /dependencypackagepath:"e:\Universal_Office\PC_TH1_store.16.0.6228.1011.Wordim.appxbundle_Windows10_PreinstallKit\Microsoft.VCLibs.140.00_14.0.22929.0_x86__8wekyb3d8bbwe.appx" /licensepath:"e:\Universal_Office\PC_TH1_store.16.0.6228.1011.Wordim.appxbundle_Windows10_PreinstallKit\532f710ca9d34f0aae6af4abe0af0592_License1.xml"
    ```

    Where the PackagePath points to the app bundle package.


**Step 4: Modify the Start tile and Taskbar pin layouts (Optional)**

You can define separate layouts for your default Start tiles and taskbar bins for different regions or markets.

1.  Create a LayoutModification.xml file. For our lab, you can use the sample from USB-B or [sample LayoutModification.xml](windows-deployment-sample-scripts-sxs.md). This sample shows two groups called “Fabrikam Group 1” and “Fabrikam Group 2”, which contain tiles that are applied based on two regions. 

    When creating your own LayoutModification file:

    To add desktop applications or legacy URL (.url) shortcuts, use the start:DesktopApplicationTile tag.

     -  For desktop apps, if you know the application user model ID, use that.

     -  Otherwise, for desktop apps or legacy .url links, create link files (.lnk) in either of the legacy Start Menu folders:

         -  %APPDATA%\Microsoft\Windows\Start Menu\Programs\

         -  %ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\ 

     You'll add the desktop applications in a later section: [Lab 12: Add desktop applications and settings with siloed provisioning packages (SPPs)](add-desktop-apps-wth-spps-sxs.md).    

2.  Add your LayoutModification.xml file to the Windows image. You’ll need to put the file in the following specific location before first boot. If the file exists, you should replace the LayoutModification.XML that is already included in the image.

    ``` syntax
    C:\Mount\Windows\Users\Default\AppData\Local\Microsoft\Windows\Shell\
    ```

3.  If you pinned tiles that require .url or .lnk files, add the files to the following legacy Start Menu directories:
    -   %APPDATA%\\Microsoft\\Windows\\Start Menu\\Programs\\
    -   %ALLUSERSPROFILE%\\Microsoft\\Windows\\Start Menu\\Programs\\

**Note**  The Start layout can be lost if the user resets their PC with the built-in recovery tools. You'll learn how to make sure these settings stay on the device in [Sample scripts](windows-deployment-sample-scripts-sxs.md).

4.  To add a taskbar layout in Windows 10, version 1607, you can either add a similar [taskbar layout modification file (see additional steps here)](https://msdn.microsoft.com/library/windows/hardware/mt736838.aspx), or use [traditional unattend settings](update-windows-settings-and-scripts-create-your-own-answer-file-sxs.md). 

## <span id="Add_or_change_languages_and_Cortana_features_on_demand__Optional_"></span><span id="add_or_change_languages_and_cortana_features_on_demand__optional_"></span><span id="ADD_OR_CHANGE_LANGUAGES_AND_CORTANA_FEATURES_ON_DEMAND__OPTIONAL_"></span>Add or change languages and Cortana features on demand (Optional)

## <span id="Unmount_the_images"></span> Unmount the images

**Step 5: Unmount the images**

1.  Close all applications that might access files from the image.

2.  Commit the changes and unmount the Windows image:

    ``` syntax
    Dism /Unmount-Image /MountDir:"C:\mount\windows" /Commit
    ```

    where *C* is the drive letter of the drive that contains the image.

    This process may take several minutes.

## <span id="Try_it_out"></span>Try it out

**Step 6: Apply the image to a new PC**
Use the steps from [Lab 2: Deploy Windows using a script](deploy-windows-with-a-script-sxs.md) to copy the image to the storage USB drive, apply the Windows image and the recovery image, and boot it up. The short version:

1.  Copy the image file to the storage drive.
2.  [Boot the reference device to Windows PE using the Windows PE USB key](install-windows-pe-sxs.md).
3.  Find the drive letter of the storage drive (`diskpart, list volume, exit`).
4.  Apply the image: `D:\ApplyImage.bat D:\Images\install.wim`.
5.  Disconnect the drives, then reboot (`exit`).
	
**Step 7: Verify apps**
1.  After the PC boots, either create a new user account, or else press Ctrl+Shift+F3 to reboot into the built-in administrator account (This is also known as audit mode).

2.  Check the Start Menu to make sure the apps are available.

3.  Check the Start Menu and taskbar and make sure the apps you selected are pinned correctly.
	
Next step: [Lab 7: Change settings, enter product keys, and run scripts with an answer file (unattend.xml)](update-windows-settings-and-scripts-create-your-own-answer-file-sxs.md)