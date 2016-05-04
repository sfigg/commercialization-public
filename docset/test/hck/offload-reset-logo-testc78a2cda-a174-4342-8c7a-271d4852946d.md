---
author: joshbax-msft
title: Offload Reset logo test
description: Offload Reset logo test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 495768fb-0fbb-4efa-8746-1a30a91cdba8
---

# Offload Reset logo test


This test verifies the behavior of offload capable devices when offload-related commands are exercised. The test looks for any LUN, Target, or Bus reset on the device.

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
<td><p>~50 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Reliability</p></td>
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

## More Information


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
<th>Command option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>powershell -noexit .\StressReset.ps1 /drivenumber [StorageDriveNumber] /scenario “copyoffload”</strong></p></td>
<td><p>Runs the test</p></td>
</tr>
<tr class="even">
<td><p>/drivenumber</p></td>
<td><p>Physical drive number associated with the device.</p></td>
</tr>
<tr class="odd">
<td><p>/scenario</p></td>
<td><p>Scenario used for stress reset.</p>
<p>Example: copyoffload</p></td>
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
<td><p>StressReset.ps1</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\DriversTest\storage\wdk\</p></td>
</tr>
<tr class="even">
<td><p>Scsicompliance.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\</p></td>
</tr>
</tbody>
</table>

 

 

 






