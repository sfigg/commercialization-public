---
author: joshbax-msft
title: Enhanced Storage Test (LOGO)
description: Enhanced Storage Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 19a6df08-89e7-4b47-86b1-6d8f39bc975b
---

# Enhanced Storage Test (LOGO)


This test validates storage devices support the 1667 protocol.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.EnhancedStorage.1667Compliance</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
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

**Warning**  
If your enhanced storage device has a Security ID, then you must enter the security ID for the device (for example, "ABCD") when the test is scheduled in the Windows HCK Studio..

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

## More information


This test takes a PNP device ID of one of the ACTs control device node as a command line argument and then enumerates the siblings of the control device node.

The siblings for this control device node will be:

-   Control nodes for the other ACTs of the device

-   Disk device nodes for each ACT

-   Silos supported by each ACT

The test selects one of the ACT disk device nodes and verifies the SCSI command verification test cases. For more information about the test cases run by this test, see the Supporting Information section.

The test validates the following test cases:

-   Inquiry

-   Security Commands Support

-   Protocol Support

-   Command Sequence

-   Probe Command

-   Silo Enumeration

-   Certificate Authentication Silo

-   Password Silo Test Scenarios

### Inquiry

**Purpose:** To validate if the Windows can recognize this device.

1.  Send the INQUIRY command with allocation length set to 0x08.

2.  If command failed, then fail the test case.

3.  Get the additional length from the response

4.  Check if the allocation length from step 3 + 0x05 is greater than or equal to 0x24 and it is 4-byte aligned.

5.  Send the INQUIRY command with allocation length set to additional length from step 3 + 5

6.  Check if the allocation length from step 5 + 0x5 is greater than or equal to 0x24 and it is 4-byte aligned.

7.  If the command fails, fail the test case

**Result:** The device should respond to the inquiry command properly.

### Security commands support

**Purpose:** To validate if the device supports the SECURITY PROTOCOL IN, SECURITY PROTOCOL OUT SCSI commands with INC\_512 bit set or cleared.

1.  Send the SECURITY PROTOCOL OUT command with the following values in the CDB:

    Security Protocol = 0

    Security Protocol Specific = 0

    INC\_512 = 0

    Allocation Length = 0

2.  If the command fails, then fail the test case.

3.  Send the SECURITY PROTOCOL IN command with the following values in the CDB:

    Security Protocol = 0

    Security Protocol Specific = 0

    INC\_512 = 0

    Allocation Length = 512

4.  If the command fails, then fail the test case.

5.  Send the SECURITY PROTOCOL OUT command with the following values in the CDB:

    Security Protocol = 0

    Security Protocol Specific = 0

    INC\_512 = 1

    Allocation Length = 0

6.  If the command fails, then fail the test case.

7.  Send the SECURITY PROTOCOL IN command with the following values in the CDB:

    Security Protocol = 0

    Security Protocol Specific = 0

    INC\_512 = 1

    Allocation Length = 1

8.  If the command fails, then fail the test case

**Result:** The device must support the SECURITY PROTOCOL IN and SECURITY PROTOCOL OUT SCSI commands as per the 1667 specification

### Protocol support

**Purpose:** To validate if the device supports 1667 protocol

1.  Send the SECURITY PROTOCOL IN command with the following values in the CDB:

    Security Protocol = 0

    Security Protocol Specific = 0

    INC\_512 = 1

    Allocation Length = 1

2.  If the command fails, then fail the test case.

3.  If the command succeeds, get the supported security protocol list length from the command response that is used in the next SECURITY PROTOCOL IN command data transfer length.

4.  Send the SECURITY PROTOCOL IN command with the following values in the CDB:

    Security Protocol = 0

    Security Protocol Specific = 0

    INC\_512 = 1

    Allocation Length = 1

5.  If the command fails, then fail the test case.

6.  If the command succeeds, check the response if the device reports Supported Security Protocol - 0xEE in the supported security protocol list.

7.  If the supported security protocol, 0xEE, is not found in the command response, then fail the test case.

**Result:** The device should report security protocol 0xEE as a supported protocol.

### Command sequence

**Purpose:** Validate the ACT behavior for the pending commands sequence.

1.  Send the SECURITY PROTOCOL IN command with the following values in the CDB:

    Security Protocol = 0xEE

    Silo Index = 0 (Probe Silo Index)

    Function ID = 01

    INC\_512 = 1

    Allocation Length = 1

2.  The ACT should fail this command because there will not be an outstanding SECURITY PROTOCOL OUT command pending.

3.  Send the SECURITY PROTOCOL OUT command with the following values in the CDB:

    Security Protocol = 0xEE

    Silo Index = 0 (Probe Silo Index)

    Function ID = 01

    INC\_512 = 1

    Allocation Length = 0

4.  If the command fails, then fail the test case.

5.  Send the SECURITY PROTOCOL IN command with the following values in the CDB:

    Security Protocol = 0xEE

    Silo Index = (Probe Silo Index)

    Function ID = 01

    INC\_512 = 1

    Allocation Length = 1

6.  If the command fails, then fail the test case.

**Result:** The probe silo should report SPIN/SPOUT sequence rejection error when the commands are sent out of sync

### Probe command

Purpose: Validate if the device supports the 1667 probe command.

1.  Get the operating system version information

2.  Send the PROBE command with following values in the SECURITY PROTOCOL OUT command CDB:

    Security Protocol = 0xEE

    Silo Index = 0x00

    Function ID = 0x01

    INC\_512 = 1

    Allocation Length = 1

3.  If the command fails, then fail the test case.

4.  Send the SECURITY PROTOCOL IN command with the following values in the CDB:

    Security Protocol = 0xEE

    Silo Index = 0x00

    Function ID = 0x01

    INC\_512 = 1

    Allocation Length = 1

5.  If the command fails, then fail the test case.

6.  Get the required probe response data size

7.  Fill in the probe command pay load with the host operating system information.

8.  Send the SECURITY PROTOCOL OUT command with the following values in the CDB and with the payload created in step 7:

    Security Protocol = 0xEE

    Silo Index = 0x00

    Function ID = 0x00

    INC\_512 = 1

    Allocation Length = Number of 512 blocks required for the data size from step 6.

9.  If the command fails, then fail the test case.

10. Send the SECURITY PROTOCOL IN command with the following values in the CDB:

    Security Protocol = 0xEE

    Silo Index = 0x00

    Function ID = 0x01

    INC\_512 = 1

    Allocation Length = 1

11. If the command fails, then fail the test case.

**Result:** The device must properly respond to the PROBE command.

### Silo enumeration

Purpose: To enumerate all the Silos implemented by each ACT on the device.

1.  Get the list of ACTs reported by the device.

2.  Perform the following operations on each ACT:

    1.  Authorize the ACT

    2.  Get the authorization state

    3.  Enumerate the silos implemented by the ACT

    4.  The ACT must report one or more silos

3.  The device should report at least one ACT with one authentication silo. Verify if one of the following mandatory authentication silos are reported:

    -   Password silo

    -   Certificate silo

**Result:** The device should properly report all the silos implemented by each ACTs. At least one ACT should support one or more authentication silos.

### Certificate authentication silo

**Purpose:** To validate the certificates in the certificate store

1.  Enumerate the ACTs supported by the device.

2.  Enumerate the silos for each ACT and validate the following:

    -   Silo GUID

        -   Check if the

            -   GUID is a 45 byte character sequence

            -   GUID has '-'(dash) character after

                -   6 digits company ID

                -   24 byte product ID string

                -   8 byte product instance ID string

            -   Company ID, Product ID, Product Instance ID has the upper case hexadecimal characters

    -   Certificate Store

        -   Get the certificate store locations count.

        -   Check if the certificate store locations count is greater than or equal to 6.

        -   Get the certificate at each certificate store location and check if the

            -   Validation policy has one of the following values

                -   None (01h)

                -   Basic (02h)

                -   Extended (03h)

            -   For Certificate at index zero check if the

                -   certificate type is manufacturer certificate

                -   certificate chain is in PKCS\#7 format

                -   ASCm certificate chain has a valid ASCm certificate as the last certificate in the chain

                -   ASCm chain is at least two levels deep

    -   Silo Capabilities

    -   Check if the following capabilities are supported:

        -   Hash Algorithms

        -   Asymmetric Key Cryptography

        -   Signing Algorithms

        -   Certificate support

        -   Optional features support

**Result:** The certificate authentication silo must be in compliance with the 1667 specification.

### Password silo test scenarios

**Initial Check:** Check if the password silo supports at least SHA256 digest algorithms, and the maximum challenge size reported is acceptable on the host environment. If either of them is false, then skip all the test scenarios and fail this test.

**Test Scenario 1**

**Purpose:** Check if the password silo succeeds authentication with incorrect digest algorithm

1.  Send Request Mutual Challenge command with unsupported digest algorithm and expect error

2.  If Success, fail this test.

**Result:** Expect error code ERROR\_UNSUPPORTED\_DIGEST\_ALGORITHM, 0x84.

**Test Scenario 2**

**Purpose:** Check if the password silo succeeds authentication with a user password when there is no user.

1.  Send Request Mutual Challenge command with valid and supported digest algorithm and get the device challenge.

2.  If command fails, fail the test.

3.  Send Mutual Authentication command with user password and expect error.

4.  If command fails, fail the test.

**Result:** Expect error code ERROR\_USER\_PASSWORD\_DOES\_NOT\_EXIST, 0X8B.

**Test Scenario 3**

**Purpose:** Check if the password silo succeeds with privileged operation, having a default administrator password.

1.  Send Request Mutual challenge command and obtain device challenge.

2.  Send Mutual Authentication command with administrator password.

3.  Send a privileged command and expect error.

**Result:** Expect error code ERROR\_DEFAULT\_ADMIN\_PASSWORD, 0X90

**Test Scenario 4**

**Purpose:** Check if password silo changes password with invalid Security Identifier. This test is valid only for devices which support Security Identifier.

1.  Send Request Mutual challenge command and obtain device challenge.

2.  Send Mutual authentication command with valid password.

3.  Send Change password command for the corresponding entity with valid new password and invalid security identifier.

4.  If success, fail this test and skip rest of the tests.

*Result:* Expect error code ERROR\_INVALID\_SECURITY\_IDENTIFIER, 0XA2.

**Test Scenario 5**

**Purpose:** Check if password silo has the correct state after changing admin password to empty password.

1.  Send Request Mutual Challenge command and obtain device challenge.

2.  Send Mutual Authentication command with administrator password.

3.  Send Change Password command to change admin password to valid non-empty string.

4.  Repeat steps 1 and 2 with corresponding password set in 3.

5.  Send Configure administrator command to configure administrator attributes.

6.  Repeat step 4

7.  Send Create User command to create user with valid attributes.

8.  Repeat step 4

9.  Send Change password command to change admin password to empty string.

10. Query password silo and check the password silo information.

**Warning**  
Fail the test, if any of the above commands fail.

 

**Result:** The state should be similar to the state after sending the Fire command of Initialize to Manufacturer state operation except rendering the contents of the ACT unusable.

**Test Scenario 6**

**Purpose:** Check if password silo allows creating more than one user.

1.  Send Request Mutual challenge command and obtain device challenge.

2.  Send Mutual authentication command with valid password.

3.  Send Change password command with valid non-empty admin password.

4.  Repeat steps 1 and 2

5.  Send Configure administrator command and configure admin attributes

6.  Repeat step 4

7.  Send Create User command

8.  Repeat steps 6 and 7 and expect error code

**Result:** Expect error code ERROR\_USER\_EXISTS, 0X9B

**Test Scenario 7**

**Purpose:** Check if password silo allows administrator to manipulate user's attributes and user to manipulate admin's attributes.

1.  Send Request mutual challenge command to obtain device challenge.

2.  Send Mutual authentication with admin password

3.  Send Unauthorize command for admin.

4.  Repeat steps 1 and 2.

5.  Send Authorize command for admin.

6.  Repeat step 4.

7.  Send Change password command for the user and expect error.

8.  If success, fail the test.

9.  Unauthorize admin and authorize user by repeating step 4 for each.

10. Repeat step 4.

11. Send privileged command and expect error.

12. If success, fail the test.

**Result:** Expect error code ERROR\_NOT\_AUTHENTICATED 0X90 at step 7 and 11.

**Test Scenario 8**

**Purpose:** Check the behavior of password silo when user is blocked

1.  Send Request Mutual challenge command and obtain device challenge.

2.  Send Mutual authentication command.

3.  Send Unauthorize command for the user.

4.  Repeat steps 1 and 2.

5.  Send authorize command for the user with invalid password and block the user.

6.  Repeat step 4 for user and expect error, if success fail the test.

7.  Repeat step 4 for admin

8.  Send Authorize command for admin and expect success.

9.  If error is received fail the test.

**Result:** When the user is blocked, authenticating as user should give error ERROR\_SILO\_BLOCKED 0X8C, but a non-blocked admin should be able to authenticate successfully.

**Test Scenario 9**

**Purpose:** Check the behavior of password silo on deleting user when there is none.

1.  Send Request Mutual challenge command and obtain device challenge

2.  Send Mutual authentication command.

3.  Send Delete user command.

4.  If error is received, fail the test.

5.  Repeat steps 1, 2, 3 and expect error.

**Result:** Expect error code ERROR\_USER\_DOES\_NOT\_EXIST, 0x9A on deleting a user when there is none.

**Test Scenario 10**

**Purpose:** Check if the password silo allows the admin to change user password.

1.  Send Request Mutual challenge command and obtain device challenge.

2.  Send Mutual authentication command.

3.  Send Create user command.

4.  Repeat steps 1 and 2.

5.  Send Initialize user password command and expect success.

**Result:** Administrator should be able to change the user's password only using the Initialize user password command.

**Test Scenario 11**

**Purpose:** Check the behavior of password silo when admin is blocked

1.  Send Request Mutual challenge command and obtain device challenge.

2.  Send Mutual authentication command.

3.  Send Unauthorize command for the admin.

4.  Repeat steps 1 and 2.

5.  Send authorize command for admin with invalid password and block admin.

6.  Repeat step 4 for admin and expect error, if success fail the test.

7.  Repeat step 4 for user.

8.  Send Authorize command for user and expect success.

9.  If error is received fail the test.

**Result:** When admin is blocked, authenticating as admin should give error ERROR\_SILO\_BLOCKED 0X8C, but a non-blocked user should be able to authenticate successfully.

**Test Scenario 12**

**Purpose:** Check the behavior of password silo with invalid Security identifier for Initialize to manufacturer's state command. This test is valid only for those devices which support security identifier.

1.  Send ARM operation of Initialize to manufacturer's state command with invalid security identifier and expect error, else fail the test.

2.  Send ARM operation of Initialize to manufacturer's state command with valid security identifier and expect success.

3.  Send FIRE operation of Initialize to manufacturer's state command with invalid security identifier and expect error, else fail the test.

4.  Send ARM and FIRE operations of Initialize to manufacturer's state command with valid security identifier and expect success

**Result:** With invalid security identifier in ARM and FIRE operations, expected error code is ERROR\_INVALID\_SECURIY\_IDENTIFIER, 0XA2.

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
<td><p>The device instance ID.</p></td>
</tr>
<tr class="even">
<td><p>SecurityID</p></td>
<td><p>The security ID of the device</p></td>
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
<td><p><strong>EnhancedStorageLogoTest.exe /PnpDeviceId [DiskDeviceObjLink] /SID [SecurityID]</strong></p></td>
<td><p>Runs the test.</p></td>
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
<td><p>EnhancedStorageLogotest.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\driverstest\storage\wdk\EnhancedStorage\test\</p></td>
</tr>
<tr class="even">
<td><p>EnhancedStorageTestLib.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\driverstest\storage\wdk\EnhancedStorage\test\</p></td>
</tr>
<tr class="odd">
<td><p>EnhancedStorageTestHarness.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\driverstest\storage\wdk\EnhancedStorage\test\</p></td>
</tr>
<tr class="even">
<td><p>EnhancedStorageTestCases.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\driverstest\storage\wdk\EnhancedStorage\test\</p></td>
</tr>
<tr class="odd">
<td><p>DevicePowerStateLib.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\driverstest\storage\wdk\tools\DevicePowerState\dll\</p></td>
</tr>
<tr class="even">
<td><p>DevicePowerState.sys</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\driverstest\storage\wdk\tools\DevicePowerState\sys\</p></td>
</tr>
<tr class="odd">
<td><p>EhStorClass.inf</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\driverstest\storage\wdk\EnhancedStorage\setup\EhStorClassUpdate\</p></td>
</tr>
<tr class="even">
<td><p>EhStorClass.sys</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\driverstest\storage\wdk\EnhancedStorage\setup\EhStorClassUpdate\</p></td>
</tr>
<tr class="odd">
<td><p>UpdateDriver.vbs</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\driverstest\storage\wdk\EnhancedStorage\setup\UsbstorUpdate\</p></td>
</tr>
<tr class="even">
<td><p>UpdateEhStorClassINF.ps1</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\driverstest\storage\wdk\EnhancedStorage\setup\EhStorClassUpdate\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Enhanced%20Storage%20Test%20%28LOGO%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




