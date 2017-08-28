---
title: NVMe Deallocate Performance Test (LOGO)
Description: NVMe Deallocate Performance Test (LOGO)
ms.assetid: 9fbf580f-4515-46ec-905f-b785d774fd87
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# NVMe Deallocate Performance Test (LOGO)

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/9fbf580f-4515-46ec-905f-b785d774fd87">http://msdn.microsoft.com/en-us/library/windows/hardware/9fbf580f-4515-46ec-905f-b785d774fd87</b>


</conditional_block>

This test evaluates the performance of the Deallocate command for Non-Volatile Memory Express (NVMe) controller drives.

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
<li>Device.Storage.ControllerDrive.NVMe.BasicFunction</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Platforms</b></td>
<td><ul>
<li><tla rid="win_threshold_desktop"></tla> x86</li>
<li><tla rid="win_threshold_desktop"></tla> x64</li>
<li><tla rid="win_threshold_server"></tla> x64</li>
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
<td>2</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Category</b></td>
<td>Benchmark</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Timeout (in minutes)</b></td>
<td>2</td>
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

Before you run the test, complete the test setup as described in the test requirements: <xref rid="p_hlk_test.hard_disk_drive_testing_prerequisites">Hard Disk Drive Testing Prerequisites</b>.

The test requires that an NVMe controller drive is connected. The drive must also satisfy the following requirements:

-   The drive should be a non-boot drive. The test is destructive. It will prepare the disk with correct partition and formatting for the testing.

-   The drive must support Deallocate (Trim/Unmap/Discard) command. The test will send down Deallocate commands using DATA SET MANAGEMENT Trim command.

-   Ensure that there is a separate drive available to be used as a logger drive. The test will automatically pick the logging drive. It is important to minimize the amount of activity occurring on the drive outside of the logo test. Since this is a performance test, outside activity may affect the results.

## Troubleshooting

For generic troubleshooting of HLK test failures, see <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.

For more troubleshooting information, see <xref rid="p_hlk_test.troubleshooting_devicestorage_testing">Troubleshooting Device.Storage Testing</b>.

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

    -   Check the NVMe drive to make sure the VPD B2h page’s LBPU bit is set to one.

    -   Try to send a Deallocate command via DATA SET MANAGEMENT’s Trim command.

    -   Run the test again.

-   If the test failed because the read and write maximum latency exceeded 500 milliseconds, try the following:

    -   Check the IO latency without Deallocate. Try to lower the latency below 500 milliseconds.

    -   Check the IO latency with presence of Deallocate. Try to lower the latency below 500 milliseconds.

-   If you want to debug the failure by running particular test cases, you may try the following command line options:

    -   Display all the test cases with numbers: **TrimPerf.exe /DriveNumber \[StorageDriveNumber\] /LogDriveLetter \[LoggerDriveLetter\]: /DeviceType NVMe /Scenario Performance /PrintTestCaseName**

    -   Run particular test case by test case number: **TrimPerf.exe /DriveNumber \[StorageDriveNumber\] /LogDriveLetter \[LoggerDriveLetter\]: /DeviceType NVMe /Scenario Performance /Precondition F /TestCase \[TestCaseNumber\]**

-   If you want to debug the failure by running particular pure Trim scenario, you may try the following command line options:

    -   The binary has unit test options: **TrimPerf.exe /DriveNumber \[StorageDriveNumber\] /LogDriveLetter \[LoggerDriveLetter\]: /DeviceType NVMe /Scenario Performance /Precondition F /UnitTest T /RangeCount \[NumberOfRangesPerDeallocateCommand\] /SizeCount \[SizeOfEachRange\] /SizeUnit \[Slab | Sector\] /TrimCount \[NumberOfTrims\]**

    -   **/RangeCount**: The number of ranges per deallocate command

    -   **/SizeCount**: The size of each range in /SizeUnit

    -   **/SizeUnit**: The granularity of /SizeCount, options are Slab (optimal unmap granularity) and Sector (LBA).

    -   **/TrimCount**: The number of deallocate commands sent in the test case.

-   If you want to debug the failure faster, try disable the preconditioning (fill up the drive to 90% full, takes long time) by adding /Precondition F parameter as follows:

    -   **TrimPerf.exe /DriveNumber \[StorageDriveNumber\] /LogDriveLetter \[LoggerDriveLetter\]: /DeviceType NVMe /Scenario Performance /DiskSize 0 /Cooldown 2 /Precondition F**

## More information

The test does the following:

<mark type="bullet_intro">Deallocate command</b>

-   All deallocate commands should be completed in less than 500 milliseconds.

<mark type="bullet_intro">IO commands (withy deallocate sending at same time at different regions)</b>

-   All read and write commands complete in less than 500 milliseconds.

-   98.5% of I/O commands complete in less than 100 milliseconds.

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
<td><p><strong>TrimPerf.exe /DriveNumber [StorageDriveNumber] /LogDriveLetter [LogDriveLetter]: /DeviceType [DeviceType] /Scenario [Scenario] /DiskSize [DiskSize] /Cooldown [Cooldown]</strong></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Runs the test.</p></td>
<td></td>
</tr>
</tbody>
</table>

>[!NOTE]
For command-line help for this test binary, type **/h**.


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
<td><p>TrimPerf.exe</p></td>
<td><p><placeholder>&lt;[testbinroot]&gt;</placeholder>\nttest\driverstest\storage\wdk\</p></td>
</tr>
<tr class="even">
<td><p>Etwprocessor.dll</p></td>
<td><p><placeholder>&lt;[taefbinroot]&gt;</placeholder>\</p></td>
</tr>
<tr class="odd">
<td><p>Wex.common.dll</p></td>
<td><p><placeholder>&lt;[taefbinroot]&gt;</placeholder>\</p></td>
</tr>
<tr class="even">
<td><p>Wex.communication.dll</p></td>
<td><p><placeholder>&lt;[taefbinroot]&gt;</placeholder>\</p></td>
</tr>
</tbody>
</table>

## Parameters

| Parameter name                                   | Parameter description                      |
|--------------------------------------------------|--------------------------------------------|
| <mark type="bullet_intro">WDKDeviceID</b>        | Instance path of device to test.           |
| <mark type="bullet_intro">LLU\_NetAccessOnly</b> | User account for accessing test fileshare. |
| <mark type="bullet_intro">LLU\_LclAdminUsr</b>   | User account for running the test.         |
| <mark type="bullet_intro">Destructive</b>        | (0,1) 0=Passive, 1=Destructive             |
| <mark type="bullet_intro">StorageDriveNumber</b> | Storage drive number                       |





