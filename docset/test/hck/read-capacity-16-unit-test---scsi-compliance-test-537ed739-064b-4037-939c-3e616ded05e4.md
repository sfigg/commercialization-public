---
author: joshbax-msft
title: Read Capacity 16 Unit Test - SCSI Compliance Test
description: Read Capacity 16 Unit Test - SCSI Compliance Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 358a75fb-6e4f-41b9-afec-55c841f3e12a
---

# Read Capacity 16 Unit Test - SCSI Compliance Test


This test is a special variant of the SCSI Compliance Test which verifies support of the Read Capacity command. For more information about this test, see [SCSI Compliance Test (LOGO)](scsi-compliance-test--logo-8193d65b-1e18-43d8-9fe7-fca3fb178f67.md).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Controller.BootDeviceGreaterThan.BasicFunction</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2008 x64 Windows Server 2008 x86Windows 8.1 x64Windows 8.1 x86Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Storage Adapter or Controller Testing Overview](storage-adapter-or-controller-testing-overview.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md) or the troubleshooting steps from [SCSI Compliance Test (LOGO)](scsi-compliance-test--logo-8193d65b-1e18-43d8-9fe7-fca3fb178f67.md).

## More information


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
<td><p>LoggingVerbosity</p></td>
<td><p>Detail of logging. Levels are cumulative. 0 = Assertions and results. 1 = Details. 2 = CDBs , data, and sense info. 3 = Debug and detailed Mode page information. 4 = Memory usage</p>
<p>Default value: 4</p></td>
</tr>
</tbody>
</table>

 

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
<td><p><strong>scsicompliance.exe /device [ScsiComplianceDevice] /verbosity [LoggingVerbosity] /scenario [ScenarioId] /operation [OperationId] [Options]</strong></p></td>
<td><p>Runs the test.</p></td>
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
<td><p>Scsicompliance.exe</p></td>
<td><p>The command line options for the test are listed below.</p></td>
</tr>
<tr class="even">
<td><p>/device</p></td>
<td><p>The device which test is to run on. Example: /Device &lt;physical device path&gt;</p></td>
</tr>
<tr class="odd">
<td><p>/operation</p></td>
<td><p>The operation to run. Example: /Operation Test</p></td>
</tr>
<tr class="even">
<td><p>/scenario</p></td>
<td><p>The feature to be tested for. Example: /Scenario Common</p></td>
</tr>
<tr class="odd">
<td><p>/verbosity</p></td>
<td><p>The level of logging verbosity. Larger values cause more verbose output. Example: /Verbosity 4</p></td>
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
<td><p>Scsicompliance.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\nttest\</p></td>
</tr>
</tbody>
</table>

 

 

 






