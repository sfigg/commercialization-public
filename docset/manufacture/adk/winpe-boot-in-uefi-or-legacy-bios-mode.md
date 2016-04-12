---
Description: 'WinPE: Boot in UEFI or legacy BIOS mode'
MS-HAID: 'p\_adk\_online.winpe\_boot\_in\_uefi\_or\_legacy\_bios\_mode'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'WinPE: Boot in UEFI or legacy BIOS mode'
---

# WinPE: Boot in UEFI or legacy BIOS mode


When you boot Windows PE on a UEFI PC, you may need to check whether the PC is booted in UEFI mode or legacy BIOS-compatibility mode.

For example, running Windows Setup through Windows PE requires you to be in the correct firmware mode.

For many operations, such as applying Windows images using Diskpart and DISM, the firmware mode might not make a difference.

**Boot to UEFI mode**

-   When booting the PC, you may need to manually select the UEFI boot files: \\EFI\\BOOT\\BOOTX64.EFI.

    1.  Boot your PC and press the key to get into the firmware menus (examples: Esc, F2, F9, F12).

    2.  Look for a firmware option to choose the boot file (examples: Boot to file, Boot to EFI file).

    3.  Select the file from the USB drive: `\EFI\BOOT\BOOTX64.EFI`.

**Detect whether Windows PE is booted in BIOS or UEFI mode**

1.  Check the **HKLM\\System\\CurrentControlSet\\Control\\PEFirmwareType** registry value to see if the PC is booted to UEFI or BIOS mode. Note: you may need to run `wpeutil UpdateBootInfo` to make sure this value is present.

    ``` syntax
    reg query HKLM\System\CurrentControlSet\Control /v PEFirmwareType
    ```

    This command returns 0x1 if the PC is booted into BIOS mode, or 0x2 if the PC is booted in UEFI mode.

    Sample script:

    ``` syntax
    wpeutil UpdateBootInfo
    for /f "tokens=2* delims=    " %%A in ('reg query HKLM\System\CurrentControlSet\Control /v PEFirmwareType') DO SET Firmware=%%B
    :: Note: delims is a TAB followed by a space.
    if %Firmware%==0x1 echo The PC is booted in BIOS mode.
    if %Firmware%==0x2 echo The PC is booted in UEFI mode.
    ```

2.  If this is a frequent problem, you can remove the boot files for UEFI mode or BIOS mode to prevent the PC from booting in the wrong mode. If the PC firmware is set up to boot in the wrong mode, the media will immediately fail to boot, allowing you to immediately retry booting the PC into the correct mode.

    -   **Boot in UEFI mode**: To prevent Windows PE from booting in BIOS mode, remove the **bootmgr** file on the root of the media.

    -   **Boot in BIOS mode**: To prevent Windows PE from booting in UEFI mode, remove the **efi** folder on the root of the media.

## <span id="related_topics"></span>Related topics


[WinPE for Windows 10](winpe-intro.md)

[Windows Setup: Installing using the MBR or GPT partition style](p_adk_online.windows_setup_installing_using_the_mbr_or_gpt_partition_style_blue)

[Wpeutil Command-Line Options](wpeutil-command-line-options.md)

[UEFI Firmware](p_adk_online.uefi_firmware_blue)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20WinPE:%20Boot%20in%20UEFI%20or%20legacy%20BIOS%20mode%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




