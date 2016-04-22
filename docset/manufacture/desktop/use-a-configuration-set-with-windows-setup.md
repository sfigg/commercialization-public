---
author: Justinha
Description: Use a Configuration Set with Windows Setup
ms.assetid: 6dc2e7b3-f1fb-4d46-b248-1e96c912db38
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Use a Configuration Set with Windows Setup
---

# Use a Configuration Set with Windows Setup


Use a configuration set to add applications, drivers, packages, scripts, files and folders to Windows during installation. A configuration set is a portable collection of files and folders that you can place on a USB Flash Drive (UFD) or on a network share.

To use a configuration set, you need the following:

-   A configuration set. For more information, see [Create a Configuration Set](https://msdn.microsoft.com/library/windows/hardware/dn915081).

-   A Windows product DVD.

-   A removable media, such as a USB flash drive (UFD), if you intend to install without a network.

-   A bootable Windows PE media if you intend to install from a network. For more information, see [WinPE: Create USB Bootable drive](winpe-create-usb-bootable-drive.md).

**How to use a Configuration Set with a Windows DVD**

1.  Turn on the computer.

2.  Insert both the removable media that contains your configuration set and the Windows product DVD into the new computer.

    **Note**  
    When using a USB flash drive, insert the drive directly into the primary set of USB ports for the computer. For a desktop computer, this is typically in the back of the computer.

     

3.  Restart the computer by pressing CTRL+ALT+DEL.

4.  When the computer reboots, you might be prompted to press any key to boot from the CD-ROM drive. Press any key and Windows Setup (**Setup.exe**) starts automatically.

    By default, Windows Setup searches all removable media for an answer file that is named **Autounattend.xml**. Autounattend.xml must be located at the root of the removable media.

    Installation starts, and the settings you configured in your answer file will be applied.

**How to use a Configuration Set from a Network**

1.  Create two folders on a network share to store the product DVD source files and your configuration set. For example,

    ``` syntax
    net use N: \\server\share
    md N:\WindowsDVD
    md N:\ConfigurationSets
    ```

2.  Copy the content of the product DVD to the **\\WindowsDVD** folder.

3.  Copy your configuration set to the **\\ConfigurationSets** folder.

4.  Boot the destination computer by using a bootable Windows PE media.

    For information about creating bootable Windows PE media, see [WinPE: Create USB Bootable drive](winpe-create-usb-bootable-drive.md).

5.  At a command prompt in Windows PE, map a network drive to your network share. For example,

    ``` syntax
    net use N: \\server\share
    ```

6.  Run Windows Setup from the network and reference your answer file in your configuration set. For example,

    ``` syntax
    N:\WindowsDVD\setup /unattend:N:\ConfigurationSets\autounattend.xml
    ```

## <span id="related_topics"></span>Related topics


[Windows Setup Technical Reference](windows-setup-technical-reference.md)

[Add a Custom Command to an Answer File](https://msdn.microsoft.com/library/windows/hardware/dn915058)

[Boot from a DVD](boot-from-a-dvd.md)

[Deploy a Custom Image](deploy-a-custom-image.md)

[Boot Windows to Audit Mode or OOBE](boot-windows-to-audit-mode-or-oobe.md)

[Add Device Drivers to Windows During Windows Setup](add-device-drivers-to-windows-during-windows-setup.md)

[Add a Custom Script to Windows Setup](add-a-custom-script-to-windows-setup.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Use%20a%20Configuration%20Set%20with%20Windows%20Setup%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




