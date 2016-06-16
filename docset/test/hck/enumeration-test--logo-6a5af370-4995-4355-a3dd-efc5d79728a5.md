---
author: joshbax-msft
title: Enumeration Test (LOGO)
description: Enumeration Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7065b7b9-c2a4-4e7f-be12-5e1fbad05c80
---

# Enumeration Test (LOGO)


This test verifies that all disks in the chassis must be able to be enumerated by all controllers in the chassis. If there are multiple ports into the chassis, then each port must enumerate the same number of disks.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Enclosure.DirectAccess</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements in [Hard Disk Drive Testing Prerequisites](hard-disk-drive-testing-prerequisites.md) and [SCSI Enclosure Services (SES) Device Testing Prerequisites](scsi-enclosure-services--ses--device-testing-prerequisites.md).

## Troubleshooting


Make sure that:

-   The test environment is set up so that two HBA ports are connected from the test computer to the Storage Target (Enclosure Device).

-   The disk you have selected in **Selection** tab of the HCK Studio is online.

The most relevant log is enumeratedrive.log.wtl.

For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

## More information


The test is to check whether storage enclosure device exposed LUNs same for different ports. To do that, we assume, on storage enclosure device side, the LUNs have same configuration and each port from storage enclosure device will have same connections with HBA ports on server. The test enumerates all LUNs connected to each HBA on server side and compares them to check if LUNs connected to each HBA can be matched with each other. Here we require users make sure that each HBA port instance on server side will connect storage ports on storage device end.

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
<td><p>StorageDriveNumber</p></td>
<td><p>The disk number.</p></td>
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
<td><p><strong>Enumeratedrive.exe -lun [StorageDriveNumber]</strong></p></td>
<td><p>Runs the test</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type **/h**.

 

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
<td><p>Enumeratedrive.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\DRIVERSTEST\storage\wdk\</p></td>
</tr>
</tbody>
</table>

 

 

 






