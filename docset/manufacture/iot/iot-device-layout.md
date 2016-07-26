---
author: kpacquer
Description: 'IoT Device Layout'
title: 'IoT Device Layout'
---

# Reference

Here's some things you can change on your IoT Core device.

## Drive partions:
BSP is a collection of packages that are specific to the device and contains configuration elements that customize the device for specific purposes. The main elements of BSP are detailed below. 

UEFI Read [Boot and UEFI](https://msdn.microsoft.com/windows/hardware/drivers/bringup/boot-and-uefi) for details on UEFI.  

### DeviceLayout.xml 

Device layout specifies the memory layout of the flash drive. This is specified in the DeviceLayout.xml.  For an example, see \iot-adk-addonkit\Common\Packages\DeviceLayout.GPT4GB\devicelayout.xml. Note, many boards use GPT, though the Raspberry Pi 2 uses MBR. To learn more, see [Windows and GPT FAQ](https://msdn.microsoft.com/en-us/library/windows/hardware/dn640535(v=vs.85).aspx).

The following fields are the constants to be specified for IoTCore. 
-  Tag Value 
-  Version IoTUAP 
-  SectorSize 512 
-  ChunkSize 128 
-  DefaultPartitionByteAlignment 0x200000 
 

### Partitions 

IoTCore requires 3 mandatory partitions (EFIESP,MainOS and Data). Additional partitions can be added as per requirements (for example, CrashDump). The supported properties of these partitions are listed below 

Properties EFIESP MainOS Data CrashDump 

FileSystem FAT NTFS NTFS FAT32 

Type (for MBR) 0x0C 0x07 0x07 0x0C 

Type (for GPT) {c12a7328-f81f-11d2-ba4b-00a0c93ec93b} {ebd0a0a2-b9e5-4433-87c0-68b6b72699c7} {ebd0a0a2-b9e5-4433-87c0-68b6b72699c7} {ebd0a0a2-b9e5-4433-87c0-68b6b72699c7} 

Bootable TRUE - - - 

RequiredToFlash TRUE - - - 

 

The Partition sizes are specified in terms of the sectors. Each partition size is specified in different attribute to reflect the exact nature of the size constraint. 

* EFIESP – fixed size, so specified in total sectors 

* MainOS – requires minimum number of sectors free after installing for normal operations, so specified in minimum free sectors after install (MinFreeSectors). The MainOS used sectors 

depends on the OS feature set (MainOS size) included in the OEMInput file. In order to keep this partition size manageable, the ClusterSize is chosen as 0x1000 in general. 

* Data – can dynamically expand up to the available space in the device, if specified to use all remaining space available (UseAllSpace TRUE). Since the partition size is in general larger, ClusterSize of 0x4000 is used. However, this can also be 0x1000.  

* CrashDump – fixed size, so specified in total sectors. 

Storage Size Estimations 

The following diagrams provide an overview of two configurations. 


## OEMDevicePlatform.xml 

This specifies the about of free blocks available in the device and which partitions are compressed. 

## Device Drivers 

BSP also includes a set of device drivers that are specific to the components/silicon used in the board. These are provided by the component vendors / silicon vendors, mostly in the form of .inf and associated .sys/.dll files. See <link> to create the driver packages.  

Typically you'll need at least a display driver and a storage driver.




