---
author: joshbax-msft
title: iSCSI HBA Boot Test (LOGO)
description: iSCSI HBA Boot Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 88c07224-16b0-40b2-90d2-a7a85f163d45
---

# iSCSI HBA Boot Test (LOGO)


This test verifies that the host-bus adapter (HBA) properly reports the presence of a boot session to the Microsoft iSCSI initiator service.

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
<td><p>Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2008 x64 Windows Server 2008 x86Windows Server 2012 R2</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [iSCSI Boot Component Testing Prerequisites](iscsi-boot-component-testing-prerequisites.md).

In addition, complete the following steps:

1.  Install the operating system on a target disk device.

2.  Run the test as an HCK Studio job from the Device Console window.

3.  Enter the required data in the configuration dialog box that appears when this job is scheduled.

This test is run in an iSCSI test environment.

If this is the first time you are running an iSCSI HBA test, iSCSI Target test, or MPIO test over iSCSI bus type on the HCK client, or if there is no iscsihctconfig.ini under \[HCK Path\]\\JobsWorkingDir\\ on the HCK client, you will receive the following pop-up dialog box to input iSCSI configuration information and/or HBA information:

![iscsi hba boot test (logo) ui](images/hck-win8-iscsi-hba-boot-test.png)

Follow these steps to enter the information:

1.  Type the target IQN, portal, and port information into **Target Name**, **Target IP**, and **Target Port**.

2.  Select the **CHAP Type** and type the user name and password into **Target User**, **Target Secret** and **Initiator Secret**, if **Mutual** is selected.

3.  If you select **Mutual** for **CHAP Type**, select the **Supports Mutual Chap** check-box.

4.  If there are multiple initiator IP addresses, enter the one used for the test in **Initiator IP**.

5.  If the test is for the iSCSI Target test, type the iSNS server IP address in the **iSNS IP Address** field, and type the **NIC IP address** into the **NIC IP Address** field.

6.  If the target support Digests, select the **Supports Digests** check-box.

7.  The **iSNS server IP address** and **NIC IP address** will not be used by the MPIO Test. But since the test environment is set up to run both MPIO test and iSCSI Target tests, fill out this field. The same iscsihctconfig.ini will be used for all on the same test environment.

8.  If the test is for the iSCSI HBA test, type the two NIC IP addresses into **NIC IP Address** and **NIC IP Address 2**. These fields are the same as those in WLK 1.6 used by the iSCSI HBA Redirection Test. Also, type the HBA port device instance path into **HBA PnP ID**. If the HBA port instance is configured to support digests, please select the **Supports Digests** check-box. If HBA port instance is configured to support boot, check the **HBA Boot** check-box.

9.  Click **OK**.

This information will be saved into the iscsihctconfig.ini file. There is a copy of the iscsihctconfig.ini file under \[HCK Path\]\\JobsWorkingDir\\. It enables users not to input the configuration information for every iSCSI test on same test environment, so the iSCSI UI will not pop up every time after the first input. To change the iSCSI configuration information, change the iscsihctconfig.ini file under \[HCK Path\]\\JobsWorkingDir\\ directly or delete it to cause the UI to pop up again.

## Troubleshooting


For troubleshooting information, see: [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

If you experience issues during this test, complete the following steps:

1.  From the Windows HCK Manager, review the test job results log file for test failures.

2.  Check if the target has a drive letter.

3.  Verify the data entered in the configuration dialog (popup dialog box when the job is scheduled from device console).

## More information


This test performs the following algorithm:

1.  Determines the current system boot drive.

2.  Retrieves the currently active iSCSI sessions on the system by using the ISCSI\_SessionStaticInfo Microsoft Windows Management Instrumentation (WMI) class.

3.  For every active iSCSI session that is found:

    1.  Checks the Type field of the session class to determine if it is a boot session.

    2.  If the iSCSI session is a boot session, determines the drive letter that is associated with that session.

    3.  If the associated drive letter matches the system boot drive letter, starts the system from the iSCSI device.

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
<td><p>Iscsi_boot_test.exe</p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type `/h`.

 

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
<td><p>Iscsi_boot_test.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>nttest\driverstest\storage\wdk\iscsi\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20iSCSI%20HBA%20Boot%20Test%20%28LOGO%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




