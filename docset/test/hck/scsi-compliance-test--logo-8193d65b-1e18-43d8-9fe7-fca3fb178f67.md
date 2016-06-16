---
author: joshbax-msft
title: SCSI Compliance Test (LOGO)
description: SCSI Compliance Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 945a3371-ee22-47ad-b1dd-dffbd7a6e16c
---

# SCSI Compliance Test (LOGO)


This test verifies that a block storage device (RAID adapter or disk target) that is supported by the operating system fully complies with the SCSI standards described in the SCSI-3 Primary Commands-2 (SPC-2) or later, and SCSI Block Commands (SBC) or later specifications.

**Note**  
For more information about these specifications, visit the [Technical Committee T10 SCSI Storage Interfaces](http://go.microsoft.com/fwlink/p/?LinkId=237712) website.

 

Ensuring that the block device and the operating system maintain compliance with these standards makes for a more robust and reliable system. Although some block devices might not be using a SCSI transport, the operating system communicates with them using SCSI commands (the exception is individual ATA disk drives that are not part of a RAID set).

The test uses SCSI pass-through requests (IOCTL\_SCSI\_PASS\_THROUGH) to construct and send SCSI command descriptor blocks (CDBs) to the device. The test evaluates the results of the commands to verify compliance.

**Warning**  
If you are running this test as a part of a Storage RAID Hardware-based RAID (Storage Array) submission, and your storage array supports Multipath I/O (MPIO), configure your MPIO to use Fail-Over Only policy, and set the target storage disk to use the same active path for all MPIO-capable disks.

If you are running this test as a part of a Storage RAID Hardware-based RAID (Storage Array) submission, make sure that LUN0 is configured as the largest size non-boot LUN.

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Controller.Raid.BasicFunction Device.Storage.Hd.ScsiProtocol.ReferenceSpec Device.Storage.Hd.ScsiProtocol.SamCompliance Device.Storage.Hd.ScsiProtocol.SpcCompliance</p>
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


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

The test writes the results to the log files Scsicompliance.log.xml and Scsicompliance.log.txt. Use the results to determine:

-   If a device is compliant with the SCSI specification.

-   The optional SCSI commands that are supported by a device.

To pass, the SCSI device must support every mandatory command and must be fully compliant with those commands. Each command has a different threshold for pass or fail, and the expectations are specified explicitly in the test and in the log file.

Optional commands are also tested. If a device supports the optional commands and the commands are found to be non-compliant, the test fails. If the device does not support optional commands, the test passes.

**Note**  
Errors from this test occur via issues identified in the log file and in stop errors produced through stressing the driver under test.

 

## More information


This test will focus on measuring the SCSI device compliance on the Windows Operating System. The goal is two-fold - to ensure that SCSI devices supported on the Windows OS fully and completely adhere to the SCSI specifications set forth in SPC, SPC-2, and SBC, as well as to allow us and our partners to fully respect and comply with these standards. Maintaining compliance will lead to a stronger and more reliable system overall.

The test uses SCSI pass-through requests (IOCTL\_SCSI\_PASS\_THROUGH) to construct and send SCSI command descriptor blocks (CDB) to the device. The test evaluates the results of the commands to verify compliance.

**Warning**  
If you are running this test as a part of Storage RAID Hardware-based RAID (Storage Array) submission, and your storage array supports Multi-Path I/O (MPIO), you must configure your MPIO to use Fail-Over Only policy, and set the target storage disk to use the same active path for all MPIO-capable disks.

 

**Note**  
If you are running this test as a part of a Storage RAID Hardware-based RAID (Storage Array) submission, please make sure that LUN0 is configured as the largest size non-boot LUN.

 

The SCSI Compliance test consists of several phases: setup, device enumeration, execution, and results reporting. The test operates in two modes:

-   A non-destructive test run against one or more devices.

-   A destructive (allows WRITE commands) test that targets one or more specified disks.

A number of tests are performed for each command to test compliance. The program stores the test results in a matrix, indicating the results for each command on each device. When the test is completed, a summary report of the results is generated. For debugging purposes, the level of output verbosity can be increased when the test is run interactively. It is designed to provide complete information for the submitter so that they can address command issues.

### Functionality testing

The test sends the following commands to the device. The test runs a variety of tests for each command descriptor block (CDB) to ensure full and complete compliance. Commands that are indicated as optional must still perform correctly if a vendor chooses to implement the command. Each command may have many subtests.

-   INQUIRY

-   REQUEST SENSE

-   MODE SENSE (6)

-   MODE SENSE (10) \[Optional, except if MODE SENSE (6) can return &gt; 255 bytes of information\]

-   MODE SELECT (6) \[Optional\]

-   MODE SELECT (10) \[Optional\]

-   RESERVE (6) \[prior to Vista only\]

-   RELEASE (6) \[prior to Vista only\]

-   READ CAPACITY

-   LONGLBA Support \[Optional\]

-   READ (6) \[Optional\]

-   READ (10)

-   READ (16) \[Optional\]

-   WRITE (6) \[Optional\]

-   WRITE (10)

-   WRITE (10) with FUA bit

-   WRITE (16) \[Optional\]

-   WRITE (16) with FUA bit \[Optional\]

-   REPORT LUNS \[required except for PCI RAID adapters\]

-   PERSISTENT RESERVE IN / OUT

### Robustness and reliability testing

To validate robustness and reliability, the test completes the following tasks:

-   Checks for valid return codes for each IOCTL\_SCSI\_PASS\_THROUGH request.

-   Checks adherence to data buffer length.

-   If the buffer size is insufficient, the test verifies that the IOCTL returns with the correct required length.

-   Verifies that non-destructive tests do not change any system configuration or data.

-   Verifies that repeated calls return the same or similar data.

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
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>ScsiComplianceTest.exe</strong></p></td>
<td><p>The options for the test are listed below</p></td>
</tr>
<tr class="even">
<td><p><strong>-a</strong></p></td>
<td><p>Enables automated testing.</p></td>
</tr>
<tr class="odd">
<td><p><strong>-m</strong></p></td>
<td><p>Enables manual testing. Provides options to test specific SCSI commands on specific devices.</p></td>
</tr>
<tr class="even">
<td><p><strong>--w</strong></p></td>
<td><p>Tests destructive SCSI commands.</p></td>
</tr>
<tr class="odd">
<td><p><strong>-c</strong></p></td>
<td><p>Tests multi-initiator SCSI commands.</p></td>
</tr>
<tr class="even">
<td><p><strong>-d</strong></p></td>
<td><p>Enables a user to specify individual devices.</p></td>
</tr>
<tr class="odd">
<td><p><strong>-v</strong></p></td>
<td><p>Controls the verbosity level of the log file results:</p>
<ul>
<li><p>0 = List assertions tested and results.</p></li>
<li><p>1 = Show assertion details (default).</p></li>
<li><p>2 = Show CDBs sent to device, data, and sense info returned.</p></li>
<li><p>3 = Shows test debug spew and detailed Mode page information.</p></li>
<li><p>4 = Shows test memory usage logging.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p><strong>-iscsi</strong></p></td>
<td><p>Tests an iSCSI target.</p></td>
</tr>
<tr class="odd">
<td><p><strong>-full</strong></p></td>
<td><p>Specify that the write tests should also be run.</p></td>
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
<td><p>Scsicompliancetest.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\</p></td>
</tr>
</tbody>
</table>

 

 

 






