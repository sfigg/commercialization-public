---
Description: Deploy Windows RE
MS-HAID: 'p\_adk\_online.deploy\_windows\_re'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Deploy Windows RE
---

# Deploy Windows RE


Use these steps to deploy Windows® Recovery Environment (Windows RE) to a new computer, to help end users repair a PC when a system failure occurs.

## <span id="Prerequisites"></span><span id="prerequisites"></span><span id="PREREQUISITES"></span>Prerequisites


To complete this walkthrough, you need the following:

-   A destination computer that has been configured with a Windows RE tools partition, and optionally, a recovery image partition. For more information, see [Capture and Apply Windows, System, and Recovery Partitions](p_adk_online.capture_and_apply_windows_system_and_recovery_partitions_win8).
-   Optional: Customize your recovery media. For more information, see [Customize Windows RE](p_adk_online.customize_windows_re_win8).
-   Optional: Customize your recovery media to include custom tools. For more information, see [Add a Custom Tool to the Windows RE Boot Options Menu](p_adk_online.add_a_custom_tool_to_the_windows_re_boot_options_menu_win8).

## <span id="DeployWindowsRE"></span><span id="deploywindowsre"></span><span id="DEPLOYWINDOWSRE"></span>Step 1: Deploy Windows RE


1.  Create a new directory in the Windows RE Tools partition, and then copy your custom Windows RE tools image (Winre.wim) to this directory. The following are examples based on your firmware type:

    **UEFI:**

    ``` syntax
    mkdir T:\Recovery\WindowsRE

    xcopy /h W:\Windows\System32\Recovery\Winre.wim T:\Recovery\WindowsRE
    ```

    where *T:* is the drive letter of your Windows RE Tools partition. For example:

    **BIOS:**

    ``` syntax
    mkdir S:\Recovery\WindowsRE

    xcopy /h W:\Windows\System32\Recovery\Winre.wim S:\Recovery\WindowsRE
    ```

    where *S:* is the system partition.

2.  Register your custom Windows RE tools image:

    **UEFI:**

    ``` syntax
    C:\Windows\System32\Reagentc /setreimage /path T:\Recovery\WindowsRE /target W:\Windows
    ```

    where *T:* is the Windows RE Tools partition.

    **BIOS**

    ``` syntax
    C:\Windows\System32\Reagentc /setreimage /path S:\Recovery\WindowsRE /target W:\Windows
    ```

    where *S:* is the System partition.

3.  Optional: If you have added a custom tool to your Windows RE boot image, register it so that it will appear on the **Boot Options** menu:

    ``` syntax
    Reagentc /setbootshelllink /configfile E:\Recovery\BootMenu\AddDiagnosticsToolToBootMenu.xml
    ```

    For more information about adding a custom tool, see [Add a Custom Tool to the Windows RE Boot Options Menu](p_adk_online.add_a_custom_tool_to_the_windows_re_boot_options_menu_win8).

4.  Optional: Configure a hardware recovery button (or button combination) to run a secondary boot path that contains Windows RE. For more information, see [Add a Hardware Recovery Button to Start Windows RE](p_adk_online.add_a_hardware_recovery_button_to_start_windows_re_win8).

## <span id="PrepareScripts"></span><span id="preparescripts"></span><span id="PREPARESCRIPTS"></span>Step 2: Identify the Recovery Partitions and Hide the Drive Letters


**Note**   If you want to configure push-button reset features for Windows 8 editions, skip this section, and go to the topic: [Deploy Push-Button Reset Features](p_adk_online.deploy_push_button_reset_features_win8).

 

Configure your partitions as recovery partitions, and then conceal the drive letters so the partitions don't appear in common Windows menus, such as File Explorer.

**Prepare a DiskPart script to identify the recovery partitions and to hide drive letters**

1.  In Notepad, create a text file that includes commands to identify and hide the recovery partitions. The following examples are based on your firmware type:

    **UEFI:**

    Use the ID: PARTITION\_MSFT\_RECOVERY\_GUID (de94bba4-06d1-4d40-a16a-bfd50179d6ac) to define the partitions as recovery partitions.

    Use the GPT attributes: 0x8000000000000001 to hide the drive letters and to mark them as required, by using a combination of two attributes: GPT\_BASIC\_DATA\_ATTRIBUTE\_NO\_DRIVE\_LETTER and GPT\_ATTRIBUTE\_PLATFORM\_REQUIRED.

    For more information about UEFI hard drive partition attributes, see [PARTITION\_INFORMATION\_GPT structure](http://go.microsoft.com/fwlink/?LinkId=240300).

    ``` syntax
    rem == HideRecoveryPartitions-UEFI.txt
    select disk 0
    select partition 1
    remove
    set id=de94bba4-06d1-4d40-a16a-bfd50179d6ac
    gpt attributes=0x8000000000000001
    rem == If Push-button reset features are included, add the following commands:
    rem    select partition 5
    rem    remove
    rem    set id=de94bba4-06d1-4d40-a16a-bfd50179d6ac
    rem    gpt attributes=0x8000000000000001
    list volume
    ```

    **BIOS:**

    Use the attribute: `id=27` to define the system partition, and use the `remove` command to remove the drive letter.

    ``` syntax
    rem == HideRecoveryPartitions-BIOS.txt
    select disk 0
    select partition 3
    set id=27
    remove
    list volume
    exit
    ```

2.  Save your completed file as either E:\\Recovery\\HideRecoveryPartitions-UEFI.txt or E:\\Recovery\\HideRecoveryPartitions-BIOS.txt, based on your firmware type.

**Identify and hide the drive letters**

-   Run the diskpart script to identify and hide the recovery partitions:

    ``` syntax
    Diskpart /s E:\Recovery\HideRecoveryPartitions-<firmware>.txt
    ```

    Where *&lt;firmware&gt;* is either UEFI or BIOS.

**Verify that the Windows RE configuration is set correctly**

-   Open an administrative command prompt.

    Verify the Windows RE information:

    ``` syntax
    reagentc /info
    ```

    Verify the following:

    -   Windows RE status is enabled.
    -   Windows RE location is on the correct partition.
    -   The BCD GUID entry for WinRE is the same as the WinRE GUID entry in the file: reagent.xml. On BIOS-based PCs, this file is on the system partition, at \\Recovery\\(GUID)\\. On UEFI-based PCs, this file is on the Windows RE Tools partition, at \\Recovery\\WindowsRE\\.
    -   WinRE is located in the \\Recovery\\WindowsRE directory

## <span id="related_topics"></span>Related topics


[Windows Recovery Environment (Windows RE) Technical Reference](windows-recovery-environment--windows-re--technical-reference.md)

[DISM Image Management Command-Line Options](dism-image-management-command-line-options-s14.md)

[Customize Windows RE](p_adk_online.customize_windows_re_win8)

[Add a Custom Tool to the Windows RE Boot Options Menu](p_adk_online.add_a_custom_tool_to_the_windows_re_boot_options_menu_win8)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Deploy%20Windows%20RE%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




