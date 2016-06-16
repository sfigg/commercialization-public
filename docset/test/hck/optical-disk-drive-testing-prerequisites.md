---
author: joshbax-msft
title: Optical Disk Drive Testing Prerequisites
description: Optical Disk Drive Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 311a51a4-8aad-4c73-aa61-cecf9aeac946
---

# Optical Disk Drive Testing Prerequisites


This topic describes the tasks that you must complete before you test an optical storage device by using the Windows Hardware Certification Kit (Windows HCK):

-   [Review the hardware requirements](#bkmk-hardwarerequirements).

-   [Review the software requirements](#bkmk-softwarerequirements).

-   [Configure the test computer](#bkmk-configure).

The optical storage device includes rewritable drives for CD, DVD, and Blu-ray media.

## <a href="" id="bkmk-hardwarerequirements"></a>Hardware Requirements


To test an optical drive, you need the following hardware. You might need additional hardware if the test device offers other features. To determine whether additional hardware requirements apply, see the description for each test that appears for the device in Windows HCK Studio.

-   1 test computer that meets the Windows HCK requirements. For more information, see [Windows HCK Prerequisites](windows-hck-prerequisites.md). In addition, this computer must have one of the following types of processors:

    -   Dual-core or equivalent processor and 4 gigabytes (GB) of memory for Windows client operating systems (for example, Windows 8, Windows 7, and Windows Vista).

    -   Quad-core or equivalent processor and 6 GB of memory for Windows Server® operating systems.

    The test computer must contain one dual-channel Advanced Technology Attachment (ATA)/Advanced Technology Attachment Packet Interface (ATAPI) controller that's implemented on the motherboard. The test computer must also contain a logo-compliant Advanced Configuration and Power Interface (ACPI) BIOS, with ACPI enabled by default. For Windows 8, Windows 7, and Windows Vista, BIOS configuration and Serial Advanced Technology Attachment (SATA) controller support of SATA Advanced Host Controller Interface (AHCI) mode are required.

-   2 identical optical disk drives for testing.

    **Note**  
    If the optical disk drive that you're testing is read-only, you must connect a writer drive in addition to the two drives that you test.

     

-   1 host controller of the same bus type as the optical storage device. The USB controller must be able to wake the system by using ACPI mechanisms.

-   Appropriate cables for connecting devices.

-   Blank media for each type of media that the test device supports.

To certify your product for use on servers, the test computer must support four processors and a minimum of 1 GB of RAM. These system capabilities are required to test the Rebalance, D3 State, and Multiple Processor Group functionality of the device and driver. You do not need a computer that actually has more than 64 processors to test your device. Additionally, the server system(s) being used for device or driver testing must have Server Core installed prior to testing. For more information see [Windows Server Installation Options](http://go.microsoft.com/fwlink/p/?LinkID=251454).

If you use a pool of test computers to test your device, at least 1 computer in the pool must contain 4 processors and a minimum of 1 GB of RAM. Additionally, that computer must contain the device and the driver that you want to test. As long as the driver is the same on all the computers in the pool, the system creates a schedule to run against all test computers.

For tests that don't include a driver to test, like tests for a hard disk drive, the Windows HCK scheduler constrains the tests that validate the device's and driver's Rebalance, D3 State, and Multiple Processor Groups functionality to run on the default test computer. You must manually configure this computer to have multiple processor groups. The default computer is the first test computer in the list. Make sure that the first test computer in the list meets the minimum hardware requirements.

**Note**  
Except for para-virtualization drivers (as defined by Windows Logo Program Requirement Policy-0020), you can't use any form of virtualization when you test physical devices and their associated drivers for server certification or signature. Virtualization products don't support the underlying functionality that's required to pass the tests that relate to multiple processor groups, device power management, device Peripheral Component Interconnect (PCI) functionality, and other tests.

 

## <a href="" id="bkmk-softwarerequirements"></a>Software Requirements


To test an optical storage device, you need this software:

-   The drivers for the test device

-   The latest Windows HCK filters or updates

## <a href="" id="bkmk-configure"></a>Configuring the Test Computer


To configure the test computer for your test device, follow these steps:

1.  Turn off the test system, disconnect it from the power supply, and install a hard disk drive. Depending on the bus type of the test optical storage device, take one of these actions:

    -   For ATA/ATAPI, install the hard disk drive as stand-alone Device 0 on the primary ATA/ATAPI channel.

    -   For SCSI, set the SCSI ID on the SCSI hard disk drive to 0.

2.  If the host controller is not embedded on the system motherboard, install the host controller.

3.  Install the test optical storage devices in the test system by attaching them to the host controller. Depending on the bus type of the test optical storage device, take one of these actions:

    -   For ATA/ATAPI, install the test device as Device 1 or Cable Select Device 1 on the primary ATA/ATAPI channel. Or install the test device as Device 0, Device 1, Cable Select Device 0, or Cable Select Device 1 on the secondary ATA/ATAPI channel.

    -   For SCSI, set the SCSI ID on the test device to 6.

    -   For USB, connect the test device to the downstream port of the high-speed USB 2.0 hub.

        **Note**  
        Don't connect the USB test device directly to the root hub of the USB 2.0 controller.

         

4.  Turn on the test system and set the system BIOS to support the S3 state.

    **Note**  
    All adapters are operated with BIOS enabled and external termination unless otherwise noted.

     

5.  Install the appropriate Windows operating system on the test computer, and then configure the computer for your test network. The test network is the network that contains Windows HCK Studio and Windows HCK Controller.

6.  If you must install the manufacturer-supplied device driver on the test computer, do this now.

7.  Verify that both optical storage devices function correctly on the test computer.

8.  Install the Windows HCK client application on the test computer.

9.  Use Windows HCK Studio to create a computer pool, and then move the test computer to that pool.

Make sure that the test computer is in the ready state before you begin your testing. If a test requires you to set parameters before you run it, a dialog box will appear for that test. For more information, review the specific test topic.

Some Windows HCK tests require user intervention. When you're running tests for a submission, it's a best practice to run the automated tests in a block separately from manual tests. This prevents a manual test from interrupting the completion of an automated test.

**Warning**  
When testing storage devices, we strongly recommend that you complete all Device Fundamentals tests before starting storage tests. Storage tests will reconfigure your test device, leaving the device in a state unsuitable to support Device Fundamentals tests. The following configurations provide steps to create volume on the storage test device. This is important to complete the Device Fundamental part of testing (DevFund).

 

 

 






