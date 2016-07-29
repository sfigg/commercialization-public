---
author: kpacquer
Description: 'IoT Device Layout'
title: 'IoT Device Layout'
---

# Reference

You can update your IoT Core device's drive partitions and layout using the DeviceLayout.xml file.

## Drive partions:
A board support package (BSP) is a collection of packages that are specific to the device and contains configuration elements that customize the device for specific purposes. The main elements of BSP are detailed below. 

UEFI Read [Boot and UEFI](https://msdn.microsoft.com/windows/hardware/drivers/bringup/boot-and-uefi) for details on UEFI.  

### DeviceLayout.xml 

Device layout specifies the memory layout of the flash drive. This is specified in the DeviceLayout.xml. 
Example partition layouts are included in the ADK Add-Ons, for example, \iot-adk-addonkit\Common\Packages\DeviceLayout.GPT4GB\devicelayout.xml.

Note, many boards use GPT, though the Raspberry Pi 2 uses MBR. To learn more, see [Windows and GPT FAQ](https://msdn.microsoft.com/en-us/library/windows/hardware/dn640535(v=vs.85).aspx).

The following fields are the constants to be specified for IoTCore. 

| Tag                           | Value    |
|-------------------------------|----------|
| Version                       | IoTUAP   |
| SectorSize                    | 512      |
| ChunkSize                     | 128      |
| DefaultPartitionByteAlignment | 0x200000 |

### Partitions 

IoTCore requires 3 mandatory partitions (EFIESP,MainOS and Data). Additional partitions can be added as per requirements (for example, CrashDump). The supported properties of these partitions are listed below 

| Properties      | EFIESP                                 | MainOS                                 | Data                                   | CrashDump                              |
|-----------------|----------------------------------------|----------------------------------------|----------------------------------------|------------------------------------------|
| FileSystem      | FAT                                    | NTFS                                   | NTFS                                   | FAT32                                  |
| Type (for MBR)  | 0x0C                                   | 0x07                                   | 0x07                                   | 0x0C                                   |
| Type (for GPT)  | {c12a7328-f81f-11d2-ba4b-00a0c93ec93b} | {ebd0a0a2-b9e5-4433-87c0-68b6b72699c7} | {ebd0a0a2-b9e5-4433-87c0-68b6b72699c7} | {ebd0a0a2-b9e5-4433-87c0-68b6b72699c7} |
| Bootable        | TRUE                                   | -                                      | -                                      | -                                      |
| RequiredToFlash | TRUE                                   | -                                      | -                                      | -                                      |

 

The Partition sizes are specified in terms of the sectors. Each partition size is specified in different attribute to reflect the exact nature of the size constraint. 

* EFIESP – fixed size, so specified in total sectors 

* MainOS – requires minimum number of sectors free after installing for normal operations, so specified in minimum free sectors after install (MinFreeSectors). The MainOS used sectors 

  Depends on the OS feature set (MainOS size) included in the OEMInput file. In order to keep this partition size manageable, the ClusterSize is chosen as 0x1000 in general. 

* Data – can dynamically expand up to the available space in the device, if specified to use all remaining space available (UseAllSpace TRUE). Since the partition size is in general larger, ClusterSize of 0x4000 is used. However, this can also be 0x1000.  

* CrashDump – fixed size, so specified in total sectors. 

Storage Size Estimations 

The following diagrams provide an overview of two configurations. 

**2GB Configuration:**

|Partition    | Contents   | MB   | Sectors | Remarks                    |
|-------------|------------|------|---------|----------------------------|
|EFIESP       | EFIESP     | 32   | 65536   | EFIESP size                |
|Main OS      | Main OS    | 800  | 1638400 | MainOS (estimate)          |
|Main OS      | Free space | 128  | 262144  | MainOS Headroom            |
|Data         | Data       | 883  | 1808384 | Expands to fill free space |
|**TOTAL**        |            | **1843** | **3774464** |                            |

Note: On a typical 2GB (2048MB) flash device, 1843MB is available for storage.

**4GB Configuration:**

|             | Partitions | MB   | Sectors | Remarks                    |
|-------------|------------|------|---------|----------------------------|
|EFIESP       | EFIESP     | 32   | 65536   | EFIESP size                |
|Main OS      | Main OS    | 800  | 1638400 | MainOS (estimate)          |
|Main OS      | Free space | 512  | 1048576 | MainOS Headroom            |
|CrashDump    | Crash Dump | 128  | 1228800 | CrashDump Size             |
|Data         | Data       | 1656 | 3391488 | Expands to fill free space |
|**TOTAL**        |            | **3600** | **7372800** |                            |

Note: On a typical 4GB (4096MB) flash device, 3600MB is available for storage.

## OEMDevicePlatform.xml 

This specifies the about of free blocks available in the device and which partitions are compressed. 

## Device Drivers 

BSP also includes a set of device drivers that are specific to the components/silicon used in the board. These are provided by the component vendors / silicon vendors, mostly in the form of .inf and associated .sys/.dll files. See <link> to create the driver packages.  

Typically you'll need at least a display driver and a storage driver.




