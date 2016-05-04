---
author: joshbax-msft
title: SES Test (LOGO)
description: SES Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8e04e7c4-911b-4a4a-9fb0-e0783be0ef17
---

# SES Test (LOGO)


This test verifies SCSI device compliance on Windows®.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Enclosure.DriveIdentification</p>
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


Before you run the test, complete the test setup as described in the test requirements at [Hard Disk Drive Testing Prerequisites](hard-disk-drive-testing-prerequisites.md) and [SCSI Enclosure Services (SES) Device Testing Prerequisites](scsi-enclosure-services--ses--device-testing-prerequisites.md).

To run this test you must set the DiskDeviceObjLink parameter. This parameter represents the physical path to the test device, for example \\\\.\\PhysicalDrive1. If testing an MPIO device, this should be the path to the Pseudo-LUN.

## Troubleshooting


If a failure is observed in the SES Tes, run scsicompliance.exe /device "&lt;Device Instance ID&gt;" /verbosity 4 /scenario SSP /operation test /SESDisk \\\\.\\&lt;Drive Number&gt; (for example, scsicompliance.exe /device "SCSI\\ENCLOSURE&VEN\_LSI\_CORP&PROD\_SAS2X36\\7&7B0A3DA&0&005600" /verbosity 4 /scenario SSP /operation test /SESDisk \\\\.\\PhysicalDrive19)

Scsicompliance.exe can be found at &lt;controller path&gt; \\Windows Kits\\8.0\\Hardware Certification Kit\\Tests\\&lt;arch&gt;\\NTTEST\\driverstest\\storage\\wdk\\.

The most relevant log is **scsicompliance.wtl**.

For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

Errors from this test occur via issues identified in the log file and in bug checks produced through stressing the driver under test.

## More information


This test will focus on measuring the SCSI device compliance on Windows. The goal is twofold - to ensure that SCSI devices supported on the Windows operating system fully and completely adhere to the SCSI specifications set forth in SPC-4 and SES-3, as well as to allow us and our partners to fully respect and comply with these standards. Maintaining compliance will lead to a stronger and more reliable system overall.

**Note**  
For more information about these specifications, visit the [Technical Committee T10 SCSI Storage Interfaces](http://go.microsoft.com/fwlink/?LinkId=237712) website.

 

The test sends the following commands to the device:

1.  Receive Diagnostic Results: 0x00, 0X01, 0X02, 0X07, 0X0A pages.

2.  Send Diagnostic: 0x02 page.

3.  Inquiry: VPD 0x83 Page.

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
<td><p>The device object link.</p>
<p>Example: \\.\PhysicalDrive1</p></td>
</tr>
<tr class="even">
<td><p>LoggingVerbosity</p></td>
<td><p>Detail of logging. Levels are cumulative. 0 = Assertions and results. 1 = Details. 2 = CDBs , data, and sense info. 3 = Debug and detailed Mode page information. 4 = Memory usage</p>
<p>Default value: 4</p></td>
</tr>
<tr class="odd">
<td><p>OperationID</p></td>
<td><p>The operation ID.</p>
<p>Default value: test</p></td>
</tr>
<tr class="even">
<td><p>ScenarioID</p></td>
<td><p>The scenario test name.</p>
<p>Default value: SSP</p></td>
</tr>
</tbody>
</table>

 

### Command syntax

For more information about this test, please install the WDK documentation.

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
<td><p>Runs the test.</p></td>
</tr>
<tr class="even">
<td><p><strong>/SESDisk</strong></p></td>
<td><p>Specifies the physical path to test device, ex: \\.\PhysicalDrive1. If testing an MPIO device this should be the path to the Pseudo-LUN.</p></td>
</tr>
<tr class="odd">
<td><p><strong>/device</strong></p></td>
<td><p>Specifies the enclosure device to be tested.</p></td>
</tr>
<tr class="even">
<td><p><strong>/verbosity</strong></p></td>
<td><p>Verbosity level</p>
<ul>
<li><p>0 = Shows errors and warnings in all modules plus test warnings.</p></li>
<li><p>1 = Shows assertion details (default).</p></li>
<li><p>2 = Shows logs of test tool framework.</p></li>
<li><p>3 = Shows CDBs sent to device.</p></li>
<li><p>4 = Shows data, and sense info returned.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p><strong>/scenario</strong></p></td>
<td><p>Specifies the test scenario.</p></td>
</tr>
<tr class="even">
<td><p><strong>/operation</strong></p></td>
<td><p>Specifies the Test or Discovery test option.</p></td>
</tr>
<tr class="odd">
<td><p><strong>/cdb</strong></p></td>
<td><p>Specifies the CDB list.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
The command-line switches are used when running the test manually: For command-line help for this test binary, type **/h**.

 

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
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk</p></td>
</tr>
</tbody>
</table>

 

 

 






