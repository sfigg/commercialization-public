---
title: System Server Testing Prerequisites
Description: System Server Testing Prerequisites
ms.assetid: 8ef5cdc1-5802-48a5-b3f4-7e511840bc9b
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# System Server Testing Prerequisites

<fm><nav_sidebar><outline></outline></nav_sidebar></fm>

This section describes the tasks that you must complete before you test a device by using the Windows Hardware Lab Kit (Windows HLK):

## Hardware requirements

The following hardware is required for Windows Server System testing. Additional hardware may be required if the test device provides bus-specific support. See the test description for each bus-specific test to determine if there are additional hardware requirements.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Component</th>
<th>Requirement</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Processor</p></td>
<td><p>Server System Certification testing requires that the Server Under Test be populated w/ the maximum number of processors the system supports.</p></td>
</tr>
<tr class="even">
<td><p>Memory</p></td>
<td><p>Server System Certification testing requires that the Server Under Test be populated w/ the maximum amount of memory the system supports for the fastest clock speed supported by the system.</p></td>
</tr>
<tr class="odd">
<td><p>Disk space</p></td>
<td><p>Minimum: 10 GB</p>
<p>Recommended: 40 GB or greater</p>
>[!NOTE]
<p>Computers with more than 16 GB of RAM will require more disk space for paging, hibernation, and dump files</p>
</td>
</tr>
<tr class="even">
<td><p>Drive</p></td>
<td><p>DVD-ROM drive</p></td>
</tr>
</tbody>
</table>

## Infrastructure Requirement and Setup for the Server Stress Test

The Server Stress test requires all test machines to be in a network with a domain controller. The machines themselves must be joined to that domain and have a domain user account created. The reliability of the network is critical to the stress test, if your network is not reliable or setup improperly, the test will either fail or won't start. Make sure the test environment is on a stable and reliable network. Use dynamic IP addressing for all machines. All systems used in testing, such as DHCP, DNS, or Active Directory Domain Controller, must be the latest version and service pack of the operating system.

## Server System under Test (SUT) Requirements

-   Physical machine (see previous table)

-   Maximum number of processors that the SUT supports.

-   The maximum memory capacity that the SUT supports.

-   At least one Gigabit network adapter, or additional network adapters, being used for testing.

-   One hard disk drive to be used for installing the operating system. This hard disk drive should have two partitions. Partition 1 should have at least 1.5 GB, and less than 5 GB, of space that is configured as Active, System. Partition 2 should have at least 40 GB of space (or the Windows Server minimum requirement) that is configured as Boot, Page File, Crash Dump.

-   One Gigabit Ethernet network hub.

-   SUT computer name must be 154 characters or less.

## Client System Requirements

The system failure of even a single client will cause the entire test to fail. To minimize the likelihood of client system failures, use the following criteria to help you choose computers and other hardware for this test:

-   Make sure that your computers have resources that exceed the minimum CPU and RAM requirements for the version of Windows Server that is being tested on the SUT and installed on the stress client systems.

-   Make sure that all NICs and device drivers have already been Certified for the Windows Server that is being tested. The bandwidth of the NICs in the client computers must be equal to the bandwidth of the NIC in the SUT.

-   Plug all client computers into UPS power protection units.

-   Connect all client computers with high quality cabling, routers, and switches.

-   Use highly redundant storage and memory components: For example, ECC or better memory protection, MPIO Duplexing for storage, RAID hard disks, Teaming for NICs etc.

## Software requirements

The following software is required to run the Windows Server System tests:

-   Use Windows Server Datacenter to enable all the processors and exercise all possible features in the system being tested (SUT). This applies for Certification testing or for any possible additional feature tests such as those for Fault Tolerance or Enhanced Power Management.

-   Use the Windows Server that is being tested for the master client and the stress client systems

-   Any drivers that are not shipped with Windows Server.

-   The optional Windows Server BitLocker Drive Encryption component must be installed on the server if it is supported by the vendor pre-installed.

<note type="warning">
The System Tests topic provides more information about the system requirements for the BitLocker Drive Encryption tests.


## Tester knowledge requirements

To run the Windows Server System tests, you must know how to perform the following tasks:

-   Create, format, and remove partitions on a hard disk drive.

-   Set power management options.

-   Install and configure a network.

-   Install the operating system from the product DVD.

-   Download a service pack for an operating system.

-   Install the Active Directory Domain Services Role.

-   Create a domain.

-   Set up the systems to be used in testing at the BIOS/FW/UEFI level.

## Test server configuration

To certify your product for use on servers, the test computer must support four processors and a minimum of 1 GB of RAM. These system capabilities are required to test the Rebalance, D3 State, and Multiple Processor Group functionality of the device and driver. You do not need a computer that actually has more than 64 processors to test your device. Additionally, the server system(s) being used for device or driver testing must have Server Core installed prior to testing. For more information see <xref hlink="http://go.microsoft.com/fwlink/p/?LinkID=251454">Windows Server Installation Options</b>.

If you use a pool of test computers to test devices, at least one computer in the pool must contain four processors and a minimum of 1 GB of RAM. Additionally, that computer must contain the device and the driver that you want to test. As long as the driver is the same on all the computers in the pool, the system creates a schedule to run against all test computers.

For tests that do not include a driver to test, such as hard disk drive tests, the Windows HLK scheduler constrains the tests that validate the device’s and driver’s Rebalance, D3 State and Multiple Processor Groups functionality to run on the default test computer. You must manually configure this computer to have multiple processor groups. The default computer is the first test computer in the list. Test personnel must make sure that the first test computer in the list meets the minimum hardware requirements.

Except for para-virtualization drivers (as defined by the <xref hlink="http://go.microsoft.com/fwlink/p/?LinkID=615222">WHCP Policies and Processes</b> document), you may not use any form of virtualization when you test physical devices and their associated drivers for server certification or signature. All virtualization products do not support the underlying functionality that is required to pass the tests that relate to multiple processor groups, device power management, device PCI functionality, and other tests.

>[!NOTE]
Multiple Processor Groups Setting
You must set the value for the processor group size for Hardware Lab Kit testing of Windows Server 2008 R2 and later device drivers for certification. This is done by running bcdedit in an elevated command prompt window, using the /set option.

The commands for adding the group settings and restarting are as follows:

`bcdedit.exe /set groupsize 2 bcdedit.exe /set groupaware on shutdown.exe -r -t 0 -f`
The commands for removing the group settings and rebooting are as follows:

`bcdedit.exe /deletevalue groupsize bcdedit.exe /deletevalue groupaware shutdown.exe -r -t 0 -f`

>[!NOTE]
**Code Integrity Setting**

The Virtualization Based Security feature (VBS) of Windows Server 2016 must be enabled using Server Manager first.

Once that has occurred, the following Registry key must be created and set:

`HKLM\System\CurrentControlSet\Control\DeviceGuard HypervisorEnforcedCodeIntegrity:REG_DWORD 0 or 1 (disabled, enabled)`





