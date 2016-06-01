---
author: joshbax-msft
title: iSCSI Target Ping Test (LOGO)
description: iSCSI Target Ping Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 070d14f4-b9d3-43be-9d01-947765d78f8c
---

# iSCSI Target Ping Test (LOGO)


This test verifies that iSCSI targets can send and receive ping requests. Because there is no standard mechanism for initiating the sending of ICMP echo messages on a target, manual interaction is required to complete the test.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.Iscsi.BasicFunction</p>
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


Before you run the test, complete the test setup as described in the test requirements: [iSCSI Boot Component Testing Prerequisites](iscsi-boot-component-testing-prerequisites.md).

If this is the first time you are running an iSCSI HBA test, iSCSI Target test, or MPIO test over iSCSI bus type on the HCK client, or if there is no iscsihctconfig.ini under \[HCK Path\]\\JobsWorkingDir\\ on the HCK client, you will receive a dialog box to input iSCSI configuration information and/or HBA information. For more information about this dialog box, see “Running the test” in [iSCSI HBA Boot Test (LOGO)](iscsi-hba-boot-test--logo-ca7ad4d0-6950-4e2d-bdfe-b80c7873ba90.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

In addition:

1.  Look at the job results log file for test failures.

2.  Enter the required data in the configuration dialog box that appears when this job is scheduled. For more information, go to [iSCSI HBA Boot Test (LOGO)](iscsi-hba-boot-test--logo-ca7ad4d0-6950-4e2d-bdfe-b80c7873ba90.md).

This test returns Pass or Fail. To review test details, review the test log from the Windows HCK Manager.

## More information


This test operates in two phases:

1.  The first phase verifies that iSCSI targets respond to ping requests by sending an ICMP echo packets to the target by using a network card in the test system.

2.  The second phase verifies the target can send ICMP echo packets to another address, which in this case is the network adapter in the test system.

    1.  If you can do a ping operation from the storage management UI, skip to step 5. Otherwise, go to step 2.

    2.  Telnet into the target: telnet &lt;target portal address, e.g. 10.10.20.80&gt;

    3.  For the telnet console IP address, it may be different from the target portal address, but it should be another portal address of the same target, such as 10.10.20.82. You can check all the network interfaces or use the network monitor to send requests to find it.

    4.  Change the PortalIPAddress under \[Target1\] in iscsihctconfig.ini to be the one received in step 3.

    5.  Run the Ping Test on the test client and ping the initiator IP address from the telnet console or storage management UI.

To run this test:

1.  Run the test as a Driver Test Manager (DTM) job.

2.  Enter the required data in the configuration dialog box that appears when this job is scheduled.

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
<th>Command option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Iscsi_pingtest.exe -target -hct -v [LogVerbosity]</strong></p></td>
<td><p>Runs the test. The <strong>–v</strong> option controls the verbosity of the logging. There are three levels of output (0, 1, and 2) where 2 is the most verbose.</p></td>
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
<td><p>Iscsi_pingtest.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\iscsi\</p></td>
</tr>
</tbody>
</table>

 

 

 






