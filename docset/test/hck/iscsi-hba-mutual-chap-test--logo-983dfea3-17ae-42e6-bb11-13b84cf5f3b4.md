---
author: joshbax-msft
title: iSCSI HBA Mutual CHAP Test (LOGO)
description: iSCSI HBA Mutual CHAP Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 98da02b1-c4bd-4303-9062-303f09cd5b7e
---

# iSCSI HBA Mutual CHAP Test (LOGO)


This test verifies that the iSCSI initiator can use the Challenge Handshake Authentication Protocol (CHAP) authentication mechanism. The test verifies mutual CHAP.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Controller.Iscsi.Interface</p>
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
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [iSCSI HBA Testing Prerequisites](iscsi-hba-testing-prerequisites.md).

In addition, this test requires the following software and hardware:

-   1 GB network adapter

If this is the first time you are running an iSCSI HBA test, iSCSI Target test, or MPIO test over iSCSI bus type on the HCK client, or if there is no iscsihctconfig.ini under \[HCK Path\]\\JobsWorkingDir\\ on the HCK client, you will receive a pop-up dialog box to input iSCSI configuration information and/or HBA information. For more information about this dialog box, see “Running the test” in [iSCSI HBA Boot Test (LOGO)](iscsi-hba-boot-test--logo-ca7ad4d0-6950-4e2d-bdfe-b80c7873ba90.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

In addition:

1.  Look at the job results log file for test failures

2.  Enter the required data in the configuration dialog box that appears when this job is scheduled. For more information, go to [iSCSI HBA Boot Test (LOGO)](iscsi-hba-boot-test--logo-ca7ad4d0-6950-4e2d-bdfe-b80c7873ba90.md).

This test returns Pass or Fail. To review test details, review the test log from the Windows HCK Manager.

## More information


The test implements a simple test target and does not require a separate iSCSI target device. The test initiates a login to the test target specifying mutual CHAP. The target verifies that the initiator follows the CHAP protocol specifics detailed in the iSCSI specification. Different test variations will use different encodings (Base16 or Base64) for CHAP responses. In addition, the test returns both valid and invalid responses to the initiator's challenge in order to verify that the HBA properly authenticates the target and returns the appropriate status to the user.

To run this test:

1.  Run the test as an HCK Studio job.

2.  Fill the required data in the configuration UI that pops up when this job is scheduled.

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
<td><p>LogVerbosity</p></td>
<td><p>The verbosity of logging. There are three levels of output: 0, 1, and 2. 2 is the most verbose.</p>
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
<td><p><strong>iscsi_initchap.exe -mutual -hct -v [LogVerbosity]</strong></p></td>
<td><p>Runs the test. The <strong>–v</strong> option controls the verbosity of the logging. There are three levels of output: 0, 1, and 2. 2 is the most verbose.</p></td>
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
<td><p>iscsi_initchap.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\iscsi\</p></td>
</tr>
</tbody>
</table>

 

 

 






