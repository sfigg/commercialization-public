---
Description: 'Now that you''ve seen how to configure Windows images using Windows Imaging and Configuration Designer (ICD), we''ll show you how to add Classic Windows applications and other data by using audit mode.'
MS-HAID: 'p\_sxs\_dmfg.combine\_provisioning\_packages\_into\_a\_new\_image'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Lab 1b: Create a provisioning package with Windows desktop applications'
---

# Lab 1b: Create a provisioning package with Windows desktop applications


Now that you've seen how to configure Windows images using Windows Imaging and Configuration Designer (ICD), we'll show you how to add Classic Windows applications and other data by using audit mode. You'll recapture these Classic Windows applications and data into a provisioning package by using the ScanState tool. As new builds of Windows are released, and as you prepare for different markets, you can mix and match the Windows images and provisioning packages, rather than rebuilding and customizing the images each time.

Once you’ve captured the provisioning package, you can add it to your image by using Windows ICD.

The recovery tools also use this provisioning package. When your users refresh the device (often used in case of device failure) or reset the device (often used to clean a device for a new user), the device keeps their installed Windows updates, plus the updates in this provisioning package.

## <span id="Step_1__Prepare_a_copy_of_ScanState"></span><span id="step_1__prepare_a_copy_of_scanstate"></span><span id="STEP_1__PREPARE_A_COPY_OF_SCANSTATE"></span>Step 1: Prepare a copy of ScanState


1.  On your technician PC, plug in another USB key or drive.
2.  In File Explorer, create a new folder on the USB key, for example: **D:\\ScanState x64**.
3.  Copy the files from **"C:\\Program Files (x86)\\Windows Kits\\10\\Assessment and Deployment Kit\\User State Migration Tool\\amd64"** into **D:\\ScanState x64**. You don't need to copy the subfolders.
4.  Copy the files from **"C:\\Program Files (x86)\\Windows Kits\\10\\Assessment and Deployment Kit\\Windows Setup\\amd64\\Sources"** into **D:\\ScanState x64**. There will be duplicate files, it's OK to skip copying these files. You don't need to copy the subfolders.

## <span id="installDesktopApp"></span><span id="installdesktopapp"></span><span id="INSTALLDESKTOPAPP"></span>Step 2: Install a Classic Windows application in audit mode


Use this method to install classic Windows applications and any drivers that require installation (as opposed to .inf-style drivers.)

1.  On the reference device, install the image that was created in Lab 1a. If the image is already installed, start the reference device. Either the **Languages** or the **Hi there** screen appears.
2.  Press **Ctrl+Shift+F3** to enter Audit mode. The device reboots to the desktop, and the System Preparation Tool (Sysprep) appears. You can close Sysprep.
3.  Ensure that your customizations from [Lab 1a](install-windows-automatically-from-a-usb-drive-sxs.md) are available. To do this, in **Settings** under **System &gt; About**, you should see the technical support info that you entered earlier appear (company name, support phone number, and support website).

4.  Install a Classic Windows application application. For example, to install Office 2013, put in a USB key with the Office installation program, open File Explorer and navigate to `oemsetup.en-us.com`. To learn more, download the Office OPK Update image from the Office OPK Connect site.

## <span id="saveWithUSMT"></span><span id="savewithusmt"></span><span id="SAVEWITHUSMT"></span>Step 3: Save your updates to a provisioning package


**Capture your updates into a provisioning package**

First, plug the USB key with ScanState into the reference device.

-   **If you'd like to keep a copy of this provisioning package and deploy it to other devices**, save the file to a USB drive.

    Capture the changes into the provisioning package, and save it on the USB key.

    ``` syntax
    D:\ScanState_x64\scanstate.exe /apps /ppkg D:\Provisioning\ClassicApp.ppkg /o /c /v:13 /l:D:\ScanState.log
    ```

    where *D* is the letter of the drive with ScanState.

    You can now go back to [Lab 1](install-windows-automatically-from-a-usb-drive-sxs.md) and mix and match this provisioning package with other Windows images and customizations. Please refer to Lab 1, Step 1.6 for instructions on how to load a provisioning package in a WICD project, then continue Lab 1 flow.

-   **For build-to-order devices**, you can wrap up these changes and prepare the device for immediate delivery. Capture the changes to provisioning package, and save it as C:\\Recovery\\Customizations\\usmt.ppkg:

    ``` syntax
    D:\ScanState_x64\scanstate.exe /apps /ppkg C:\Recovery\Customizations\usmt.ppkg /o /c /v:13 /l:D:\ScanState.log
    ```

## <span id="Step_4__Prepare_the_device_for_an_end_user"></span><span id="step_4__prepare_the_device_for_an_end_user"></span><span id="STEP_4__PREPARE_THE_DEVICE_FOR_AN_END_USER"></span>Step 4: Prepare the device for an end user


-   **For build-to-order devices**, prepare the device for the end user: Right-click **Start**, select **Command Prompt (Admin)**, and run the following command:

    ``` syntax
     
    C:\Windows\System32\Sysprep\sysprep /oobe /shutdown
    ```

    The Sysprep tool reseals the device. This process can take several minutes. After the process completes, the device shuts down automatically. You can now send the device to the customer.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_sxs_dmfg\p_sxs_dmfg%5D:%20Lab%201b:%20Create%20a%20provisioning%20package%20with%20Windows%20desktop%20applications%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



