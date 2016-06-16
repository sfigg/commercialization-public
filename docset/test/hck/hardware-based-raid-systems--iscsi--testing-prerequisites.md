---
author: joshbax-msft
title: Hardware-based RAID Systems (iSCSI) Testing Prerequisites
description: Hardware-based RAID Systems (iSCSI) Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b18bd467-e897-4497-aad2-5ba08f785923
---

# Hardware-based RAID Systems (iSCSI) Testing Prerequisites


This topic describes the tasks that you must complete before you test an Internet SCSI (iSCSI) hardware-based RAID storage array by using the Windows Hardware Certification Kit (Windows HCK):

-   [Review the hardware requirements](#bkmk-hardwarerequirements).

-   [Review the software requirements](#bkmk-softwarerequirements).

-   [Configure the test computer](#bkmk-configure).

## <a href="" id="bkmk-hardwarerequirements"></a>Hardware Requirements


To test an iSCSI hardware-based RAID array, you need the following hardware. You might need additional hardware if the test device offers other features. To determine whether additional hardware requirements apply, see the description for each test that appears for the device in Windows HCK Studio.

**Note**  
All hardware (except the test device, monitor, keyboard, mouse, and floppy disk drive) must be listed in the Windows Catalog.

 

-   1 test computer that meets the Windows HCK requirements. For more information, see [Windows HCK Prerequisites](windows-hck-prerequisites.md). In addition, this computer must include:

    -   1 logo-compliant Advanced Configuration and Power Interface (ACPI) BIOS, with ACPI enabled by default.

    -   Dual-core or equivalent processor and 4 gigabytes (GB) of memory for Windows client operating systems (for example, Windows 8, Windows 7, and Windows Vista).

    -   Quad-core or equivalent processor and 6 GB of memory for Windows Server® operating systems.

    An equivalent processor is any processor that appears to Windows as if it contains the specified number of CPUs. You can achieve this status through 1 or more physical microprocessors.

-   1 iSCSI RAID storage system (the test device).

    **Note**  
    The RAID system must be a single cabinet that consists of an array controller that's enclosed in an external subsystem with hard disk drives. Or it must be an external array controller that connects to a RAID JBOD. The RAID system can't consist of only a Peripheral Component Interconnect (PCI)–based controller and 1 RAID JBOD.

     

-   At least one 1-GB Ethernet network adapter or iSCSI host bus adapter (HBA).

-   One 1-GB Ethernet switch.

-   1 bootable Advanced Technology Attachment (ATA) or SCSI hard disk drive that has a minimum capacity of 36 GB.

To certify your product for use on servers, the test computer must support four processors and a minimum of 1 GB of RAM. These system capabilities are required to test the Rebalance, D3 State, and Multiple Processor Group functionality of the device and driver. You do not need a computer that actually has more than 64 processors to test your device. Additionally, the server system(s) being used for device or driver testing must have Server Core installed prior to testing. For more information see [Windows Server Installation Options](http://go.microsoft.com/fwlink/p/?LinkID=251454).

If you use a pool of test computers to test your device, at least 1 computer in the pool must contain 4 processors and a minimum of 1 GB of RAM. Additionally, that computer must contain the device and the driver that you want to test. As long as the driver is the same on all the computers in the pool, the system creates a schedule to run against all test computers.

For tests that don't include a driver to test, like tests for a hard disk drive, the Windows HCK scheduler constrains the tests that validate the device's and driver's Rebalance, D3 State, and Multiple Processor Groups functionality to run on the default test computer. You must manually configure this computer to have multiple processor groups. The default computer is the first test computer in the list. Make sure that the first test computer in the list meets the minimum hardware requirements.

**Note**  
Except for para-virtualization drivers (as defined by Windows Logo Program Requirement Policy-0020), you can't use any form of virtualization when you test physical devices and their associated drivers for server certification or signature. Virtualization products don't support the underlying functionality that's required to pass the tests that relate to multiple processor groups, device power management, device PCI functionality, and other tests.

 

## <a href="" id="bkmk-softwarerequirements"></a>Software Requirements


To test a hardware-based RAID array, you need this software:

-   The drivers for the test device.

-   The latest Windows HCK filters or updates.

-   Windows symbol files. These are available from the [Symbol Files](http://go.microsoft.com/fwlink/?LinkId=231439) website.

-   The latest version of the Microsoft® iSCSI Software Initiator.

-   The latest version of Microsoft iSNS Server.

-   The Microsoft .NET Framework 1.1.

The iSCSI Software Initiator and the .NET Framework are available from the [Microsoft Download Center](http://go.microsoft.com/fwlink/?LinkId=229004).

## <a href="" id="bkmk-configure"></a>Configuring the Test Computer


To configure the test computer to test your iSCSI RAID array, follow these steps:

1.  Install the Gigabit Ethernet network adapter or iSCSI HBA in the test computer.

2.  Connect the Gigabit Ethernet switch to a power supply.

    **Note**  
    Don't connect the switch to any other network.

     

3.  Connect the Gigabit Ethernet network adapter or iSCSI HBA in the test computer to the switch.

4.  Connect the disk storage system to the switch.

5.  Install the appropriate Windows operating system on the test computer (onto an NTFS-formatted partition that has at least 36 GB on the hard disk drive), and then configure the computer for your test network. The test network is the network that contains Windows HCK Studio and Windows HCK Controller.

6.  If the test device supports Microsoft Multipath I/O (MPIO), install any multipath drivers and create connections and multiple sessions by selecting **Enable Multi-Path I/O**.

7.  Download and install the .NET Framework 1.1.

8.  Configure the target device to use one-way (target authenticates initiator) Challenge Handshake Authentication Protocol (CHAP).

    If your device supports mutual CHAP, also configure the device to use mutual CHAP.

    **Note**  
    When you configure the device to use CHAP, you must provide a password that's 12 to 16 characters long. If you're configuring the device to use both one-way CHAP and mutual CHAP, you must provide different passwords for the target and the initiator.

     

9.  Log on to the target disk storage system with Persistent Login set.

    **Important**  
    You must log on to the iSCSI target device that's used for testing, or the tests won't work properly.

    For a multipath test environment, if multiple ports (IP addresses) relate to one storage target, you must make sure that at least 2 iSCSI sessions are connected through the IP address to during testing.

     

10. Click **Start**, and then click **Run**.

11. Type **diskmgmt.msc**, and then press Enter.

12. Make sure that the test disks are set as basic disks.

13. Create three NTFS-formatted partitions that are greater than 2 GB each and less than 4 GB each.

    A single logon should display all of these partitions.

14. Install the iSNS software on the test system and configure the target to use the iSNS server.

15. If your device supports digest and you must configure it, configure the test device to support digest.

16. Bind your volumes in the **Favorite Targets** (Windows Vista) or **Bound Volumes** (Windows Server 2003) tab of **iSCSI Initiator Properties**.

17. Verify that the computer can read or write to the test RAID array.

18. Install the Windows HCK client application on the test computer.

19. Use Windows HCK Studio to create a computer pool, and then move the test computer to that pool.

Make sure that the test computer is in the ready state before you begin your testing. If a test requires you to set parameters before you run it, a dialog box will appear for that test. For more information, review the specific test topic.

Some Windows HCK tests require user intervention. When you're running tests for a submission, it's a best practice to run the automated tests in a block separately from manual tests. This prevents a manual test from interrupting the completion of an automated test.

**Warning**  
When testing storage devices, we strongly recommend that you complete all Device Fundamentals tests before starting storage tests. Storage tests will reconfigure your test device, leaving the device in a state unsuitable to support Device Fundamentals tests. The following configurations provide steps to create volume on the storage test device. This is important to complete the Device Fundamental part of testing (DevFund).

 

## Feature-Based Configuration


If your device supports any of the feature(s) in this section, please update the associated configurations steps in addition to the general interface-based configuration steps in the “Configuring the Test Computer” section. Minor modifications may be applicable depending on the specifics of your device form-factor.

See “Hardware-based Raid Systems (Fibre Channel, SAS, SCSI, Serial ATA) Testing Prerequisites” above for feature-based configuration. The features also apply to iSCSI Hardware RAID Array Systems.

 

 






