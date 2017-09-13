---
author: Justinha
Description: 'Sysprep (Generalize) a Windows installation'
ms.assetid: 455fa70e-6c13-45ae-ad4f-5d12e3b844e5
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Sysprep (Generalize) a Windows installation'
ms.author: themar
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Sysprep (Generalize) a Windows installation

To deploy a Windows image to different PCs, you must first generalize the image. Generalizing the image removes computer-specific information from the image. You can either use sysprep or an unattend answer file to generalize the image and make it ready for deployment.

## <span id="bkmk_1"></span>Generalizing an Image

When you generalize a Windows image, Windows Setup processes settings in the [generalize](generalize.md) configuration pass. You must run the **Sysprep** command together with the **/generalize** option, even if you are capturing an image that's going to be deploying to a similar PC. `Sysprep /generalize` removes unique information from a Windows installation so that you can safely reuse your image.

Windows replaces the computer security identifier (SID) only on the operating system volume when you run **Sysprep**. When **Sysprep** generalizes an image, it generalizes only the main operating system partition. If a single computer has multiple operating systems, you must run **Sysprep** on each image individually.

If your server has Remote Authentication Dial-In User Service (RADIUS) clients or remote RADIUS server groups defined in the Network Policy Server (NPS) configuration, you should remove this information before you deploy it to a different computer. For more information, see [Prepare a Network Policy Server (NPS) for Imaging](prepare-a-network-policy-server--nps--for-imaging.md).

### Keeping drivers in a Windows image

When you set up a Windows PC, Windows Setup installs drivers for any detected devices. By default, Windows Setup removes these drivers when you generalize the system, and the drivers will have to be reinstalled when you deploy the image. If you're deploying an image to computers that have the same hardware and devices as the original PC, you can keep these drivers on the computer during system generalization. Use an unattend file, with Microsoft-Windows-PnPSysprep | `PersistAllDeviceInstalls` sett to **true**. For more information about **Sysprep**-related Windows components that you can add to an answer file, see the [Unattended Windows Setup Reference for Microsoft-Windows-PnpSysprep](https://docs.microsoft.com/en-us/windows-hardware/customize/desktop/unattend/microsoft-windows-pnpsysprep).

### SkipRearm

You can run the **Sysprep** command up to 9 times on a single Windows image. After running Sysprep 8 times, you must recreate your Windows image. In previous versions of Windows, you could use the `SkipRearm` answer file setting to reset the Windows Product Activation clock when running sysprep. If you are using a volume licensing key or a retail product key, you don't have to use `SkipRearm` because Windows is automatically activated. 

### Store Apps

Updating your Windows Store apps before generalizing a Windows image will cause Sysprep to fail. `Sysprep /generalize` requires that all apps are provisioned for all users, however, when you update an app from the Windows Store, that app becomes tied to the user account. The following error appears in the sysprep log files (%WINDIR%\\System32\\Sysprep\\Panther):

`<package name> was installed for a user, but not provisioned for all users. This package will not function properly in the sysprep image.`

Instead of using the Windows Store to update your apps, you should sideload updates to your line-of-business apps, or have end-users update their apps by using the Windows Store on their destination PCs. In managed environments, if Windows Store access is disabled by an IT administrator, you will not be able to update the Windows Store apps.

For more information about sideloading line-of-business Windows Store apps, see [Sideload Apps with DISM](sideload-apps-with-dism-s14.md) and [Customize the Start Screen](customize-the-start-screen.md).

## Generalize an image

To generalize an image, you have to fist boot into Audit Mode. You can do boot into Audit Mode using unattend or from OOBE. You can read about the different ways of booting into audit mode at [Boot Windows to audit mode or OOBE](boot-windows-to-audit-mode-or-oobe.md).

1. Boot a PC into Audit Mode. When Windows boots into Audit Mode, **System Preparation Tool** will appear on the desktop. Leave the **System Preparation Tool** window open. 

2. Customize Windows by adding drivers, changing settings, and installing programs.

3. Run sysprep.

    - If the **System Preparation Tool** window is still open, click **Generalize**, click **Shutdown**, and then click **OK** to generalize the image and shut down the PC.

    -or-

    -   Use sysprep from Command Prompt. Run `%WINDIR%\system32\sysprep\sysprep.exe` to open the **System Preparation Window**. You can also use the `Sysprep` command together with the **/generalize**, **/shutdown**, and **/oobe** options. See [Sysprep command-line options](sysprep-command-line-options.md) to see available options.

    ```
    Sysprep /generalize /shutdown /oobe
    ```

    >[!Note]
    >If you are generalizing a VHD, use the `/mode:vm` options with sysprep.

    The computer generalizes the image and shuts down.

4.  After the computer shuts down, [capture your image with DISM](capture-images-of-hard-disk-partitions-using-dism).

5.  Deploy this image to a reference computer. When the reference computer boots, it displays the Out-Of-Box Experience (OOBE) screen.


## <span id="related_topics"></span>Related topics


[Sysprep Process Overview](sysprep-process-overview.md)

[Sysprep Command-Line Options](sysprep-command-line-options.md)

[Sysprep Support for Server Roles](sysprep-support-for-server-roles.md)

[Work with Product Keys and Activation](work-with-product-keys-and-activation-auth-phases.md)

 

 






