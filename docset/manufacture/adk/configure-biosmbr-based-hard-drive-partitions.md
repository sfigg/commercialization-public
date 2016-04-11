---
Description: 'BIOS/MBR-based hard drive partitions'
MS-HAID: 'p\_adk\_online.configure\_biosmbr\_based\_hard\_drive\_partitions'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'BIOS/MBR-based hard drive partitions'
---

# BIOS/MBR-based hard drive partitions


Create custom partition layouts for your hard disk drives (HDDs), solid-state drives (SSDs), and other drives when deploying Windows to BIOS–based devices.

**Note**  If you use a custom partition layout on Windows 10 for desktop editions (Home, Pro, Enterprise, and Education), update the push-button recovery script so the recovery tools can recreate the custom partition layout when needed.

 

In this topic:

-   [Drive partition rules](#diskpartitionrules)
-   [Partition layout](#recommendedpartitionconfigurations)
-   [System and utility partitions](#usingsystemandutilitypartitions)
-   [Sample Diskpart script](#relatedsamplefiles)

## <span id="DiskPartitionRules"></span><span id="diskpartitionrules"></span><span id="DISKPARTITIONRULES"></span>Drive partition rules


When you deploy Windows to a BIOS-based device, you must format hard drives by using an MBR file system. Windows does not support the GUID partition table (GPT) file system on BIOS-based computers.

An MBR drive can have up to four standard partitions. Typically, these standard partitions are designated as *primary partitions*. For information about how to create additional partitions beyond this limit, see [Configure More than Four Partitions on a BIOS/MBR-Based Hard Disk](configure-more-than-four-partitions-on-a-biosmbr-based-hard-disk.md).

**Windows partition requirements:**

-   **System partition**

    Each bootable drive must contain a system partition. The system partition must be configured as the active partition.

    The minimum size of this partition is 100 MB.

-   **Windows partition**
    -   This partition must have at least 20 gigabytes (GB) of drive space for 64-bit versions, or 16 GB for 32-bit versions.
    -   This partition must be formatted using the NTFS file format.
    -   This partition must have enough 10 GB of free space after the user has completed the Out Of Box Experience (OOBE).
    -   This partition can have a maximum of 2 terabytes (TB) of space. Software tools to extend the visible partition space beyond 2 TB are not supported on BIOS because they can interfere with software solutions for application compatibility and recovery.
-   **Recovery tools partition**

    The Windows Recovery Environment (Windows RE) tools image (winre.wim) should be in a separate partition than the Windows partition to support automatic failover and to support booting Windows BitLocker Drive Encryption-encrypted partitions.

    While this image can be included on the same partition as the system partition, we recommend that you place this partition in a separate partition, immediately after the Windows partition. This allows Windows to modify and recreate the partition later if future updates require a larger recovery image.

    This partition must have enough space for the Windows Recovery Environment tools image (winre.wim, typically between 250-300MB, depending on base language and customizations added), plus enough free space so that the partition can be captured by backup utilities:

    -   If the partition is less than 500 MB, it must have at least 50 MB of free space.
    -   If the partition is 500 MB or larger, it must have at least 320 MB of free space.
    -   If the partition is larger than 1 GB, we recommend that it should have at least 1 GB free.

    <!-- -->

    -   It must have at least 320 MB of free space.
    -   We recommend that it should have at least 1 GB free.
-   **Data partitions**

    The recommended partition layout for Windows 10 does not include utility or data partitions.

    However, if utility or data partitions are required, they should be placed either before the Windows partition or after the Windows RE partition. By keeping the Windows and recovery partitions together, then when future updates of Windows RE area available, Windows will be able to grow the Windows RE partition by shrinking the Windows partition.

    This layout makes it more difficult for end users to remove the data partition and merge the space with the Windows partition. For example, the Windows RE partition may need to be moved to the end of the unused space reclaimed from the data partition, so that the Windows partition can be extended. Windows 10 does not include functionality or utility to facilitate this process. However, manufacturers can develop and provide such a utility if PCs are shipped with data partitions.

    Each partition can have a maximum of 2 terabytes (TB) of space.

    If you're going to be adding more than four total partitions to the disk, see [Configure More than Four Partitions on a BIOS/MBR-Based Hard Disk](configure-more-than-four-partitions-on-a-biosmbr-based-hard-disk.md) for more info.

## <span id="RecommendedPartitionConfigurations"></span><span id="recommendedpartitionconfigurations"></span><span id="RECOMMENDEDPARTITIONCONFIGURATIONS"></span>Partition layout


If you install Windows using a bootable USB key made by Windows Imaging and Configuration Designer (ICD), it creates the following layout by default: a system partition, a Windows partition, and a recovery tools partition.

![diagram of default partition layout: system, windows, and recovery](images/dep-win10-partitions-bios.png)

## <span id="UsingSystemAndUtilityPartitions"></span><span id="usingsystemandutilitypartitions"></span><span id="USINGSYSTEMANDUTILITYPARTITIONS"></span>System and utility partitions


By default, system partitions do not appear in File Explorer. This helps protect end users from accidentally modifying a partition.

**To set partitions as utility partitions**

1.  When you are deploying Windows by using Windows ICD, the partition type will be set automatically.
2.  When you are deploying Windows by using the **DiskPart** tool, use the **set id=27** command after you create the partition.

**To verify that system and utility partitions exist**

1.  Click **Start**, right-click **This PC**, and then click **Manage**. The **Computer Management** window opens.
2.  Click **Disk Management**. The list of available drives and partitions appears.
3.  In the list of drives and partitions, confirm that the system and utility partitions are present and are not assigned a drive letter.

## <span id="RelatedSampleFiles"></span><span id="relatedsamplefiles"></span><span id="RELATEDSAMPLEFILES"></span>Sample files: configuring disk layout by using Windows PE and DiskPart scripts


For image-based deployment, boot the PC to [Windows PE](winpe-intro.md), and then use the **DiskPart** tool to create the partition structures on your destination PCs.

**Note**  
In these **DiskPart** examples, the partitions are assigned the letters: System=S, Windows=W, and Recovery=R.

We recommend changing the Windows drive letter to a letter that’s near the end of the alphabet, such as W, to avoid drive letter conflicts. Do not use X, because this drive letter is reserved for Windows PE. After the device reboots, the Windows partition is assigned the letter C, and the other partitions don’t receive drive letters.

If you reboot, Windows PE reassigns disk letters alphabetically, starting with the letter C, without regard to the configuration in Windows Setup. This configuration can change based on the presence of different drives, such as USB flash drives.

 

The following steps describe how to partition your hard drives and prepare to apply images. You can use the code in the sections that follow to complete these steps.

**To partition hard drives and prepare to apply images**

1.  Save the following code as a text file (CreatePartitions-BIOS.txt) on a USB flash drive.

    ``` syntax
    rem == CreatePartitions-BIOS.txt ==
    rem == These commands are used with DiskPart to
    rem    create three partitions
    rem    for a BIOS/MBR-based computer.
    rem    Adjust the partition sizes to fill the drive
    rem    as necessary. ==
    select disk 0
    clean
    rem == 1. System partition ======================
    create partition primary size=100
    format quick fs=ntfs label="System"
    assign letter="S"
    active
    rem == 2. Windows partition =====================
    rem ==    a. Create the Windows partition =======
    create partition primary
    rem ==    b. Create space for the recovery tools  
    shrink minimum=500
    rem       ** NOTE: Update this size to match the
    rem                size of the recovery tools 
    rem                (winre.wim)                 **
    rem ==    c. Prepare the Windows partition ====== 
    format quick fs=ntfs label="Windows"
    assign letter="W"
    rem == 3. Recovery tools partition ==============
    create partition primary
    format quick fs=ntfs label="Recovery"
    assign letter="R"
    set id=27
    list volume
    exit
    ```

2.  Use Windows PE to boot the destination computer.
3.  Clean and partition the drive. In this example, *F* is the letter of the USB flash drive.

    ``` syntax
    DiskPart /s F:\CreatePartitions-BIOS.txt
    ```

4.  If you use a custom partition layout on Windows 10 for desktop editions, update the push-button recovery script so the recovery tools can recreate the custom partition layout when needed.

## <span id="NextSteps"></span><span id="nextsteps"></span><span id="NEXTSTEPS"></span>Next steps


Use a deployment script to apply the Windows images on the newly created partitions. For more information, see [Capture and Apply Windows, System, and Recovery Partitions](p_adk_online.capture_and_apply_windows_system_and_recovery_partitions_win8).

## <span id="related_topics"></span>Related topics


[Configure More than Four Partitions on a BIOS/MBR-Based Hard Disk](configure-more-than-four-partitions-on-a-biosmbr-based-hard-disk.md)

[Configure UEFI/GPT-Based Hard Drive Partitions](configure-uefigpt-based-hard-drive-partitions.md)

[BitLocker Drive Encryption](p_adk_online.bitlocker_drive_encryption_win8)

[Configuring Disk Mirroring](http://go.microsoft.com/fwlink/?LinkId=733824)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20BIOS/MBR-based%20hard%20drive%20partitions%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




