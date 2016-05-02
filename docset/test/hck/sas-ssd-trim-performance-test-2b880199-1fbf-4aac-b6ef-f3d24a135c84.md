---
author: joshbax-msft
title: SAS SSD Trim Performance Test
description: SAS SSD Trim Performance Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4b134b0f-2eff-4514-88c7-30eafa8aadde
---

# SAS SSD Trim Performance Test


This test evaluates the performance of the Trim command for Serial Attached SCSI (SAS) Solid State Drive (SSD).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.Sas.ComplyWithIndustrySpec</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
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

The test requires a SAS SSD device connected to a SAS controller. The drive must also satisfies the following requirements:

-   The drive should be a non-boot drive. The test is destructive. It will prepare the disk with correct partition and formatting for the testing.

-   The drive must support Trim command. The IDENTIFY DEVICE data word 169 bit 0 must set to one (see ACS-2 section 7.18.7.71). The test will send down Trim commands using DATA SET MANAGEMENT command.

-   Ensure that there is a separate drive available to be used as a logger drive. The test will automatically pick the logging drive. It is important to minimize the amount of activity occurring on the drive outside of the logo test. Since this is a performance test, outside activity may affect the results.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

If you want to check the WTT trace, do the following:

-   View Child Job Results of Run Trim Performance Test.

-   View Job Logs of Run Trim Performance Test – Library.

-   Open the log file TrimPerf.wtl.

-   Check for messages that may solve the issue.

-   Copy the .wtl log file. This is the WTT trace described in the WTT Trace section.

If no metrics are found, try the following:

-   Enable Storport ETW tracing

-   Ensure that no other Storport ETW traces are currently logging. Only one Storport ETW trace can be active at a time.

If you get the error message “The test drive does not support trim.”, try the following:

-   Ensure that the SAS SSD IDENTIFY DEVICE data word 169 bit 0 is set to one.

-   Try to send a Trim command via DATA SET MANAGEMENT.

-   Run the test again.

If the test failed because the read and write maximum latency exceeded 500 milliseconds, try the following:

-   Check the IO latency without Trim. Try to lower the latency below 500 milliseconds.

-   Check the IO latency with presence of Trim. Try to lower the latency below 500 milliseconds.

If you want to debug the failure by running particular test cases, you may try the following command line options:

-   Display all the test cases with numbers: **TrimPerf.exe /DriveNumber \[StorageDriveNumber\] /LogDriveLetter \[LoggerDriveLetter\]: /DeviceType SasSsd /PrintTestCaseName**

-   Run particular test case by test case number: **TrimPerf.exe /DriveNumber \[StorageDriveNumber\] /LogDriveLetter \[LoggerDriveLetter\]: /DeviceType SasSsd /Precondition F /TestCase \[TestCaseNumber\]**

If you want to debug the failure by running particular pure Trim scenario, you may try the following command line options:

-   The binary has unit test options: **TrimPerf.exe /DriveNumber \[StorageDriveNumber\] /LogDriveLetter \[LoggerDriveLetter\]: /DeviceType SasSsd /Precondition F /UnitTest T /RangeCount \[NumberOfRangesPerTrim\] /SizeCount \[SizeOfEachRange\] /SizeUnit \[Slab | Sector\] /TrimCount \[NumberOfTrims\]**

-   **/RangeCount**: The number of ranges per Trim command

-   **/SizeCount**: The size of each range in **/SizeUnit**

-   **/SizeUnit**: The granularity of **/SizeCount**, it can be either slab (OPTIMAL UNMAP GRANULARITY) or sector

-   **/TrimCount**: The number of Trims sent in the test case.

If you want to debug the failure faster, try disable the preconditioning (fill up the drive to 90% full, takes long time) by adding /Precondition F parameter as follows:

-   **TrimPerf.exe /DriveNumber \[StorageDriveNumber\] /LogDriveLetter \[LoggerDriveLetter\]: /DeviceType SasSsd /Scenario Performance /DiskSize 0 /Cooldown 2 /Precondition F**

## More information


The test commands are as follows:

**Trim command**

-   All trim commands should be completed in less than 500 milliseconds.

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
<td><p>The driver number of the SAS SSD in which to run the test.</p>
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
<p>Default value: SasSsd</p></td>
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
<td><p><strong>TrimPerf.exe /DriveNumber [StorageDriveNumber] /LogDriveLetter [LoggerDriveLetter]: /DeviceType [DeviceType] /Scenario [Scenario] /DiskSize [DiskSize] /Cooldown [Cooldown]</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

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
<td><p>trimperf.exe</p></td>
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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20SAS%20SSD%20Trim%20Performance%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




