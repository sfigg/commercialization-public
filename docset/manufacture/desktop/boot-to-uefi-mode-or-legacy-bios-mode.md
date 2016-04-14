---
author: Justinha
Description: Boot to UEFI Mode or Legacy BIOS mode
MS-HAID: 'p\_adk\_online.boot\_to\_uefi\_mode\_or\_legacy\_bios\_mode'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Boot to UEFI Mode or Legacy BIOS mode
---

# Boot to UEFI Mode or Legacy BIOS mode


Boot into UEFI mode or legacy BIOS-compatibility mode when installing Windows from your USB, DVD, or network location.

If you install Windows using the wrong mode, you won’t be able to use the features of that firmware mode without reformatting the drive.

**Select the firmware mode during bootup**

1.  Boot the PC. As the firmware starts to run, press the key that opens the boot device menu. For example, press the Esc, F2, F9, F12, or other key to enter the firmware or boot menus.

2.  On the boot device menu, select the command that identifies both the firmware mode and the device. For example, select **UEFI USB Drive** or **Network - BIOS**.

    **Note**  
    You might see separate commands for the same device. For example, you might see **UEFI USB Drive** and **BIOS USB Drive**. Each command uses the same device and media, but boots the PC in a different firmware mode.

     

    If a boot device option does not appear for your device:

    -   Check the options in the firmware menus to enable or disable BIOS-compatibility mode.

    -   To use BIOS-compatibility mode, check for options in the firmware menus to disable UEFI SecureBoot features.

    -   For older PCs (Windows® 7-era or earlier), look for options to **Boot from file**, and browse to the \\EFI\\BOOT\\BOOTX64.EFI file on that device.

**Use any of these methods to help make sure that Windows is installed using the correct firmware mode**

1.  If you install Windows by using Windows Setup or the Windows installation DVD, use preformatted hard drive on your destination PCs. Use the GPT file format for UEFI mode, or the MBR file format for BIOS mode. When Windows Setup runs, if the PC is booted to the wrong mode, Windows will fail to install. For more info, see [Windows Setup: Installing using the MBR or GPT partition style](windows-setup-installing-using-the-mbr-or-gpt-partition-style.md).

2.  You can remove the UEFI or BIOS boot files from either Windows PE or Windows Setup. For example, if you only include boot files for UEFI mode on the Windows installation DVD, and during manufacturing you accidentally attempt to boot the PC to BIOS mode, the PC will immediately fail to boot, and you can begin troubleshooting right away.

    -   **UEFI**: To prevent Windows Setup or Windows PE from booting in BIOS mode, remove the **bootmgr** file on the root of the media.

    -   **BIOS**: To prevent Windows Setup or Windows PE from booting in UEFI mode, remove the **efi** folder on the root of the media.

3.  From Windows PE, you can check the [GetFirmwareEnvironmentVariable function](http://go.microsoft.com/fwlink/p/?LinkId=698644). For more info, see [WinPE: Boot in UEFI or legacy BIOS mode](winpe-boot-in-uefi-or-legacy-bios-mode.md).

## <span id="related_topics"></span>Related topics


[WinPE: Create USB Bootable drive](winpe-create-usb-bootable-drive.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Boot%20to%20UEFI%20Mode%20or%20Legacy%20BIOS%20mode%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




