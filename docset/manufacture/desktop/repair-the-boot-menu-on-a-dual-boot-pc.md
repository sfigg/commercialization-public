---
Description: 'Repair the boot menu on a dual-boot PC'
MS-HAID: 'p\_adk\_online.repair\_the\_boot\_menu\_on\_a\_dual\_boot\_pc'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Repair the boot menu on a dual-boot PC'
---

# Repair the boot menu on a dual-boot PC


When setting up a PC to boot more than one operating system, you may sometimes lose the ability to boot into one of the operating systems. The BCDBoot option allows you to quickly add boot options for a Windows-based operating system.

## <span id="Repairing_a_Windows_partition_on_a_dual-boot_PC"></span><span id="repairing_a_windows_partition_on_a_dual-boot_pc"></span><span id="REPAIRING_A_WINDOWS_PARTITION_ON_A_DUAL-BOOT_PC"></span>Repairing a Windows partition on a dual-boot PC


1.  Install a separate hard drive or prepare a separate partition for each operating system.

2.  Install the operating systems. For example, if your PC has Windows 8.1, install Windows 10 onto the other hard drive or partition.

3.  Reboot the PC. The boot menus should appear with both operating systems listed.

    If both operating systems aren't listed:

    1.  Open a command line, either as an administrator from inside Windows, or by booting to a command line using the Windows installation disk and presssing Shift+F10, or by booting to Windows PE ([WinPE: Create USB Bootable drive](winpe-create-usb-bootable-drive.md)).

    2.  Add boot options for a Windows operating system.

        ``` syntax
        Bcdboot D:\Windows
        ```

    3.  Reboot the PC. Now, the boot menu will show both menu options.

## <span id="Repair_another_operating_system_partition"></span><span id="repair_another_operating_system_partition"></span><span id="REPAIR_ANOTHER_OPERATING_SYSTEM_PARTITION"></span>Repair another operating system partition


You can manually add create partitions using BCDEdit, or you can use a third-party tool such as [EasyBCD](http://go.microsoft.com/fwlink/?LinkId=330254) to set up the boot partitions.

## <span id="related_topics"></span>Related topics


[BCDboot Command-Line Options](bcdboot-command-line-options-8-techref-di.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Repair%20the%20boot%20menu%20on%20a%20dual-boot%20PC%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




