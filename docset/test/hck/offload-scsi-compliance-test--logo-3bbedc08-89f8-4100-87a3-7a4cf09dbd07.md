---
author: joshbax-msft
title: Offload SCSI Compliance Test (LOGO)
description: Offload SCSI Compliance Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8702f73a-51f5-4703-b6b4-a2127a9e139a
---

# Offload SCSI Compliance Test (LOGO)


This test ensures that devices comply to Copy Offload related CDBs and VPDs. Offload related functionality is described in Specs 11-059, 11-078, 11-079 and 11-080 of the T10 Technical Committee. The test uses SCSI pass-through requests (IOCTL\_SCSI\_PASS\_THROUGH) to construct and send SCSI command descriptor blocks (CDBs) to the device. The test evaluates the results of the commands to verify compliance.

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

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

The test writes the results to the log file Scsicompliance.wtl and Scsicompliance.wtl.txt. Errors from this test occur via issues identified in the log file and in bugchecks produced through stressing the driver under test.

During the test, if you are having trouble removing a LUN that is failing or are unable to create a LUN from the storage controller, follow these steps:

1.  Prior to running this test, verify that the storage device works properly. Open Diskmgmt.msc, select disk, and make sure you can put the device Online and Initialized.

2.  Restart the Windows HCK client computer.

3.  Select and rerun the Offload SCSI Compliance test. Do not run any test before it.

4.  If the test failed, run the individual failing command data blocks (cdbs) one at a time with the logging verbosity level set to 4 (the highest level of test logging). This will show what data was sent and what data was returned. We have seen previous instances where a test faisl after several cdbs were completed but pass standalone. If this occurs, there is a problem in the firmware or the test. There might have been a device reset leading to the device falling off the bus, resulting in subsequent commands to fail. To resolve this issue, follow these steps:

    1.  Copy the test binary (Scsicompliance.exe) from the Windows HCK controller. This file is located here: \\\\controllername\\tests\\*\[processorarchitecture\]*\\NTTEST\\DriversTest\\storage\\wdk\\

    2.  Copy the wttlog.dll file from the Windows HCK controller. This file is located here: *\\\\&lt;controllername&gt;*\\Tests\\*\[processorarchitecture\]*\\wtt

    3.  Place both of these files on the test computer in a separate folder.

    4.  From a command prompt, from the directory containing the test binary, type the following command: Scsicompliance.exe /device &lt;deviceID&gt; /verbosity 4 /operation test /scenario &lt;scenario&gt; /CDB &lt;failingcdbname&gt;

        **Warning**  
        deviceID and scenario values can be found by checking the repro line within the test log. The failingcdbname can be found by running the test binary with the /?option (scsicompliance.exe /?).

         

    5.  Go back to the same directory and review the results to see if you can determine the reason for the test failure.

    6.  If you need additional help, collect the txt and wtl logs and share the logs with Microsoft Customer Support Services.

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
<td><p>The detail of logging. Levels are cumulative. 0 = Assertions and results. 1 = Details (default). 2 = CDBs , data, and sense info. 3 = Debug and detailed mode page information. 4 = Memory usage</p>
<p>Default value: 4</p></td>
</tr>
<tr class="even">
<td><p>OperationId</p></td>
<td><p>The operation ID.</p>
<p>Default value: Test</p></td>
</tr>
<tr class="odd">
<td><p>ScenarioId</p></td>
<td><p>The name of the test scenario.</p>
<p>Default value: CopyOffload</p></td>
</tr>
<tr class="even">
<td><p>ScsiComplianceDevice</p></td>
<td><p>The device path of the disk to test.</p>
<p>Example: \\.\disk0</p></td>
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
<td><p>The options for the test are listed below</p></td>
</tr>
<tr class="even">
<td><p>/device</p></td>
<td><p>The device which test is to run on.</p>
<p>Example: /Device &lt;physical device path&gt;</p></td>
</tr>
<tr class="odd">
<td><p>/operation</p></td>
<td><p>The operation to run.</p>
<p>Example: /Operation Test</p></td>
</tr>
<tr class="even">
<td><p>/scenario</p></td>
<td><p>The feature to be tested for.</p>
<p>Example: /Scenario CopyOffload</p></td>
</tr>
<tr class="odd">
<td><p>/verbosity</p></td>
<td><p>The level of logging verbosity. Larger values cause more verbose output.</p>
<p>Example: /Verbosity 4</p></td>
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
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\</p></td>
</tr>
</tbody>
</table>

 

 

 






