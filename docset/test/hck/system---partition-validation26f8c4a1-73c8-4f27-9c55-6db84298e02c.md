---
author: joshbax-msft
title: System - Partition Validation
description: System - Partition Validation
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0ce362ed-6641-498b-9553-594210e3a544
---

# System - Partition Validation


This manual test verifies that the disk partitions on the Windows system meet the BitLocker Drive Encryption requirements. This test validates that the system provides a second hard disk drive (HDD) partition, separate from the operating system partition, that is formatted as NTFS and meets minimum size requirements. This test only applies to client operating systems.

This test validates that the recovery and OEM partitions are marked with the correct type and attributes so that these partitions won’t be confused with user data volumes.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.SystemPartition.DiskPartitioning System.Client.SystemPartition.OEMPartition</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~4 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md).

In addition, this test requires that the test computer’s hard drive has a minimum of two partitions:

-   Partition 1: For machines with Windows 7 and later versions, a minimum of 100MB configured as Active, System. For machines with Windows Vista, a minimum of 1.5GB configured as Active, System.

-   Partition 2: Minimum of 20 GB (or Windows 7 minimum requirement) configured as Boot, Page File, Crash Dump.

If a system has a partition that includes a bootable Windows Recovery Environment image file, the GPT partition must be of type PARTITION\_MSFT\_RECOVERY\_GUID and include the GPT\_ATTRIBUTE\_PLATFORM\_REQUIRED attribute. If this partition includes a recovery image used by Push Button Reset, the GPT partition must be of type PARTITION\_BASIC\_DATA\_GUID and include the GPT\_ATTRIBUTE\_PLATFORM\_REQUIRED attribute. Any partition that is not system or boot, and is intended to be used by the OEM to store recovery or other information, should include the GPT\_ATTRIBUTE\_PLATFORM\_REQUIRED attribute.

If the system has a volume which is intended to hold user data, the test will prompt to confirm whether this volume is intended to be a user data volume.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md).

To troubleshoot a failed test, see [Step 7: View test results and log files](step-7-view-test-results-and-log-files.md).

## More information


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
<td><p><strong>SSSystemPartitionValidation.exe</strong></p></td>
<td><p>[This content isn't available yet.]</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type `/h`

 

### File list

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>File</th>
<th>Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><em>SSSystemPartitionValidation.exe</em></p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\basetest\ngscb\spvlogo</p></td>
</tr>
</tbody>
</table>

 

 

 






