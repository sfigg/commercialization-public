---
author: joshbax-msft
title: Trim Test
description: Trim Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ae127e44-a5e5-4cdc-8651-106b63918a17
---

# Trim Test


This test verifies that a SATA device that supports Trim performs according to the certification requirements.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.Trim.BasicFunction</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows Server 2008 R2 (x64)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~150 minutes</p></td>
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

**Note**  
The devcon tasks may fail. If they fail with ExitCode=1, restart the system and run the test again. If the tasks fail with ExitCode=2, the driver install or driver removal failed - most commonly because the test system is not configured for AHCI (SATA) mode. This test will not pass for a system in PATA emulation mode.

 

## More information


Trim is a Data Set Management command feature described in the ATA/ATAPI Command Set-2 (ACS-2) or later. For more information about the ATA/ATAPI specification, visit the [T13 Technical Committee Web site](http://go.microsoft.com/fwlink/?LinkId=237711).

This test installs a test miniport based on msahci, which provides a framework for validating hardware. The Trim Test uses this ATA Miniport Hardware Validation framework to generate and measure the effects that Trim has on device performance. When the test completes, the test miniport will be uninstalled.

This test may trim or overwrite any or all of the sectors on the test device. As a result, the data on the drive will be lost. This test must be run against a secondary SATA device running in AHCI mode

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
<td><p>The device object link.</p></td>
</tr>
<tr class="even">
<td><p>Verbosity</p></td>
<td><p>Detail of logging. The value can be 0, 1, or 2.</p>
<p>Default value: 1</p></td>
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
<td><p><strong>trim.exe -d “[DiskDeviceObjLink]” -v “[Verbosity]”</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command line help for this test binary, type **/h**.

 

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
<td><p>Devcon.exe</p></td>
<td><p><em>&lt;[osbinroot]&gt;</em>\idw\</p></td>
</tr>
<tr class="even">
<td><p>Dp_delete.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\trim\</p></td>
</tr>
<tr class="odd">
<td><p>Minioctl.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\trim\</p></td>
</tr>
<tr class="even">
<td><p>Msahci.cat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\trim\</p></td>
</tr>
<tr class="odd">
<td><p>Msahci.inf</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\trim\</p></td>
</tr>
<tr class="even">
<td><p>Msahci.sys</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\\driverstest\storage\wdk\trim\</p></td>
</tr>
<tr class="odd">
<td><p>saveinf.js</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\\driverstest\storage\wdk\trim\</p></td>
</tr>
<tr class="even">
<td><p>Trim.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\DriversTest\storage\wdk\trim\</p></td>
</tr>
</tbody>
</table>

 

 

 






