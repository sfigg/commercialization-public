---
author: joshbax-msft
title: USB 2.0 3.0 SCSI Compliance test for UAS on EHCI (LOGO)
description: USB 2.0 3.0 SCSI Compliance test for UAS on EHCI (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 13c6144e-2ccb-47d9-a5ad-be5b3be86265
---

# USB 2.0 & 3.0 SCSI Compliance test for UAS on EHCI (LOGO)


This test verifies Small Computer System Interface (SCSI) Command Descriptor Blocks (CDBs) sent to the Universal Serial Bus (USB) UAS device. For more information, see the [SCSI Compliance Test (LOGO)](scsi-compliance-test--logo-8193d65b-1e18-43d8-9fe7-fca3fb178f67.md).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.UasOnEHCI.BasicFunction</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Hard Disk Drive Testing Prerequisites](hard-disk-drive-testing-prerequisites.md).

In addition this test requires a UAS device connected to a USB 2.0 Controller.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

Also, the test writes the results to the log files Scsicompliance.wtl and Scsicompliance.wtl.txt. You can use the results to determine:

-   If a device is compliant with the SCSI specification

-   The optional SCSI commands that are supported by a device

To pass, the SCSI device must support every mandatory command and must be fully compliant with those commands. Each command has a different threshold for pass or fail, and the expectations are specified explicitly in the test and in the log file.

Optional commands are also tested. If a device supports the optional commands and the commands are found to be non-compliant, the test fails. If the device does not support optional commands, the test passes.

**Note**  
Errors from this test occur via issues identified in the log file and in bugchecks produced through stressing the driver under test.

 

During the test, if you are having trouble removing a LUN that is failing or are unable to create a LUN from the storage controller, follow these steps:

1.  Prior to running this test, verify that the storage device works properly. Open diskmgmt.msc, select the disk, and make sure that you can put the device Online and in Initialized state.

2.  Restart the Windows HCK test computer.

3.  Select and rerun the SCSI Compliance Test 2.0. Do not run any test before it.

4.  Run the SCSI Compliance Test (not the SCSI Compliance Test 2.0 (LOGO)) on the same test client and same test storage device. If the test fails again, verify that the storage device is working properly.If the test fails during steps 3 and 4, run the individual failing command data blocks (cdbs) one at a time with the logging verbosity level set to 4 (the highest level of test logging). This will show what data was sent and what data was returned. A test can fail after several cdbs are completed but pass standalone. If this occurs, there is a problem in the firmware or the test.

5.  

If you have a device reset that results in the device falling off the bus and subsequent commands to fail, follow these steps:

1.  Copy the test binary (Scsicompliance.exe) from the Windows HCK controller. This file is located at \\\\controllername\\tests\\\[processorarchitectureofyourclient\]\\NTTEST\\DriversTest\\storage\\wdk\\

2.  Copy the wttlog.dll file from the Windows HCK controller. This file is located at \\\\&lt;controllername&gt;\\Tests\\&lt;processorarchitectureofyourclient&gt;\\wtt

3.  Place both of these files on the test computer in a separate folder.

4.  From a command prompt, from the directory containing the test binary, type the following command: Scsicompliance.exe /device &lt;deviceID&gt; /verbosity 4 /operation test /scenario &lt;scenario&gt; /CDB &lt;failingcdbname&gt;

    **Note**  
    DeviceID and scenario values can be found by checking the repro line within the test log. The failingcdbname can be found by running the test binary with the /?option (scsicompliance.exe /?).

     

5.  Go back to the same directory and review the results to see if you can determine the reason for the test failure.

6.  If you need additional help, collect the txt and wtl logs and share the logs with Microsoft Customer Support.

## More information


Run the test as an HCK Manager job.

For test assertions, see the [SCSI Compliance Test (LOGO)](scsi-compliance-test--logo-8193d65b-1e18-43d8-9fe7-fca3fb178f67.md).

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
<td><p>The device which test is to run on Example: /Device &lt;physical device path&gt;</p></td>
</tr>
<tr class="odd">
<td><p>/operation</p></td>
<td><p>The operation to runExample: /Operation Test</p></td>
</tr>
<tr class="even">
<td><p>/scenario</p></td>
<td><p>The feature to be tested forExample: /Scenario Common</p></td>
</tr>
<tr class="odd">
<td><p>/version</p></td>
<td><p>Device's USB Version numberExample: /version 3</p></td>
</tr>
<tr class="even">
<td><p>/protocol</p></td>
<td><p>Device’s USB protocolExample: /protocol UAS</p></td>
</tr>
<tr class="odd">
<td><p>/verbosity</p></td>
<td><p>The level of logging verbosity. Larger values cause more verbose output.Example: /Verbosity 4</p></td>
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
<td><p>&lt;[testbinroot]&gt;\nttest\driverstest\storage\wdk\nttest\</p></td>
</tr>
</tbody>
</table>

 

 

 






