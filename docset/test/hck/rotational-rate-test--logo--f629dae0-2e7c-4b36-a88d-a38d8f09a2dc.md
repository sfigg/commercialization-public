---
author: joshbax-msft
title: Rotational Rate Test (LOGO)
description: Rotational Rate Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e6d01375-cd70-4f0c-8a5b-fd1b30fbba25
---

# Rotational Rate Test (LOGO)


This test checks whether the selected hard drive reports its rotational rate value. All SATA, SAS, and NVMe drives should report rotational rate.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.RotationalRate</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~1 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Hard Disk Drive Testing Prerequisites](hard-disk-drive-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

If the test fails, you can check the log file by doing the following:

**To check the log file**

1.  In the **Job Execution Status** window of HCK Manager, click the failed job.

2.  In the **Task Execution Status** window, right-click **Run test**, and then click **View Task Log**.

3.  Open nrmtest.log.

If rotational rate is not reported by the disk, you can try one of the following:

-   If the disk is a SATA disk, ensure that the IDENTIFY DEVICE data word 217 is implemented correctly.

-   If the disk is a SAS or NVMe disk, ensure that the INQUIRY VPD 0xB1 page’s MEDIUM ROTATION RATE field (byte 4 and 5) is implemented correctly.

-   If the disk has a bus type other than SATA, SAS, or NVMe, ensure that the bus type is reported correctly.

## More information


The test shows up for all hard drives. It checks whether the rotational rate is reported correctly for SATA, SAS, and NVMe drives, and skips rotational rate checking for all other bus types. The following table summarizes the test metric.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>SATA drives</p></td>
<td><p>IDENTIFY DEVICE data word 217.</p></td>
</tr>
<tr class="even">
<td><p>SAS, NVMe drives</p></td>
<td><p>INQUIRY VPD 0xB1 page’s MEDIUM ROTATION RATE field (byte 4 and 5).</p></td>
</tr>
</tbody>
</table>

 

### Parameters

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>DiskDeviceObjLink</p></td>
<td><p>The path to the disk under test.</p>
<p>Example: \\.\PhysicalDrive1</p></td>
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
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>nonrotatingmedia.exe -d [DiskDeviceObjLink]</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

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
<td><p>nonrotatingmedia.exe</p></td>
<td><p><em>&lt;[TestBinRoot]&gt;</em>\nttest\driverstest\storage\wdk\</p></td>
</tr>
</tbody>
</table>

 

 

 






