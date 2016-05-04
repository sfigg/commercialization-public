---
author: joshbax-msft
title: iSCSI HBA Persistent Login Test (LOGO)
description: iSCSI HBA Persistent Login Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8b6efed1-7f3a-4e11-a4b2-d53bd19edbf8
---

# iSCSI HBA Persistent Login Test (LOGO)


This test verifies the basic functionality of persistent logons and verifies that targets are logged on every time the operating system restarts.

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
<td><p>~10 minutes</p></td>
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

If this is the first time you are running an iSCSI HBA test, iSCSI Target test, or MPIO test over iSCSI bus type on the HCK client, or if there is no iscsihctconfig.ini under \[HCK Path\]\\JobsWorkingDir\\ on the HCK client, you will receive a pop-up dialog box to input iSCSI configuration information and/or HBA information. For more information about this dialog box, see “Running the test” in [iSCSI HBA Boot Test (LOGO)](iscsi-hba-boot-test--logo-ca7ad4d0-6950-4e2d-bdfe-b80c7873ba90.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

In addition:

1.  Look at the job results log file for test failures.

2.  Check if the target has a drive letter.

3.  Enter the required data in the configuration dialog box that appears when this job is scheduled. For more information, go to [iSCSI HBA Boot Test (LOGO)](iscsi-hba-boot-test--logo-ca7ad4d0-6950-4e2d-bdfe-b80c7873ba90.md).

This test always return Pass or Fail. To review test details, review the test log from the Windows HCK Manager.

## More information


This test verifies that the Microsoft iSCSI initiator service is running on the system that you are testing. The test verifies that the host-bus adapter (HBA) driver properly returns the current list of registered persistent targets. The test attempts to add a disk target to the list of current persistent targets and then verifies that the target persists after the system restarts.

The test uses an additional application that is used to access the target after the system restarts. This test application, Hitdisk.exe, must be located in the working directory of the iSCSI Persistent test program.

To run this test:

1.  Log on to the disk target and format the drive. The disk target should have a drive letter before you run the test.

2.  Run the test from the Windows HCK Studio.

3.  Enter the required data in the configuration dialog box that appears when this job is scheduled.

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
<td><p>VolumeArrivalTime</p></td>
<td><p>The time (in seconds) to wait for an iSCSI volume to appear after logging on.</p>
<p>Default value: 120</p></td>
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
<td><p><strong>Iscsi_plogin.exe -phase [1|2] -hct -wtt -volumearrival [VolumeArrivalTime]</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type /h

 

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
<td><p>Iscsi_plogin.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\iscsi\</p></td>
</tr>
</tbody>
</table>

 

 

 






