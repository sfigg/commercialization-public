---
author: joshbax-msft
title: iSCSI Target Digest Test (Disk) (LOGO)
description: iSCSI Target Digest Test (Disk) (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 79fe3e22-9273-4223-9b0b-f72c5e471dc1
---

# iSCSI Target Digest Test (Disk) (LOGO)


This test verifies that an iSCSI disk storage system supports header and data digests as negotiated during the logon phase.

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
<td><p>~40 minutes</p></td>
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

If this is the first time you are running an iSCSI HBA test, iSCSI Target test, or MPIO test over iSCSI bus type on the HCK client, or if there is no iscsihctconfig.ini under \[HCK Path\]\\JobsWorkingDir\\ on the HCK client, you will receive a pop-up dialog box to input iSCSI configuration information and/or HBA information. For more information about this dialog box, see “Running the test” in [iSCSI HBA Boot Test (LOGO)](iscsi-hba-boot-test--logo-ca7ad4d0-6950-4e2d-bdfe-b80c7873ba90.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

This test returns Pass or Fail. To review test details, review the test log from the Windows HCK Manager.

In addition:

1.  Look at the job results log file for test failures

2.  Verify the target has been formatted and assigned a drive letter.

3.  Enter the required data in the configuration dialog box that appears when this job is scheduled. For more information, go to [iSCSI HBA Boot Test (LOGO)](iscsi-hba-boot-test--logo-ca7ad4d0-6950-4e2d-bdfe-b80c7873ba90.md).

## More information


The test performs the following algorithm:

1.  Prepares the system for iSCSI operations:

    1.  If the target that is used for testing is already logged on, the session information is saved so the session can be restored later.

    2.  The target disk device is added as a static iSCSI target.

2.  Perform iSCSI operations

    1.  If the target that is used for testing is already logged on, the current session to the target is logged out

    2.  The target is logged on with header digests enabled.

    3.  After logging on to the target, the test waits for all disk devices to be enumerated on the test system.

    4.  The test will perform I/O read and write operations with the current target session.

    5.  The test repeats the preceding steps with data digests only enabled and header and data digests enabled.

    6.  The target that you are testing must permit logon by using all three digest combinations and no I/O failures can be detected during I/O operations

3.  Restore any previous iSCSI target sessions.

To run this test:

1.  Log on to the disk target and format the drive. The disk target should have a drive letter before you run the test.

2.  Run the test as DTM job from the Device Console window.

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
<td><p>LogVerbosity</p></td>
<td><p>The verbosity of logging. There are three levels of output: 0, 1, and 2. 2 is the most verbose.</p>
<p>Default value: 1</p></td>
</tr>
<tr class="even">
<td><p>TargetType</p></td>
<td><p>This parameter is either -disk or –tape.</p>
<p>Default value: -disk</p></td>
</tr>
<tr class="odd">
<td><p>TestType</p></td>
<td><p>This parameter is either -target or –hba.</p>
<p>Defaule value: -target</p></td>
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
<td><p>iscsi_digest.exe -hct [TestType] [TargetType] -cleanup -v [LogVerbosity]</p></td>
<td><p>Runs the test.</p></td>
</tr>
<tr class="even">
<td><p>-hct [TestType]</p></td>
<td><p>The options that can be set are <strong>-target</strong> or <strong>–hba</strong>.</p></td>
</tr>
<tr class="odd">
<td><p>[TargetType]</p></td>
<td><p>Runs the test against an iSCSI disc. The <strong>-disk</strong> parameter sets this option.</p></td>
</tr>
<tr class="even">
<td><p>-setup or -login [DigestType] or -logout [DigestType]</p></td>
<td><p>Runs the test with the digest type option set. The digest type option values are header, data, or both.</p></td>
</tr>
<tr class="odd">
<td><p>-v [LogVerbosity]</p></td>
<td><p>Sets the test result logging level. This option sets the verbosity of the logging. There are three levels of output: 0, 1, and 2. 2 is the most verbose.</p></td>
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
<td><p>Iscsi_digest.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\iscsi\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20iSCSI%20Target%20Digest%20Test%20%28Disk%29%20%28LOGO%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




