---
author: joshbax-msft
title: Trim Performance Test
description: Trim Performance Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 655e1d70-b0bf-423c-a5b2-4bc7b0cc295a
---

# Trim Performance Test


This test evaluates the performance of the trim command.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.Trim.BasicFunction</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~180 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Hard Disk Drive Testing Prerequisites](hard-disk-drive-testing-prerequisites.md).

The device supporting trim must be attached to the appropriate controller. The job will prepare the disk with the correct partition and formatting for the testing. The test is destructive and therefore **the disk cannot be the boot drive**. Also, since the test logs large amounts of data, ensure that there is a separate drive available to be used as the logger drive. The test will automatically pick the logging drive. It is important to minimize the amount of activity occurring on the drive outside of the logo test. Since this is a performance test, outside activity may affect the results. Additionally, preconditioning the drive by writing data to fill up the drive before starting the test may give more consistent results. This is dependent on the drives implementation and may not be advantageous to all drives.

## Troubleshooting


-   Check WTT Trace

    -   View **Task Log** of **Run Trim Performance Test**.

    -   Open the log file **TrimPerf.wtl**.

    -   Check for messages that may solve the issue.

    -   Copy the .wtl log file. This is the WTT trace described in the WTT Trace section.

-   Check launched command results

    -   Browse Job Logs of Trim Performance Test (LOGO).

    -   Open the LaunchCommand.result.

    -   If the error is related to launching a process, determine why logman or tracerpt failed.

-   No metrics found

    -   The test depends on Storport ETW tracing being enabled in order to get the command completion metrics. See the ETW Trace section for more information about enabling this tracing.

    -   Ensure no other Storport ETW traces are currently logging. Only one Storport ETW trace can be active at a time.

-   If you get the error message “The test drive does not support trim”, try the following:

    -   Ensure that the SATA SSD’s IDENTIFY DEVICE data word 169 bit 0 is set to one.

    -   Try to send a Trim command via DATA SET MANAGEMENT.

    -   Run the test again.

-   If the test failed because the read and write maximum latency exceeded 500 milliseconds, try the following:

    -   Check the IO latency without Trim. Try to lower the latency below 500 milliseconds.

    -   Check the IO latency with presence of Trim. Try to lower the latency below 500 milliseconds.

-   If you want to debug the failure by running particular test cases, you may try the following command line options:

    -   Display all the test cases with numbers: **TrimPerf.exe /DriveNumber \[StorageDriveNumber\] /LogDriveLetter \[LoggerDriveLetter\]: /DeviceType StorConsumer /PrintTestCaseName**

    -   Run particular test case by test case number: **TrimPerf.exe /DriveNumber \[StorageDriveNumber\] /LogDriveLetter \[LoggerDriveLetter\]: /DeviceType StorConsumer /Precondition F /TestCase \[TestCaseNumber\]**

-   If you want to debug the failure by running particular pure Trim scenario, you may try the following command line options:

    -   The binary has unit test options: **TrimPerf.exe /DriveNumber \[StorageDriveNumber\] /LogDriveLetter \[LoggerDriveLetter\]: /DeviceType StorConsumer /Precondition F /UnitTest T /RangeCount \[NumberOfRangesPerTrim\] /SizeCount \[SizeOfEachRange\] /SizeUnit Sector /TrimCount \[NumberOfTrims\]**

    -   **/RangeCount**: The number of ranges per Trim command

    -   **/SizeCount**: The size of each range in /SizeUnit

    -   **/SizeUnit**: The granularity of /SizeCount, for SATA SSD, the granularity is sector.

    -   **/TrimCount**: The number of Trims sent in the test case.

-   If you want to debug the failure faster, try disable the preconditioning (fill up the drive to 90% full, takes long time) by adding /Precondition F parameter as follows:

    -   **TrimPerf.exe /DriveNumber \[StorageDriveNumber\] /LogDriveLetter \[LoggerDriveLetter\]: /DeviceType StorConsumer /Scenario Performance /DiskSize 0 /Cooldown 2 /Precondition F**

For more troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

## More information


The job takes in the device instance ID of the device under test and converts the device instance ID to a physical drive number. The job partitions and formats the drive to get it into the configuration needed for testing. The test will run through a series of test cases each mapped to items in the requirements. The test cases are self-contained and are run sequentially. A list of test cases can be obtained by using the PrintTestCaseName command line option with the appropriate device specified. Each of these test cases can be run on the command line using the test in standalone mode for further testing or debugging.

The Trim Performance test stores a policy table defining for each type of device what performance tests are to be run and what the appropriate metrics should be. Once the appropriate items in the table are selected, the test will sequentially spawn threads defined in the table for that device. Each thread will execute according to the parameters specified in the table. Once the stop conditions for each of the threads has been satisfied, the threads will stop execution and the results will be parsed to generate the pass/fail logs.

The test generates large performance logs and in order to not affect the performance of the drive being tested, these logs are written to a separate drive. The drive is automatically chosen by the job, but can alternatively be specified on the command line

The test commands are as follows:

**Trim command**

All trim commands should be completed in less than 500 milliseconds.

**IO command (with Trim sending at same time)**

-   All read and write commands complete in less than 500 milliseconds.

-   98.5% of I/O commands complete in less than 100 milliseconds.

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
<td><p>StorageDriveNumber</p></td>
<td><p>The driver number of the SATA SSD in which to run the test.</p>
<p>Example: 2</p></td>
</tr>
<tr class="even">
<td><p>LogDriveLetter</p></td>
<td><p>The drive letter of the disk to store the logs.</p>
<p>Example: E</p></td>
</tr>
<tr class="odd">
<td><p>DeviceType</p></td>
<td><p>The type of device under test.</p>
<p>Default value: StorConsumer</p></td>
</tr>
<tr class="even">
<td><p>Scenario</p></td>
<td><p>The operation for the test.</p>
<p>Default value: Performance</p></td>
</tr>
<tr class="odd">
<td><p>DiskSize</p></td>
<td><p>The part of the disk to run the test on. If this parameter is 0, the test will run on the entire disk size.</p>
<p>Default value: 0</p></td>
</tr>
<tr class="even">
<td><p>Cooldown</p></td>
<td><p>The cool down time in seconds between test cases.</p>
<p>Default value: 2</p></td>
</tr>
</tbody>
</table>

 

### Command syntax

Command option
Description
**TrimPerf.exe /DriveNumber \[StorageDriveNumber\] /LogDriveLetter \[LogDriveLetter\]: /DeviceType StorConsumer /Scenario Performance /DiskSize 0 /Cooldown 2**

Runs the test.

 

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
<td><p>TrimPerf.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\</p></td>
</tr>
<tr class="even">
<td><p>Etwprocessor.dll</p></td>
<td><p><em>&lt;[taefbinroot]&gt;</em>\</p></td>
</tr>
<tr class="odd">
<td><p>Wex.common.dll</p></td>
<td><p><em>&lt;[taefbinroot]&gt;</em>\</p></td>
</tr>
<tr class="even">
<td><p>Wex.communication.dll</p></td>
<td><p><em>&lt;[taefbinroot]&gt;</em>\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Trim%20Performance%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




