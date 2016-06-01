---
author: joshbax-msft
title: NVMe Deallocate Test (LOGO)
description: NVMe Deallocate Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b16013d1-4ae2-424c-8f48-c607fb5fd5cf
---

# NVMe Deallocate Test (LOGO)


This test checks the spec compliance of the deallocate command on NVMe controller drives.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.ControllerDrive.NVMe.BasicFunction</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
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

The test requires that an NVMe controller drive is connected. The drive must also satisfy the following requirements:

-   The drive should be a non-boot drive. The test is destructive. It will prepare the disk with correct partition and formatting for the testing.

-   The drive must support Deallocate (Trim/Unmap/Discard) command. The test will send down Deallocate commands using DATA SET MANAGEMENT Trim command.

Ensure that there is a separate drive available to be used as a logger drive. The test will automatically pick the logging drive. It is important to minimize the amount of activity occurring on the drive outside of the logo test. Since this is a performance test, outside activity may affect the results.

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

-   If you get the error message “The test drive does not support trim/unmap/deallocate/discard”, try the following:

    -   Check the NVMe drive to make sure the VPD B2h page’s LBPU bit is set to one.

    -   Try to send a Deallocate command via DATA SET MANAGEMENT’s Trim command.

    -   Run the test again.

-   Test failed with “Mismatch” errors

    The test sends down Deallocate commands and verifies the content in the deallocated region. It checks the following three scenarios. If all of them failed, it reports an error.

    -   Previous data: Deallocate command didn’t do anything on that region.

    -   All 0x00s: Deallocate command wrote all 0x00s to the region.

    -   All 0xFFs: Deallocate command wrote all 0xFFs to the region.

    The test prints the location of one violation. When checking the violation offset, use the offset printed in the log file plus the byte offset of the violation.

    For example, in the log file it prints:

    Checking for previous data: Mismatch at byte X; Expected: 0x3D, Actual: 0xFF

    Trim validation check failed at offset Y, length Z

    Then the violation byte’s offset is X + Y (in bytes).

-   Test failed with “reset event found”

    Deallocate commands shouldn’t cause disk reset event. If such error happens, check the implementation of NVMe deallocate command.

-   If you want to debug the failure by running particular test cases, you may try the following command line options:

    -   Display all the test cases with numbers: **TrimPerf.exe /DriveNumber \[StorageDriveNumber\] /LogDriveLetter \[LoggerDriveLetter\]: /DeviceType NVMe /Scenario Compliance /PrintTestCaseName**

    -   Run particular test case by test case number: **TrimPerf.exe /DriveNumber \[StorageDriveNumber\] /LogDriveLetter \[LoggerDriveLetter\]: /Scenario Compliance /Precondition F /TestCase \[TestCaseNumber\]**

-   If you want to debug the failure faster, try disable the preconditioning (fill up the drive to 90% full, takes long time) by adding /Precondition F parameter as follows:

    -   **TrimPerf.exe /DriveNumber \[StorageDriveNumber\] /LogDriveLetter \[LoggerDriveLetter\]: /DeviceType NVMe /Scenario Complaince /DiskSize 0 /Cooldown 2 /Precondition F**

For more troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

## More information


The test evaluates the following metrics:

**Deallocate command**

-   All Deallocate commands should write all 0x00, or all 0xFF, or previous data on the deallocated regions.

-   Deallocate commands should not raise disk reset events.

**IO commands (with Deallocate sending simultaneously at different regions)**

-   Deallocate commands should not affect the correctness of read/write operations.

**Manual repro steps**

-   Open Registry Editor and navigate to the following path: HKEY\_LOCAL\_MACHINE -&gt; SYSTEM -&gt; CurrentControlSet -&gt; Enum-&gt; SCSI -&gt; Disk&Ven\_\[name of NVMe drive (not controller) under test\] -&gt; \[device instance path\] -&gt; Device Parameters -&gt; Storport

-   Right click **Storport**, click **New**, and then click **DWORD (32-bit) Value**.

-   Name the key as **EnableLogoETW**, and set the value to **1**.

-   Plug the drive under test back into the system or reboot the machine to enable the registry key.

-   Copy the TrimPerf.exe, EtwProcessor.dll, Wex.Common.dll, and Wex.Communication.dll files to the local computer.

-   Run command line.

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
<td><p>The driver number of the NVMe controller drive in which to run the test.</p>
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
<p>Default value: NVMe</p></td>
</tr>
<tr class="even">
<td><p>Scenario</p></td>
<td><p>The scenario for the test.</p>
<p>Default value: Compliance</p></td>
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

Command
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

 

 

 






