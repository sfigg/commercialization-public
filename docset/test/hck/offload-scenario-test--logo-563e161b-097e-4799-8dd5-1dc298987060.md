---
author: joshbax-msft
title: Offload scenario test (LOGO)
description: Offload scenario test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b1361820-3a8c-4124-a76d-8f8f6c4151ac
---

# Offload scenario test (LOGO)


This test verifies behavior of offload capable devices when offload related commands are exercised. The test exercises Offload Reads and Offload Writes between LUNs of the same target (such as an adapter) and between LUNs of different adapters.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.OffloadedDataTransfer.CopyOffload</p>
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


Before you run the test, complete the test setup as described in the test requirements: [Hard Disk Drive Testing Prerequisites](hard-disk-drive-testing-prerequisites.md).

Attach the following to the HCK test machine: Storage adapter 1, LUNs 1 and 2 & Storage Adapter 2, LUN 3. LUNs 1, 2 and 3 should be a minimum of 21 GB in size.

Format and mount file system on LUNs 1, 2 and 3. When you schedule the test on the HCK controller, there is a run time parameter called “RemoteShareODXStorageDriveLetter”. Provide the drive letter associated with LUN3 for the run-time parameter. For example, if LUNs 1, 2 and 3 have drive Letters X, Y and Z, type Z for the run-time parameter and schedule test.

When running the offload scenario test in conjunction with other storage tests, the drive configuration must be maintained for the tests in the same project.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

## More Information


The following Scenarios are exercised:

-   Copy Offload between LUNs from the same adapter

    -   Single HBA push scenario

    -   Single HBA pull scenario

-   Copy Offload between LUNs from different adapters

    -   Multiple HBA push scenario

    -   Multiple HBA pull scenario

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
<td><p>RemoteShareODXStorageDriveLetter</p></td>
<td><p>The drive letter of the LUN.</p></td>
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
<td><p>Copyoffload.exe</p></td>
<td><p>The options for the test are listed below</p></td>
</tr>
<tr class="even">
<td><p>/regression:[Scenarios]</p></td>
<td><p>Scenarios to run, scenarios are from 2 to 21, ranging in transfer sizes</p></td>
</tr>
<tr class="odd">
<td><p>/stp</p></td>
<td><p>Source test path</p></td>
</tr>
<tr class="even">
<td><p>/dtp</p></td>
<td><p>Destination test path</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type **/?**.

 

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
<td><p>Copyoffload.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BASETEST\core_file_services\ntfs\copyoffload\</p></td>
</tr>
<tr class="even">
<td><p>Scattermultithread.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\BASETEST\core_file_services\ntfs\scattergather\</p></td>
</tr>
</tbody>
</table>

 

 

 






