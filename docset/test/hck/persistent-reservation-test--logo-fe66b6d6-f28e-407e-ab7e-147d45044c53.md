---
author: joshbax-msft
title: Persistent Reservation Test (LOGO)
description: Persistent Reservation Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e0597245-b7d1-47ff-953b-271895405f35
---

# Persistent Reservation Test (LOGO)


This test verifies that a storage array can support the persistent reservation feature properly. It uses the SCSI Compliance Test 2.0 library job with the input of the specific SCSI CDBs.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.MultipleAccess.PersistentReservation.BasicFunction Device.Storage.Hd.PersistentReservation.ClusterFailover</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2008 x64 Windows Server 2008 x86Windows 8.1 x64Windows 8.1 x86Windows Server 2012 R2</p></td>
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


Before you run the test, complete the test setup for the type of Raid Storage array that you are testing. For more information see, [Hardware-based RAID (Storage Array) Testing Overview](hardware-based-raid--storage-array--testing-overview.md).

In addition, for running the test in a Multiple-path IO test environment, please set the policy to be Fail Over Only policy before running the test.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

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
<td><p>DiskDeviceObjLink</p></td>
<td><p>The device object link.</p></td>
</tr>
<tr class="even">
<td><p>LoggingVerbosity</p></td>
<td><p>Detail of logging. Levels are cumulative. 0 = Assertions and results. 1 = Details. 2 = CDBs , data, and sense info. 3 = Debug and detailed Mode page information. 4 = Memory usage</p>
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
<td><p><strong>scsicompliance.exe /device [DiskDeviceObjLink] /verbosity [LoggingVerbosity] /scenario PersistentReservation /operation test</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
<tr class="even">
<td><p><strong>/verbosity</strong></p></td>
<td><p>Controls the verbosity of the logging (the most verbose logging value is 4).</p></td>
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
<td><p>Scsicompliance.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\</p></td>
</tr>
</tbody>
</table>

 

 

 






