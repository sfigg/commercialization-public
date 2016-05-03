---
author: joshbax-msft
title: UEFI Tpr Test
description: UEFI Tpr Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8c40d751-5583-487a-a057-ab0b979171d3
---

# UEFI Tpr Test


This test validates the UEFI implementation of the TPR command. eDrives unlocked by the operating system will remain unlocked on system crashes causing a security vulnerability for all such drives as the operating system cannot lock the drive on the crash. UEFI systems must issue a TPR command to each eDrive on the system to ensure that the drive is locked before booting into an operating system.

For example, this test creates a band on all eDrives and sets the state of that band to temporarily unlocked before invoking a system crash. Upon restart, the test runs again and checks the state of the band to ensure that it is locked.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.Firmware.TPR.UEFIEncryptedHDD</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~20 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md).

This test is a system test and as such runs against all systems and not specific drives in the device testing. All systems with UEFI and an eDrive attached will see this test in list of tests to run. A UEFI system with more than one eDrive will be checked for compliance.

The test will configure the system before causing a manually initiated bug check and finally validating the state of the drive after the system has rebooted. This means that seeing a manually initiated stop error is expected.

## Troubleshooting


For additional troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

The test needs to create a new band on the eDrive for testing, which requires that there is free space available to create the partition and band. If the eDrive already has volumes on it, the test will attempt to shrink a volume and use the free space to do the testing. If an error is encountered when trying to prepare the drive before the manually initiated crash, the following steps can be taken:

-   This error may be seen in the test logs as a VDS failure.

-   Manually remove all volumes from data drives by performing **diskpart clean** on the disk.

-   If the disk contains the boot volume, shrink volumes to create at least 100 MB of free space on boot volumes before running the test. This can be accomplished by using Disk Management.

## More information


The test is a system test and does all of its own device enumeration. The job first installs the bugcheck driver which allows the user-mode test application to force a system crash. During phase 1 of the test, the system is checked to ensure it is a UEFI system and has at least one eDrive connected. If the system does not meet these criteria the test is skipped and appears as a pass in the HCK studio and manager. For each eDrive enumerated on the system, a new 100MB band is created. If the drive already contains partitions such that there is not 100MB of free space, VDS is invoked to shrink the largest partition to create room for a new band. This means that the partitions on the drive must have been created in Windows and are not managed by a 3rd party TCG solution. Each of the new bands is set to the Temporary Unlock state before invoking the crashdump driver to cause a manually initiated system crash. When the system reboots the second part of the test runs to check that each of the bands is locked. Any unlocked bands cause the test to fail. The test bands are removed and the partitions extended if they were previously shrunk. Finally, the crashdump driver is removed from the system.

### Command usage

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>UefiTprTest.exe phase1</strong></p></td>
<td><p>Run phase 1 of the test to prepare the drives before crashing the system.</p></td>
</tr>
<tr class="even">
<td><p><strong>UefiTprTest.exe phase2</strong></p></td>
<td><p>Run phase 2 of the test to check the state of the drives after the reboot.</p></td>
</tr>
</tbody>
</table>

 

### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>UefiTprTest.exe</p></td>
<td><p>The command-line options for the test are listed below.</p></td>
</tr>
<tr class="even">
<td><p>Phase1</p></td>
<td><p>Phase 1 prepares the drives for testing. This is needed to get the drives in the state they are needed before crashing the system.</p></td>
</tr>
<tr class="odd">
<td><p>Phase2</p></td>
<td><p>Phase 2 does the validation of the drives and their state after crashing the system.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command line help for this test binary, type **/?**.

 

### File list

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>File</p></td>
<td><p>Location</p></td>
</tr>
<tr class="even">
<td><p>bugcheck.sys</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\</p></td>
</tr>
<tr class="odd">
<td><p>common.js</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\NTTEST\driverstest\storage\crashdump\scripts\</p></td>
</tr>
<tr class="even">
<td><p>Crash.wsf</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\NTTEST\driverstest\storage\crashdump\scripts\</p></td>
</tr>
<tr class="odd">
<td><p>bugcheckdrvctrl.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\crashtest\</p></td>
</tr>
<tr class="even">
<td><p>bugcheckdrvctrl.tlb</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\crashtest\</p></td>
</tr>
<tr class="odd">
<td><p>UefiTprTest.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20UEFI%20Tpr%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




