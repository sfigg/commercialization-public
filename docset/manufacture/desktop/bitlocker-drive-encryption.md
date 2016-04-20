---
author: Justinha
Description: BitLocker Drive Encryption
MS-HAID: 'p\_adk\_online.bitlocker\_drive\_encryption'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: BitLocker Drive Encryption
---

# BitLocker Drive Encryption


This topic highlights the requirements for deploying a Windows BitLocker Drive Encryption solution. For more information about BitLocker, see [BitLocker Drive Encryption](http://go.microsoft.com/fwlink/?LinkId=116601) on the TechNet website.

## <span id="What_Is_BitLocker_Drive_Encryption_"></span><span id="what_is_bitlocker_drive_encryption_"></span><span id="WHAT_IS_BITLOCKER_DRIVE_ENCRYPTION_"></span>What Is BitLocker Drive Encryption?


BitLocker provides offline-data and operating-system protection for your computer. BitLocker helps ensure that data that is stored on a computer that is running Windows® is not revealed if the computer is tampered with when the installed operating system is offline. BitLocker uses a microchip that is called a Trusted Platform Module (TPM) to provide enhanced protection for your data and to preserve early boot-component integrity. The TPM can help protect your data from theft or unauthorized viewing by encrypting the entire Windows volume.

BitLocker is designed to offer the most seamless end-user experience with computers that have a compatible TPM microchip and BIOS. A compatible TPM is defined as a version 1.2 TPM that has the BIOS modifications that are required to support the Static Root of Trust Measurement, as defined by the Trusted Computing Group. The TPM interacts with BitLocker to help provide seamless protection when the computer restarts.

The path to the TPM driver file is %WINDIR%\\Inf\\Tpm.inf. For information about how to add the TPM driver to Windows Preinstallation Environment (Windows PE), see [WinPE: Mount and Customize](winpe-mount-and-customize.md).

## <span id="BitLocker_Drive_Encryption_Partitioning_Requirements"></span><span id="bitlocker_drive_encryption_partitioning_requirements"></span><span id="BITLOCKER_DRIVE_ENCRYPTION_PARTITIONING_REQUIREMENTS"></span>BitLocker Drive Encryption Partitioning Requirements


BitLocker must use a system partition that is separate from the Windows partition. The system partition:

-   Must be configured as the active partition.

-   Must not be encrypted or used to store user files.

-   Must have at least 100 megabytes (MB) of space.

-   Must have at least 50 MB of free space.

-   May be shared with a recovery partition.

For more information about BitLocker partitioning requirements, see [Hard Drives and Partitions Overview](hard-drives-and-partitions.md).

## <span id="related_topics"></span>Related topics


[Hard Drives and Partitions Overview](hard-drives-and-partitions.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20BitLocker%20Drive%20Encryption%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




