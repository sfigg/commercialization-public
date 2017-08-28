---
title: SCSI Compliance Test 2.0 (LOGO)
Description: SCSI Compliance Test 2.0 (LOGO)
ms.assetid: 412f6b71-5081-4b75-abdf-07f7cf04ceef
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# SCSI Compliance Test 2.0 (LOGO)

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/412f6b71-5081-4b75-abdf-07f7cf04ceef">http://msdn.microsoft.com/en-us/library/windows/hardware/412f6b71-5081-4b75-abdf-07f7cf04ceef</b>


</conditional_block>

This automated test verifies that a block storage device (RAID adapter or disk target) that is supported by the operating system fully complies with the Small Computer System Interface (SCSI) standards described in the SCSI-3 Primary Commands-3 (SPC-3) or later, and SCSI Block Commands-2 (SBC-2) or later specifications. To see these specifications, go to <xref hlink="http://go.microsoft.com/fwlink/?LinkId=237712">Technical Committee T10 SCSI Storage Interfaces </b>.

Ensuring that the block device and the operating system maintain compliance with these standards results in a more robust and reliable system. Although some block devices might not be using a SCSI transport, the operating system communicates with them using SCSI commands (except for individual ATA disk drives that are not part of a RAID set).

The test uses SCSI pass-through requests (IOCTL\_SCSI\_PASS\_THROUGH) to construct and send SCSI command descriptor blocks (CDBs) to the device. The test evaluates the results of the commands to verify compliance.

>[!NOTE]
If you are running this test as a part of a Storage RAID Hardware-based RAID (Storage Array) submission, and your storage array supports Multipath I/O (MPIO), you must configure your MPIO to use Fail-Over Only policy, and set the target storage disk to use the same active path for all MPIO-capable disks.

If you are running this test as a part of a Storage RAID Hardware-based RAID (Storage Array) submission, make sure that LUN0 is configured as the largest size non-boot LUN.


## Test details

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><mark type="bullet_intro">Specifications</b></td>
<td><ul>
<li>Device.Storage.Hd.ScsiProtocol.SpcCompliance</li>
<li>Device.Storage.Controller.Raid.BasicFunction</li>
<li>Device.Storage.Hd.ScsiProtocol.ReferenceSpec</li>
<li>Device.Storage.Hd.ScsiProtocol.SamCompliance</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Platforms</b></td>
<td><ul>
<li><tla rid="win_threshold_desktop"></tla> x86</li>
<li><tla rid="win_threshold_desktop"></tla> x64</li>
<li><tla rid="win_threshold_server"></tla> x64</li>
<li><tla rid="win_threshold_desktop"></tla> ARM64</li>
</ul></td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Supported Releases</b></td>
<td><ul>
<li><tla rid="win_10"></tla></li>
<li><tla rid="win_10_th2"></tla></li>
<li><tla rid="win_10_rs1"></tla></li>
<li>Windows 10, version 1703</li>
<li>Windows 10, version 1709</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Expected run time (in minutes)</b></td>
<td>5</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Category</b></td>
<td>Compatibility</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Timeout (in minutes)</b></td>
<td>5</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Requires reboot</b></td>
<td>false</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Requires special configuration</b></td>
<td>false</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Type</b></td>
<td>automatic</td>
</tr>
</tbody>
</table>

## Additional documentation

Tests in this feature area might have additional documentation, including prerequisites, setup, and troubleshooting information, that can be found in the following topic(s):

-   <xref rid="p_hlk_test.device_storage_additional_documentation">Device.Storage additional documentation</b>

## Running the test

Before you run the test, complete the test setup as described in the test requirements for the type of storage controller that you are testing. See <xref rid="p_hlk_test.hard_disk_drive_testing_prerequisites">Hard Disk Drive Testing Prerequisites</b> for more information.

## Troubleshooting

For generic troubleshooting of HLK test failures, see <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.

For general troubleshooting information, see <xref rid="p_hlk_test.troubleshooting_devicestorage_testing">Troubleshooting Device.Storage Testing</b>.

Also, the test writes the results to the log files Scsicompliance.wtl and Scsicompliance.wtl.txt. You can use the results to determine:

-   If a device is compliant with the SCSI specification

-   The optional SCSI commands that are supported by a device

To pass, the SCSI device must support every mandatory command and must be fully compliant with those commands. Each command has a different threshold for pass or fail, and the expectations are specified explicitly in the test and in the log file.

Optional commands are also tested. If a device supports the optional commands and the commands are found to be non-compliant, the test fails. If the device does not support optional commands, the test passes.

>[!NOTE]
Errors from this test occur via issues identified in the log file and in stop errors produced through stressing the driver under test.


During the test, if you are having trouble removing a LUN that is failing or are unable to create a LUN from the storage controller, follow these steps:

1.  Prior to running this test, verify that the storage device works properly. Open diskmgmt.msc, select the disk, and make sure that you can put the device Online and Initialized.

2.  Restart the Windows HLK test computer.

3.  Select and rerun the SCSI Compliance Test 2.0. Do not run any test before it.

4.  Run the SCSI Compliance Test (not the SCSI Compliance Test 2.0 (LOGO)) on the same test client and same test storage device. If the test fails again, verify that the storage device is working properly. If the test fails during steps 3 and 4, run the individual failing command data blocks (cdbs) one at a time with the logging verbosity level set to 4 (the highest level of test logging). This will show what data was sent and what data was returned. A test can fail after several cdbs are completed but pass standalone. If this occurs, there is a problem in the firmware or the test.

If you have a device reset that results in the device falling off the bus and subsequent commands to fail, follow these steps:

1.  Copy the test binary (Scsicompliance.exe) from the Windows HLK controller. This file is located at \\\\controllername\\tests\\\[processorarchitectureofyourclient\]\\NTTEST\\DriversTest\\storage\\wdk\\

2.  Copy the wttlog.dll file from the Windows HLK controller. This file is located at \\\\&lt;controllername&gt;\\Tests\\&lt;processorarchitectureofyourclient &gt;\\wtt

3.  Place both of these files on the test computer in a separate folder.

4.  From a command prompt, from the directory containing the test binary, type the following command: Scsicompliance.exe /device &lt;deviceID&gt; /verbosity 4 /operation test /scenario &lt;scenario&gt; /CDB &lt;failingcdbname&gt;

    >[!NOTE]
    DeviceID and scenario values can be found by checking the repro line within the test log. The failingcdbname can be found by running the test binary with the /?option (scsicompliance.exe /?).

    
5.  Go back to the same directory and review the results to see if you can determine the reason for the test failure.

6.  If you need additional help, collect the txt and wtl logs and share the logs with Microsoft Customer Support.

If you are running this test against Windows Server 2003, make sure the disks or LUNs are not MPIO pseudo-LUNs. MPIO on Windows Server 2003 is not supported.

## More information

The following commands are validated:

>[!NOTE]
For more information about <mark type="bullet_intro">Reference</b>, visit the <xref hlink="http://go.microsoft.com/fwlink/?LinkId=237712">Technical Committee T10 SCSI Storage Interfaces </b> website.


<mark type="bullet_intro">Command</b>: Test Unit Ready

<mark type="bullet_intro">Title</b>: TEST UNIT READY Basic Verification Test

<mark type="bullet_intro">Description</b>: The TEST UNIT READY command provides a means to check if thelogical unit is ready. This is not a request for a self-test. If the logicalunit is able to accept an appropriate medium-access command without returningCHECK CONDITION status, this command shall return a GOOD status.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.33

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

<mark type="bullet_intro">Rationale</b>: This is a mandatory SPC-3/SPC-4 command.

<mark type="bullet_intro">Command</b>: Request Sense

<mark type="bullet_intro">Title</b>: REQUEST SENSE (6) Support Test

<mark type="bullet_intro">Description</b>: Checking to see if Request Sense Command is supported and returns GOOD status.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.27

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

<mark type="bullet_intro">Rationale</b>: This command is mandatory in SPC-3/SPC-4 and is used by the initiator to retrieve error sense data for failed commands.

<mark type="bullet_intro">Title</b>: REQUEST SENSE (6) RESPONSE CODE Test

<mark type="bullet_intro">Description</b>: Verify that RESPONSE CODE is either 0x70 or 0x71 or 0x72 or 0x73

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.27

<mark type="bullet_intro">Expectation</b>: RESPONSE CODE == 0x70 or RESPONSE CODE == 0x71 or RESPONSE CODE == 0x72 or RESPONSE CODE == 0x73

<mark type="bullet_intro">Title</b>: REQUEST SENSE (6) Sense Data Length Test

<mark type="bullet_intro">Description</b>: Verify that length of SENSE data is correct (data transferred matches data length reported by the command response).

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.27

<mark type="bullet_intro">Expectation</b>: Additional Sense Length &lt;= Sense data size - 8.

<mark type="bullet_intro">Command</b>: Read 6

<mark type="bullet_intro">Title</b>: READ (6) Basic Verification Test

<mark type="bullet_intro">Description</b>: The device must return GOOD (0x0) SCSI status and the first two blocks of data correctly. This test sends two READ commands reading two different but overlapped blocks of data. Then, it compares the overlapped data. It returns true if the overlapped data is the same between the read operations (implying that the two commands read the same data correctly).

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.5

<mark type="bullet_intro">Expectation</b>: ScsiStatus == 0x0.

<mark type="bullet_intro">Rationale</b>: Some of the applications still use Read 6 and haven't transitioned into Read 10. Therefore we check if this command is implemented and proceed with testing.

<mark type="bullet_intro">Title</b>: READ (6) Sequential Read Test

<mark type="bullet_intro">Description</b>: The device must read 1000 sequential blocks of data correctly. This test sends the command 1000 times, reading 1024 bytes of data sequentially starting at a random block address.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.5

<mark type="bullet_intro">Expectation</b>: All READ (6) commands succeed.

<mark type="bullet_intro">Title</b>: READ (6) Random Read Test

<mark type="bullet_intro">Description</b>: The device must read 1000 random blocks of data correctly. This test sends the command 1000 times, reading data at random logical block address.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.5

<mark type="bullet_intro">Expectation</b>: All READ (6) commands succeed.

<mark type="bullet_intro">Title</b>: READ (6) Read-With-Disk-Cache-Cleared Test

<mark type="bullet_intro">Description</b>: The device must return data correctly after clearing 12MB disk cache. This test first reads 12 MB sequential data for later verification. Then, it clears the disk cache by reading 12 MB random data. Finally, it reads the same 12 MB sequential data to see if the data is same as the one in first read.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.5

<mark type="bullet_intro">Expectation</b>: The 12 MB data read after cache cleared is correct.

<mark type="bullet_intro">Command</b>: Write 6

<mark type="bullet_intro">Title</b>: WRITE (6) Basic Functionality Test

<mark type="bullet_intro">Description</b>: The command writes one block of data to device correctly.This test compares the data we want to write and the one returned by the READ after the write operation. If the data is the same, this implies that the WRITE command writes the data to disk correctly.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.24

<mark type="bullet_intro">Expectation</b>: ScsiStatus == 0x0.

<mark type="bullet_intro">Rationale</b>: Some of the applications still use Write 6 and haven't transitioned into Write 10. Therefore we check if this command is implemented and proceed with testing.

<mark type="bullet_intro">Title</b>: WRITE (6) Sequential Write Test

<mark type="bullet_intro">Description</b>: The command writes 1000 sequential blocks of data correctly.This test sends the command 1000 times, writing data sequentially starting at a random logical block address.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.24

<mark type="bullet_intro">Expectation</b>: All WRITE (6) commands succeed.

<mark type="bullet_intro">Title</b>: WRITE (6) Random Write Test

<mark type="bullet_intro">Description</b>: The command writes 1000 random blocks of data correctly.This test sends the WRITE command 1000 times, writing data at random logical block address.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.24

<mark type="bullet_intro">Expectation</b>: All WRITE (6) commands succeed.

<mark type="bullet_intro">Title</b>: WRITE (6) Write-With-Disk-Cache-Disabled Test

<mark type="bullet_intro">Description</b>: The command writes 12 MB of data correctly with cache disabled.This test writes 12 MB of data to disk. Then, it reads the same 12 MB data that has just been written to verify that the data we just write are correct.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.24

<mark type="bullet_intro">Expectation</b>: The 12 MB data are written correctly.

<mark type="bullet_intro">Title</b>: WRITE (6) Write-With-Disk-Cache-Enabled Test

<mark type="bullet_intro">Description</b>: The command writes 12 MB of data correctly with cache enabled.This test writes 12 MB of data to disk. Then, it sends a SYNCHRONIZE CACHE (10) command to synchronize the logical block address in cache with the ones in disk. Finally, it will read the same 12 MB data that has just been written to verify that the data we just write are correct.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.24

<mark type="bullet_intro">Expectation</b>: The 12 MB data are written correctly.

<mark type="bullet_intro">Command</b>: Inquiry

<mark type="bullet_intro">Title</b>: INQUIRY Basic Verification Test

<mark type="bullet_intro">Description</b>: The device must return GOOD (0x0) SCSI status and data of size smaller than or equal to 255 bytes in response to the INQUIRY command with ALLOCATION LENGTH field set to 255 (0xFF) bytes. The ALLOCATION LENGTH field specifies the maximum number of bytes that an application client has allocated for returned data.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.4

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status and data of size smaller than or equal to 255 bytes.

<mark type="bullet_intro">Title</b>: INQUIRY Test for error when PAGE CODE field is nonzero and EVPD=0.

<mark type="bullet_intro">Description</b>: Checking that an error is returned when PAGE CODE field isnonzero and EVPD=0. Checking that an error is returned when PAGE CODE field isnonzero and EVPD=0.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.4

<mark type="bullet_intro">Expectation</b>: ScsiStatus == 0x2, CHECK CONDITION. ScsiStatus == 0x2, CHECK CONDITION.

<mark type="bullet_intro">Title</b>: INQUIRY Retrieving standard inquiry data.

<mark type="bullet_intro">Description</b>: Checking if we can retrieve standard inquiry data. Checking if we can retrieve standard inquiry data.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.4

<mark type="bullet_intro">Expectation</b>: ScsiStatus == 0x0, GOOD.

<mark type="bullet_intro">Title</b>: INQUIRY Checking size of standard inquiry data.

<mark type="bullet_intro">Description</b>: Standard INQUIRY data shall contain at least 36 bytes.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.4

<mark type="bullet_intro">Expectation</b>: Data Transfer Length &gt;= 36 bytes.

<mark type="bullet_intro">Title</b>: INQUIRY Testing device type field

<mark type="bullet_intro">Description</b>: Checking device type field to ensure it is a direct access device.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.4

<mark type="bullet_intro">Expectation</b>: Device Type == 0x0, Direct-access device.

<mark type="bullet_intro">Title</b>: INQUIRY Testing peripheral qualifier field.

<mark type="bullet_intro">Description</b>: Checking Peripheral Qualifier field.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.4

<mark type="bullet_intro">Expectation</b>: Peripheral qualifier field == 0

<mark type="bullet_intro">Title</b>: INQUIRY VERSION Field Test

<mark type="bullet_intro">Description</b>: The device must return a valid VERSION field of 0x4, 0x5 or 0x6

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.4

<mark type="bullet_intro">Expectation</b>: VERSION is 0x4 (SPC-2) or later for non-SCSI bus type and VERSION is 0x3 (SPC)or later for SCSI bus type.

<mark type="bullet_intro">Title</b>: INQUIRY Checking RESPONSE DATA FORMAT.

<mark type="bullet_intro">Description</b>: Checking that RESPONSE DATA FORMAT == 2.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.4

<mark type="bullet_intro">Expectation</b>: RESPONSE DATA FORMAT == 2.

<mark type="bullet_intro">Title</b>: INQUIRY Checking additional length.

<mark type="bullet_intro">Description</b>: Checking additional length field is correct.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.4

<mark type="bullet_intro">Expectation</b>: Additional Length field == Total Data size - 5

<mark type="bullet_intro">Title</b>: INQUIRY Checking VENDOR IDENTIFICATION field.

<mark type="bullet_intro">Description</b>: Checking that VENDOR IDENTIFICATION field contains valid ASCII.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.4

<mark type="bullet_intro">Expectation</b>: VENDOR IDENTIFICATION field contains valid ASCII.

<mark type="bullet_intro">Title</b>: INQUIRY Checking PRODUCT IDENTIFICATION field.

<mark type="bullet_intro">Description</b>: Checking that PRODUCT IDENTIFICATION field contains valid ASCII.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.4

<mark type="bullet_intro">Expectation</b>: PRODUCT IDENTIFICATION field contains valid ASCII.

<mark type="bullet_intro">Title</b>: INQUIRY Checking PRODUCT REVISION LEVEL field.

<mark type="bullet_intro">Description</b>: Checking that PRODUCT REVISION LEVEL field contains valid ASCII.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.4

<mark type="bullet_intro">Expectation</b>: PRODUCT REVISION LEVEL field contains valid ASCII.

<mark type="bullet_intro">Title</b>: INQUIRY Command Support Data Test.

<mark type="bullet_intro">Description</b>: The device must set the HiSup bit in the Standard Inquiry Data.

<mark type="bullet_intro">Reference</b>: SCSI Architecture Model - 3 (SAM-3) Revision 14 (or later) specification Section 4.9.2

<mark type="bullet_intro">Expectation</b>: HiSup bit is set in Standard Inquiry Data.

<mark type="bullet_intro">Title</b>: INQUIRY Checking for Supported Vital Product Pages.

<mark type="bullet_intro">Description</b>: Checking to see if Vital Product Pages are supported.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.4.4

<mark type="bullet_intro">Expectation</b>: List of Supported Vital Product Data Pages is returned.

<mark type="bullet_intro">Title</b>: INQUIRY Testing access to each supported Vital Product Data Page.

<mark type="bullet_intro">Description</b>: Attempting to access each supported Vital Product Data Page.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.4.4

<mark type="bullet_intro">Expectation</b>: Each supported page is accessible (up to 255 bytes).

<mark type="bullet_intro">Title</b>: INQUIRY Attempting Unit Serial Number Page 0x80.

<mark type="bullet_intro">Description</b>: Checking if Unit Serial Number Page 0x80 is supported, and is valid ASCII.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 7.6.10

<mark type="bullet_intro">Expectation</b>: ScsiStatus == 0x0, and result is valid ASCII.

<mark type="bullet_intro">Title</b>: INQUIRY Attempting Device identification Page 0x83.

<mark type="bullet_intro">Description</b>: Checking if Device identification Page 0x83 is supported.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 7.6.3

<mark type="bullet_intro">Expectation</b>: ScsiStatus == 0x0.

<mark type="bullet_intro">Title</b>: INQUIRY Checking Identification Descriptors in VPD page 0x83.

<mark type="bullet_intro">Description</b>: Checking that Identification Descriptors contain meaningful data.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 7.6.3

<mark type="bullet_intro">Expectation</b>: All descriptors are compliant, and contain meaningful data.

<mark type="bullet_intro">Title</b>: INQUIRY Checking Version Descriptors.

<mark type="bullet_intro">Description</b>: Checking to see if Version Descriptors are compliant.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.4

<mark type="bullet_intro">Expectation</b>: Version descriptors exist.

<mark type="bullet_intro">Command</b>: Mode Select 6

<mark type="bullet_intro">Title</b>: MODE SELECT (6) Basic Test

<mark type="bullet_intro">Description</b>: Checking to see if a simple MODE SELECT command, with PF and SP == 0, passes

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.7

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

<mark type="bullet_intro">Rationale</b>: Our Storage stack uses Caching Mode Page to turn on/off the device caching. Therefore the ability to write to mode pages using Mode Select commands is required.

<mark type="bullet_intro">Title</b>: MODE SELECT 6: MODE SENSE (6) Attempting to get Caching mode page.

<mark type="bullet_intro">Description</b>: Checking to see if a simple MODE SENSE command on Page 0x08 will return GOOD status.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.7

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

<mark type="bullet_intro">Title</b>: MODE SELECT 6: MODE SENSE (6) Checking Parameters Savable (PS bit).

<mark type="bullet_intro">Description</b>: Checking to see if Parameters Savable bit for the Caching Mode Page is 1.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.7

<mark type="bullet_intro">Expectation</b>: PS == 1.

<mark type="bullet_intro">Title</b>: MODE SELECT 6: MODE SENSE (6) Checking Mode Parameter Header

<mark type="bullet_intro">Description</b>: Verify that MediumType == 0 and BlockDescriptorLength == 0.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.7

<mark type="bullet_intro">Expectation</b>: MediumType == 0x0 and BlockDescriptorLength == 0x0

<mark type="bullet_intro">Title</b>: MODE SELECT 6: MODE SENSE (6) Checking Caching Mode Page Length.

<mark type="bullet_intro">Description</b>: Checking the Caching Mode Page is 20 bytes.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.7

<mark type="bullet_intro">Expectation</b>: cachePageLength == 20 bytes.

<mark type="bullet_intro">Title</b>: MODE SELECT 6: MODE SENSE (6) Getting Changeable values.

<mark type="bullet_intro">Description</b>: Saving away Changeable Values for Caching Mode Page

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.7

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

<mark type="bullet_intro">Title</b>: MODE SELECT 6: MODE SENSE (6) Getting default values.

<mark type="bullet_intro">Description</b>: Saving away Default Values for Caching Mode Page.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.7

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

<mark type="bullet_intro">Title</b>: MODE SELECT (6) Changing WCE.

<mark type="bullet_intro">Description</b>: Applying MODE SELECT to WCE=0 for the device.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.7

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

<mark type="bullet_intro">Title</b>: MODE SELECT 6: MODE SENSE (6) Checking that WCE has been cleared.

<mark type="bullet_intro">Description</b>: Checking that the previous MODE SELECT command actually changed the current mode parameters.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.7

<mark type="bullet_intro">Expectation</b>: WCE is clear.

<mark type="bullet_intro">Title</b>: MODE SELECT 6: MODE SENSE (6) Checking that Saved Values have changed.

<mark type="bullet_intro">Description</b>: Checking that the previous MODE SELECT command actually changed the saved mode parameters.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.7

<mark type="bullet_intro">Expectation</b>: Saved values have changed.

<mark type="bullet_intro">Title</b>: MODE SELECT (6) setting WCE

<mark type="bullet_intro">Description</b>: Applying MODE SELECT to set WCE.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.7

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

<mark type="bullet_intro">Title</b>: MODE SELECT 6: MODE SENSE (6) Checking that WCE has been set.

<mark type="bullet_intro">Description</b>: Checking that the previous MODE SELECT command actually set WCE.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.7

<mark type="bullet_intro">Expectation</b>: Current values have been set.

<mark type="bullet_intro">Title</b>: MODE SELECT (6) Attempting to restore original values.

<mark type="bullet_intro">Description</b>: Testing MODE SELECT can return the Caching Mode Page values to their original values.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.7

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

<mark type="bullet_intro">Title</b>: MODE SELECT 6: MODE SENSE (6) Verifying values were restored.

<mark type="bullet_intro">Description</b>: Checking that the values were restored in the Caching Mode Page.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.7

<mark type="bullet_intro">Expectation</b>: Current values equal default values.

<mark type="bullet_intro">Command</b>: Mode Sense 6

<mark type="bullet_intro">Title</b>: MODE SENSE (6) Basic Test

<mark type="bullet_intro">Description</b>: Checking to see if a simple MODE SENSE command on Page 0x3f will return GOOD status

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.9

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

<mark type="bullet_intro">Rationale</b>: Storage stack uses Caching Mode Page to turn on/off the device caching. Therefore the ability to read to mode pages using Mode Sense commands is required.

<mark type="bullet_intro">Title</b>: MODE SENSE (6) Checking size of returned data.

<mark type="bullet_intro">Description</b>: Checking that we receive a minimum amount of data (i.e. at least the MODE PARAMETER HEADER).

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.9

<mark type="bullet_intro">Expectation</b>: Data Transfer Length &gt;= 4 bytes

<mark type="bullet_intro">Title</b>: MODE SENSE (6) Checking MODE PARAMETER HEADER

<mark type="bullet_intro">Description</b>: Checking that the MODE PARAMETER HEADER length information is valid.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.9

<mark type="bullet_intro">Expectation</b>: ModeDataLength = Data Transfer Length - 1 = -1 bytes.

<mark type="bullet_intro">Title</b>: MODE SENSE (6) Test DBD (disable block descriptors) bit.

<mark type="bullet_intro">Description</b>: Testing to make sure that, when DBD bit is set, no block descriptors are returned.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.9

<mark type="bullet_intro">Expectation</b>: Block Descriptor Length = 0

<mark type="bullet_intro">Title</b>: MODE SENSE (6) Testing new data length when DBD bit is set.

<mark type="bullet_intro">Description</b>: : Testing that new data length should equal old data length minus block descriptor length.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.9

<mark type="bullet_intro">Expectation</b>: New Data Length = Old Data Length

<mark type="bullet_intro">Title</b>: MODE SENSE (6) Comparing MODE PAGE data before and after DBD bit is set

<mark type="bullet_intro">Description</b>: Testing that page data is the same before and after DBD bit is set.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.9

<mark type="bullet_intro">Expectation</b>: Page data will match

<mark type="bullet_intro">Title</b>: MODE SENSE (6) Testing Page Control Field

<mark type="bullet_intro">Description</b>: Testing different values of the Page control field, and enforcing the size of the data returned.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.9

<mark type="bullet_intro">Expectation</b>: Data length for each value of PC is correct.

<mark type="bullet_intro">Title</b>: MODE SENSE (6) Scanning All Mode Pages.

<mark type="bullet_intro">Description</b>: Checking Mode Page 0x3f data to examine supported mode pages.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.9

<mark type="bullet_intro">Expectation</b>: To find supported mode pages: Information exception control mode page and Caching mode page.

<mark type="bullet_intro">Title</b>: MODE SENSE (6) Ensuring mandatory mode pages are supported

<mark type="bullet_intro">Description</b>: Checking that required mode pages are present in MODE PAGE 0x3f

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.9

<mark type="bullet_intro">Expectation</b>: Caching and Informational Exception pages are supported, at a minimum.

<mark type="bullet_intro">Title</b>: MODE SENSE (6) Checking Individual Mode Pages

<mark type="bullet_intro">Description</b>: Testing to ensure we can access each individual mode page, and that the paremeters are correct

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.9

<mark type="bullet_intro">Expectation</b>: Pages should be returned and the headers should be compliant

<mark type="bullet_intro">Title</b>: MODE SENSE (6) Checking Informational Exception Mode Page

<mark type="bullet_intro">Description</b>: Ensuring Informational Exception Mode Page is compliant

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.9

<mark type="bullet_intro">Expectation</b>: Power Condition Mode Page is supported

<mark type="bullet_intro">Title</b>: MODE SENSE (6) Checking Informational Exception Mode Page

<mark type="bullet_intro">Description</b>: Ensuring Informational Exception Mode Page is compliant

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.9

<mark type="bullet_intro">Expectation</b>: Power Condition Mode Page is supported

<mark type="bullet_intro">Title</b>: MODE SENSE (6) Checking Power Condition Mode Page.

<mark type="bullet_intro">Description</b>: Ensuring Power Condition Mode Page is compliant

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.9

<mark type="bullet_intro">Expectation</b>: Informational Exception Mode Page is supported

<mark type="bullet_intro">Title</b>: MODE SENSE (6) Checking Caching Mode Page.

<mark type="bullet_intro">Description</b>: Ensuring Caching Mode Page is compliant.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.9

<mark type="bullet_intro">Expectation</b>: Caching Mode Page is supported.

<mark type="bullet_intro">Title</b>: MODE SENSE (6) Checking Device Specific Parameters

<mark type="bullet_intro">Description</b>: This tests to see if the Device specific parameters are supported.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.9

<mark type="bullet_intro">Expectation</b>: Nothing.

<mark type="bullet_intro">Command</b>: Read Capacity 10

<mark type="bullet_intro">Title</b>: READ CAPACITY (10) Basic Verification Test

<mark type="bullet_intro">Description</b>: The device must return GOOD (0x0) SCSI status and 8 bytes of parameter data describing the capacity and medium format of the block device to the data-in buffer.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.10

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

<mark type="bullet_intro">Rationale</b>: This command is required for formatting operations and initialization.

<mark type="bullet_intro">Command</b>: Read 10

<mark type="bullet_intro">Title</b>: READ (10) Basic Functionality Test

<mark type="bullet_intro">Description</b>: The command reads the first two blocks of data correctly.This test sends two READ commands reading two different but overlapped blocks of data. Then, it compares the overlapped data. It returns true if the overlapped data is the same between the read operations (implying that the two commands read the same data correctly).

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.6

<mark type="bullet_intro">Expectation</b>: Scsi Status == 0x0.

<mark type="bullet_intro">Rationale</b>: Used to Read data from device.

<mark type="bullet_intro">Title</b>: READ (10) Sequential Read Test

<mark type="bullet_intro">Description</b>: The command reads 1000 sequential blocks of data correctly.This test sends the command 1000 times, reading data sequentially starting at a random logical block address.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.6

<mark type="bullet_intro">Expectation</b>: All READ (10) commands succeed.

<mark type="bullet_intro">Title</b>: READ (10) Random Read Test

<mark type="bullet_intro">Description</b>: The command reads 1000 random blocks of data correctly.This test sends the command 1000 times, reading data at random logical block address.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.6

<mark type="bullet_intro">Expectation</b>: All READ (10) commands succeed.

<mark type="bullet_intro">Title</b>: READ (10) Read-With-Disk-Cache-Cleared Test

<mark type="bullet_intro">Description</b>: The command reads 12 MB of data correctly with disk cache cleared.This test first reads 12 MB sequential data for later verification. Then, it clears the disk cache by reading 12 MB random data. Finally, it reads the same 12 MB sequential data to see if the data is same as the one in first read.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.6

<mark type="bullet_intro">Expectation</b>: The 12 MB data read after cache cleared is correct.

<mark type="bullet_intro">Command</b>: Write 10

<mark type="bullet_intro">Title</b>: WRITE (10) Basic Functionality Test

<mark type="bullet_intro">Description</b>: The command writes one block of data to device correctly.This test compares the data we want to write and the one returned by the READ after the write operation. If the data is the same, this implies that the WRITE command writes the data to disk correctly.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.25

<mark type="bullet_intro">Expectation</b>: ScsiStatus == 0x0.

<mark type="bullet_intro">Rationale</b>: Used to write data to device.

<mark type="bullet_intro">Title</b>: WRITE (10) Sequential Write Test

<mark type="bullet_intro">Description</b>: The command writes 1000 sequential blocks of data correctly.This test sends the command 1000 times, writing data sequentially starting at a random logical block address.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.25

<mark type="bullet_intro">Expectation</b>: All WRITE (10) commands succeed.

<mark type="bullet_intro">Title</b>: WRITE (10) Random Write Test

<mark type="bullet_intro">Description</b>: The command writes 1000 random blocks of data correctly.This test sends the WRITE command 1000 times, writing data at random logical block address.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.25

<mark type="bullet_intro">Expectation</b>: All WRITE (10) commands succeed.

<mark type="bullet_intro">Title</b>: WRITE (10) Write-With-Disk-Cache-Disabled Test

<mark type="bullet_intro">Description</b>: The command writes 12 MB of data correctly with cache disabled.This test writes 12 MB of data to disk. Then, it reads the same 12 MB data that has just been written to verify that the data we just write are correct.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.25

<mark type="bullet_intro">Expectation</b>: The 12 MB data are written correctly

<mark type="bullet_intro">Title</b>: WRITE (10) Write-With-Disk-Cache-Enabled Test

<mark type="bullet_intro">Description</b>: The command writes 12 MB of data correctly with cache enabled.This test writes 12 MB of data to disk. Then, it sends a SYNCHRONIZE CACHE (10) command to synchronize the logical block address in cache with the ones in disk. Finally, it will read the same 12 MB data that has just been written to verify that the data we just write are correct.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.25

<mark type="bullet_intro">Expectation</b>: The 12 MB data are written correctly.

<mark type="bullet_intro">Title</b>: WRITE (10) FUA Test

<mark type="bullet_intro">Description</b>: The command writes data to disk correctly with cache and FUA (Force Unit Access) on.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.25.

<mark type="bullet_intro">Expectation</b>: Data is written correctly to disk with FUA on. Checksums of all WRITE (10) are correct.

<mark type="bullet_intro">Title</b>: VERIFY (10) Support Test

<mark type="bullet_intro">Description</b>: Verify that the device supports the VERIFY (10) command. This test issues a simple VERIFY (10) command and checks whether the return code is 0x2 (meaning not supported).

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 3 (SBC-3) Revision 27 (or published) specification Section 5.28.

<mark type="bullet_intro">Expectation</b>: Scsi Status is 0x0 (GOOD).

<mark type="bullet_intro">Title</b>: VERIFY (10) Zero Length Test

<mark type="bullet_intro">Description</b>: The test sends VERIFY (10) command with both LOGICAL BLOCK ADDRESS and VERIFICATION LENGTH set to 0. Based on the spec, VERIFICATION LENGTH field set to zero specifies that no logical blocks shall be verified. This condition shall not be considered as an error.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 3 (SBC-3) Revision 27 (or published) specification Section 5.28.

<mark type="bullet_intro">Expectation</b>: Scsi Status is 0x0 (GOOD).

<mark type="bullet_intro">Title</b>: VERIFY (10) Random LBA Test

<mark type="bullet_intro">Description</b>: The test sends VEIRFY (10) command with VERIFICATION LENGTH = 1 and randomized LOGICAL BLOCK ADDRESS (random between 0 and last LBA).

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 3 (SBC-3) Revision 27 (or published) specification Section 5.28.

<mark type="bullet_intro">Expectation</b>: Scsi Status is 0x0 (GOOD).

<mark type="bullet_intro">Title</b>: VERIFY (10) Exceed Capacity Test

<mark type="bullet_intro">Description</b>: The test sends VEIRFY (10) command with VERIFICATION LENGTH = 2 and LOGICAL BLOCK ADDRESS set to the last LBA.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 3 (SBC-3) Revision 27 (or published) specification Section 5.28.

<mark type="bullet_intro">Expectation</b>: Scsi Status is 0x2 (CHECK CONDITION).

<mark type="bullet_intro">Command</b>: Mode Select 10

<mark type="bullet_intro">Title</b>: MODE SELECT (10) Basic Test

<mark type="bullet_intro">Description</b>: Checking to see if a simple MODE SELECT command, with PF and SP == 0, passes

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.8

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

<mark type="bullet_intro">Rationale</b>: Mode Select 6 is mandatory and Mode Select 10 is Optional and would be tested if-implemented.

<mark type="bullet_intro">Title</b>: MODE SELECT 10: MODE SENSE (10) Attempting to get Caching mode page.

<mark type="bullet_intro">Description</b>: Checking to see if a simple MODE SENSE command on Page 0x08 will return GOOD status.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.8

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

<mark type="bullet_intro">Title</b>: MODE SELECT 10: MODE SENSE (10) Checking Parameters Savable (PS bit).

<mark type="bullet_intro">Description</b>: Checking to see if Parameters Savable bit for the Caching Mode Page is 1.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.8

<mark type="bullet_intro">Expectation</b>: PS == 1.

<mark type="bullet_intro">Title</b>: MODE SELECT 10: MODE SENSE (10) Checking Mode Parameter Header

<mark type="bullet_intro">Description</b>: Verify that MediumType == 0 and BlockDescriptorLength == 0.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.8

<mark type="bullet_intro">Expectation</b>: MediumType == 0x0 and BlockDescriptorLength == 0x0

<mark type="bullet_intro">Title</b>: MODE SELECT 10: MODE SENSE (10) Checking Caching Mode Page Length.

<mark type="bullet_intro">Description</b>: Checking the Caching Mode Page is 20 bytes.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.8

<mark type="bullet_intro">Expectation</b>: cachePageLength == 20 bytes.

<mark type="bullet_intro">Title</b>: MODE SELECT 10: MODE SENSE (10) Getting Changeable values.

<mark type="bullet_intro">Description</b>: Saving away Changeable Values for Caching Mode Page

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.8

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

<mark type="bullet_intro">Title</b>: MODE SELECT 10: MODE SENSE (10) Getting default values.

<mark type="bullet_intro">Description</b>: Saving away Default Values for Caching Mode Page.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.8

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI statu

<mark type="bullet_intro">Title</b>: MODE SELECT (10) Changing WCE.

<mark type="bullet_intro">Description</b>: Applying MODE SELECT to WCE=0 for the device.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.8

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

<mark type="bullet_intro">Title</b>: MODE SELECT 10: MODE SENSE (10) Checking that WCE has been cleared.

<mark type="bullet_intro">Description</b>: Checking that the previous MODE SELECT command actually changed the current mode parameters.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.8

<mark type="bullet_intro">Expectation</b>: : WCE is clear.

<mark type="bullet_intro">Title</b>: MODE SELECT 10: MODE SENSE (10) Checking that Saved Values have changed.

<mark type="bullet_intro">Description</b>: Checking that the previous MODE SELECT command actually changed the saved mode parameters.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.8

<mark type="bullet_intro">Expectation</b>: Saved values have changed.

<mark type="bullet_intro">Title</b>: MODE SELECT (10) setting WCE

<mark type="bullet_intro">Description</b>: Applying MODE SELECT to set WCE.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.8

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

<mark type="bullet_intro">Title</b>: MODE SELECT 10: MODE SENSE (10) Checking that WCE has been set.

<mark type="bullet_intro">Description</b>: Checking that the previous MODE SELECT command actually set WCE.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.8

<mark type="bullet_intro">Expectation</b>: Current values have been set.

<mark type="bullet_intro">Title</b>: MODE SELECT (10) Attempting to restore original values.

<mark type="bullet_intro">Description</b>: Testing MODE SELECT can return the Caching Mode Page values to their original values

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.8

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

<mark type="bullet_intro">Title</b>: MODE SELECT 10: MODE SENSE (10) Verifying values were restored.

<mark type="bullet_intro">Description</b>: Checking that the values were restored in the Caching Mode Page.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.8

<mark type="bullet_intro">Expectation</b>: Current values equal default values.

<mark type="bullet_intro">Command</b>: Mode Sense 10

<mark type="bullet_intro">Title</b>: MODE SENSE (10) Basic Test

<mark type="bullet_intro">Description</b>: Checking to see if a simple MODE SENSE10 command on Page 0x3f will return GOOD status

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.10

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

<mark type="bullet_intro">Rationale</b>: Mode Sense 6 is mandatory and Mode Sense 10 is Optional and would be tested if-implemented.

<mark type="bullet_intro">Title</b>: MODE SENSE (10) Checking size of returned data.

<mark type="bullet_intro">Description</b>: Checking that we receive a minimum amount of data (i.e. at least the MODE PARAMETER HEADER).

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.10

<mark type="bullet_intro">Expectation</b>: Data Transfer Length &gt;= 8 bytes

<mark type="bullet_intro">Title</b>: MODE SENSE (10) Checking MODE PARAMETER HEADER

<mark type="bullet_intro">Description</b>: Checking that the MODE PARAMETER HEADER length information is valid.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.10

<mark type="bullet_intro">Expectation</b>: ModeDataLength = Data Transfer Length - 2 = -2 bytes.

<mark type="bullet_intro">Title</b>: MODE SENSE (10) Test DBD (disable block descriptors) bit.

<mark type="bullet_intro">Description</b>: Testing to make sure that, when DBD bit is set, no block descriptors are returned.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.10

<mark type="bullet_intro">Expectation</b>: Block Descriptor Length = 0

<mark type="bullet_intro">Title</b>: MODE SENSE (10) Comparing MODE PAGE data before and after DBD bit is set

<mark type="bullet_intro">Description</b>: Testing that page data is the same before and after DBD bit is set.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.10

<mark type="bullet_intro">Expectation</b>: Page data will match

<mark type="bullet_intro">Title</b>: MODE SENSE (10) Testing Page Control Field

<mark type="bullet_intro">Description</b>: Testing different values of the Page control field, and enforcing the size of the data returned.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.10

<mark type="bullet_intro">Expectation</b>: Data length for each value of PC is correct and PC=0 and PC=2 return good status.

<mark type="bullet_intro">Command</b>: Read 16

<mark type="bullet_intro">Title</b>: READ (16) Support Test

<mark type="bullet_intro">Description</b>: Verify that the device supports the READ (16) command.This test issues a simple READ (16) command and checks whether the return code is 0x2 (meaning not supported).

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.8

<mark type="bullet_intro">Expectation</b>: Scsi Status is 0x0.

<mark type="bullet_intro">Title</b>: READ (16) Basic Functionality Test

<mark type="bullet_intro">Description</b>: The command reads the first two blocks of data correctly.This test sends two READ commands reading two different but overlapped blocks of data. Then, it compares the overlapped data. It returns true if the overlapped data is the same between the read operations (implying that the two commands read the same data correctly).

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.8

<mark type="bullet_intro">Expectation</b>: Scsi Status is 0x0.

<mark type="bullet_intro">Rationale</b>: If device is 64-bit LBA, Read 16 is Mandatory to read entire disk. Else its if-implemented.

<mark type="bullet_intro">Title</b>: READ (16) Sequential Read Test

<mark type="bullet_intro">Description</b>: The device must read 1000 sequential blocks of data correctly. This test sends the command 1000 times, reading data sequentially starting at a random logical block address.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.8

<mark type="bullet_intro">Expectation</b>: All READ (16) commands succeed.

<mark type="bullet_intro">Title</b>: READ (16) Random Read Test

<mark type="bullet_intro">Description</b>: The command reads 1000 random blocks of data correctly.This test sends READ (16) command 1000 times, reading data at random logical block address.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.8

<mark type="bullet_intro">Expectation</b>: All READ (16) commands succeed.

<mark type="bullet_intro">Title</b>: READ (16) Read-With-Disk-Cache-Cleared Test

<mark type="bullet_intro">Description</b>: The command reads 12 MB of data correctly with disk cache cleared.This test first reads 12 MB sequential data for later verification. Then, it clears the disk cache by reading 12 MB random data. Finally, it reads the same 12 MB sequential data to see if the data is same as the one in first read.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.8

<mark type="bullet_intro">Expectation</b>: The 12 MB data read after cache cleared is correct.

<mark type="bullet_intro">Command</b>: Write 16

<mark type="bullet_intro">Title</b>: WRITE (16) Support Test

<mark type="bullet_intro">Description</b>: Verify that the device supports the command.This test issues a simple WRITE (16) command and checks whether the return code is 0x2 (Check Condition).

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.27

<mark type="bullet_intro">Expectation</b>: ScsiStatus == 0x0.

<mark type="bullet_intro">Title</b>: WRITE (16) Basic Functionality Test

<mark type="bullet_intro">Description</b>: The command writes one block of data to device correctly.This test compares the data we want to write and the one returned by the READ after the write operation. If the data is the same, this implies that the WRITE command writes the data to disk correctly.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.27

<mark type="bullet_intro">Expectation</b>: : ScsiStatus == 0x0.

<mark type="bullet_intro">Rationale</b>: If device is 64-bit LBA, Write 16 is Mandatory to write entire disk. Else its if-implemented.

<mark type="bullet_intro">Title</b>: WRITE (16) Sequential Write Test

<mark type="bullet_intro">Description</b>: The command writes 1000 sequential blocks of data correctly.This test sends the command 1000 times, writing data sequentially starting at a random logical block address.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.27

<mark type="bullet_intro">Expectation</b>: All WRITE (16) commands succeed.

<mark type="bullet_intro">Title</b>: WRITE (16) Random Write Test

<mark type="bullet_intro">Description</b>: The command writes 1000 random blocks of data correctly.This test sends the WRITE command 1000 times, writing data at random logical block address.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.27

<mark type="bullet_intro">Expectation</b>: All WRITE (16) commands succeed.

<mark type="bullet_intro">Title</b>: WRITE (16) Write-With-Disk-Cache-Disabled Test

<mark type="bullet_intro">Description</b>: The command writes 12 MB of data correctly with cache disabled.This test writes 12 MB of data to disk. Then, it reads the same 12 MB data that has just been written to verify that the data we just write are correct.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.27

<mark type="bullet_intro">Expectation</b>: The 12 MB data are written correctly.

<mark type="bullet_intro">Title</b>: WRITE (16) Write-With-Disk-Cache-Enabled Test

<mark type="bullet_intro">Description</b>: The command writes 12 MB of data correctly with cache enabled.This test writes 12 MB of data to disk. Then, it sends a SYNCHRONIZE CACHE (10) command to synchronize the logical block address in cache with the ones in disk. Finally, it will read the same 12 MB data that has just been written to verify that the data we just write are correct.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.27

<mark type="bullet_intro">Expectation</b>: The 12 MB data returned by the WRITEs is correct.

<mark type="bullet_intro">Title</b>: VERIFY (16) Support Test

<mark type="bullet_intro">Description</b>: Verify that the device supports the VERIFY (16) command. This test issues a simple VERIFY (16) command and checks whether the return code is 0x2 (meaning not supported).

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 3 (SBC-3) Revision 27 (or published) specification Section 5.30.

<mark type="bullet_intro">Expectation</b>: Scsi Status is 0x0 (GOOD).

<mark type="bullet_intro">Title</b>: VERIFY (16) Zero Length Test

<mark type="bullet_intro">Description</b>: The test sends VERIFY (16) command with both LOGICAL BLOCK ADDRESS and VERIFICATION LENGTH set to 0. Based on the spec, VERIFICATION LENGTH field set to zero specifies that no logical blocks shall be verified. This condition shall not be considered as an error.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 3 (SBC-3) Revision 27 (or published) specification Section 5.30.

<mark type="bullet_intro">Expectation</b>: Scsi Status is 0x0 (GOOD).

<mark type="bullet_intro">Title</b>: VERIFY (16) Random LBA Test

<mark type="bullet_intro">Description</b>: The test sends VERIFY (16) command with VERIFICATION LENGTH = 1 and randomized LOGICAL BLOCK ADDRESS (random between 0 and last LBA).

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 3 (SBC-3) Revision 27 (or published) specification Section 5.30.

<mark type="bullet_intro">Expectation</b>: Scsi Status is 0x0 (GOOD).

<mark type="bullet_intro">Title</b>: VERIFY (16) Exceed Capacity Test

<mark type="bullet_intro">Description</b>: The test sends VEIRFY (16) command with VERIFICATION LENGTH = 2 and LOGICAL BLOCK ADDRESS set to the last LBA.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 3 (SBC-3) Revision 27 (or published) specification Section 5.30.

Expectation: Scsi Status is 0x2 (CHECK CONDITION).

<mark type="bullet_intro">Command</b>: Report LUNS

<mark type="bullet_intro">Title</b>: REPORT LUNS Basic Verification Test

<mark type="bullet_intro">Description</b>: Attempts to find the LUN 0 corresponding to D.U.T. and execute the REPORT LUNS command. This test will only send REPORT LUNS to LUN 0 at the current target address per SAM-3. This test will only issue a request with SELECT REPORT set to zero per SPC-3.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.21

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status and data of size smaller than or equal to 255 bytes.

<mark type="bullet_intro">Rationale</b>: Report LUNS is used to discover LUNs present on the device. It is Mandatory for UAS. BOT uses the GetMaxLun USB class-specific command instead. So this is optional for BOT devices. Although we check for implementation of this CDB and test this command if implemented.

<mark type="bullet_intro">Title</b>: REPORT LUNS LUN0 Test

<mark type="bullet_intro">Description</b>: This test will only send REPORT LUNS to LUN 0 at the current target address per SAM-3.This test will only issue a request with SELECT REPORT set to zero per SPC-3.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.21

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status and data of size smaller than or equal to 255 bytes.

<mark type="bullet_intro">Title</b>: REPORT LUNS Data valid Test

<mark type="bullet_intro">Description</b>: This test will only send REPORT LUNS to LUN 0 at the current target address per SAM-3.This test will only issue a request with SELECT REPORT set to zero per SPC-3.

<mark type="bullet_intro">Reference</b>: SCSI Primary Commands - 3 (SPC-3) Revision 23 (or published) specification Section 6.21

<mark type="bullet_intro">Expectation</b>: Each reported LUN uses single level numbers restricted to &lt;= 255.

<mark type="bullet_intro">Command</b>: Read Capacity 16

<mark type="bullet_intro">Title</b>: READ CAPACITY (16) Allocation length test

<mark type="bullet_intro">Description</b>: The device must return GOOD (0x0) SCSI status even though allocation lengthis set to 0 value

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.11

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

<mark type="bullet_intro">Rationale</b>: This command is required for formatting operations and initialization.

<mark type="bullet_intro">Title</b>: READ CAPACITY (16) Basic Verification Test

<mark type="bullet_intro">Description</b>: The device must return GOOD (0x0) SCSI status and 8 bytes of parameter data describing the capacity and medium format of the block device to the data-in buffer.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.11

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

<mark type="bullet_intro">Title</b>: READ CAPACITY (16) Capacity Test

<mark type="bullet_intro">Description</b>: Send a READ CAPACITY command to check the reported block address. If the block address is greater than the READ CAPACITY 10 limit, ensure READ CAPACITY 10 block address is set to 0xFFFF\_FFFF.

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.11

<mark type="bullet_intro">Expectation</b>: For block addresses greater than READ CAPACITY 10 can describe, the READ CAPACITY 10 block address is set to 0xFFFF\_FFFF.

<mark type="bullet_intro">Command</b>: Start Stop Unit

<mark type="bullet_intro">Title</b>: START STOP UNIT Basic Test 1

<mark type="bullet_intro">Description</b>: Sending StartStopUnit with IMMED=0, LOEJ=0, START=0, spin down drive

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.17

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

<mark type="bullet_intro">Rationale</b>: This command is required to ensure data integrity in the face of power state changes and disconnection from the bus.

<mark type="bullet_intro">Title</b>: START STOP UNIT Basic Test 2

<mark type="bullet_intro">Description</b>: Sending StartStopUnit with IMMED=0, LOEJ=0, START=1, spin up drive

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.17

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

<mark type="bullet_intro">Title</b>: START STOP UNIT Basic Test 3

<mark type="bullet_intro">Description</b>: Sending StartStopUnit with IMMED=1, LOEJ=0, START=0, spin down drive

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.17

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

<mark type="bullet_intro">Title</b>: START STOP UNIT Basic Test 4

<mark type="bullet_intro">Description</b>: Sending StartStopUnit with IMMED=1, LOEJ=0, START=1, spin up drive

<mark type="bullet_intro">Reference</b>: SCSI Block Commands - 2 (SBC-2) Revision 16 (or published) specification Section 5.17

<mark type="bullet_intro">Expectation</b>: The device must return GOOD (0x0) SCSI status

## Command syntax

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
<td><p><strong>Scsicompliance.exe</strong></p></td>
<td><p>The options for the test are listed below</p></td>
</tr>
<tr class="even">
<td><p><strong>/device</strong></p></td>
<td><p>The device which test is to run on</p>
<p>Example: /Device &lt;physical device path&gt;</p></td>
</tr>
<tr class="odd">
<td><p><strong>/operation</strong></p></td>
<td><p>The operation to run.</p>
<p>Example: /Operation Test</p></td>
</tr>
<tr class="even">
<td><p><strong>/scenario</strong></p></td>
<td><p>The feature to be tested for.</p>
<p>Example: /Scenario Common</p></td>
</tr>
<tr class="odd">
<td><p><strong>/verbosity</strong></p></td>
<td><p>The level of logging verbosity. Larger values cause more verbose output.</p>
<p>Example: /Verbosity 4</p></td>
</tr>
</tbody>
</table>

>[!NOTE]
For command-line help for this test binary, type **/?**.


## File list

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
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\driverstest\storage\wdk\nttest\</p></td>
</tr>
</tbody>
</table>

## Parameters

| Parameter name                                   | Parameter description                                                                                                                                                                                          |
|--------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <mark type="bullet_intro">DiskDeviceObjLink</b>  | Device path of disk to test EX: \\\\.\\disk0                                                                                                                                                                   |
| <mark type="bullet_intro">WDKDeviceID</b>        | Instance path of device to test                                                                                                                                                                                |
| <mark type="bullet_intro">LoggingVerbosity</b>   | LoggingVerbosity: Detail of logging. Levels are cumulative. 0 = Assertions and results. 1 = Details (default). 2 = CDBs , data, and sense info. 3 = Debug and detailed Mode page information. 4 = Memory usage |
| <mark type="bullet_intro">ScenarioId</b>         | Scenario test name.                                                                                                                                                                                            |
| <mark type="bullet_intro">LLU\_NetAccessOnly</b> | User account for accessing test fileshare.                                                                                                                                                                     |
| <mark type="bullet_intro">LLU\_LclAdminUsr</b>   | User account for running the test.                                                                                                                                                                             |
| <mark type="bullet_intro">OperationId</b>        |                                                                                                                                                                                                                |
| <mark type="bullet_intro">Destructive</b>        | (0,1) 0=Passive, 1=Destructive                                                                                                                                                                                 |





