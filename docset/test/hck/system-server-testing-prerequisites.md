---
author: joshbax-msft
title: System Server Testing Prerequisites
description: System Server Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d543717c-da77-4c98-ad10-d3ccd40c1a1a
---

# System Server Testing Prerequisites


This section describes the tasks that you must complete before you test a device by using the Windows Hardware Certification Kit (Windows HCK):

-   [Hardware requirements](#bkmk-hck-server-hr)

-   [Software requirements](#bkmk-hck-server-sr)

## <a href="" id="bkmk-hck-server-hr"></a>Hardware requirements


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
<div class="alert">
<strong>Note</strong>  
<p>Computers with more than 16 GB of RAM will require more disk space for paging, hibernation, and dump files</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td><p>Drive</p></td>
<td><p>DVD-ROM drive</p></td>
</tr>
</tbody>
</table>

 

### Infrastructure Requirement and Setup for the Server Stress Test

The Server Stress test requires all test machines to be in a network with a domain controller. The machines themselves must be joined to that domain and have a domain user account created. The reliability of the network is critical to the stress test, if your network is not reliable or setup improperly, the test will either fail or won't start. Make sure the test environment is on a stable and reliable network. Use dynamic IP addressing for all machines. All systems used in testing, such as DHCP, DNS, or Active Directory Domain Controller, must be the latest version and service pack of the operating system.

### Server System under Test (SUT) Requirements

-   Physical machine (see previous table)

-   Maximum number of processors that the SUT supports.

-   The maximum memory capacity that the SUT supports.

-   At least one Gigabit network adapter, or additional network adapters, being used for testing.

-   One hard disk drive to be used for installing the operating system. This hard disk drive should have two partitions. Partition 1 should have at least 1.5 GB, and less than 5 GB, of space that is configured as Active, System. Partition 2 should have at least 40 GB of space (or the Windows Server minimum requirement) that is configured as Boot, Page File, Crash Dump.

-   One Gigabit Ethernet network hub.

-   SUT computer name must be 154 characters or less.

### Client System Requirements

The system failure of even a single client will cause the entire test to fail. To minimize the likelihood of client system failures, use the following criteria to help you choose computers and other hardware for this test:

-   Make sure that your computers have resources that exceed the minimum CPU and RAM requirements for the version of Windows Server that is being tested on the SUT and installed on the stress client systems.

-   Make sure that all NICs and device drivers have already been Certified for the Windows Server that is being tested. The bandwidth of the NICs in the client computers must be equal to the bandwidth of the NIC in the SUT.

-   Plug all client computers into UPS power protection units.

-   Connect all client computers with high quality cabling, routers, and switches.

-   Use highly redundant storage and memory components: For example, ECC or better memory protection, MPIO Duplexing for storage, RAID hard disks, Teaming for NICs etc.

## <a href="" id="bkmk-hck-server-sr"></a>Software requirements


The following software is required to run the Windows Server System tests:

-   Use Windows Server Datacenter to enable all the processors and exercise all possible features in the system being tested (SUT). This applies for Certification testing or for any possible additional feature tests such as those for Fault Tolerance or Enhanced Power Management.

-   Use the Windows Server that is being tested for the master client and the stress client systems

-   Any drivers that are not shipped with Windows Server.

-   The optional Windows Server BitLocker Drive Encryption component must be installed on the server if it is supported by the vendor pre-installed.

**Warning**  
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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20System%20Server%20Testing%20Prerequisites%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




