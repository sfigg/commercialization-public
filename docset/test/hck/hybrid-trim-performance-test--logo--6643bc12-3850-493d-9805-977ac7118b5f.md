---
author: joshbax-msft
title: Hybrid Trim Performance Test (LOGO)
description: Hybrid Trim Performance Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 85d1953c-334d-4b07-af82-b83574202567
---

# Hybrid Trim Performance Test (LOGO)


This test evaluates the performance of the Trim command for SATA drives that supports the Hybrid Information feature set.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.Sata.HybridInformation.BasicFunction</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~180 minutes</p></td>
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

The drive must support the Trim command. The IDENTIFY DEVICE data word 169 bit 0 must set to one (see ACS-2 section 7.18.7.71). The test will send down Trim commands using DATA SET MANAGEMENT command.

Ensure that there is a separate drive available to be used as a logger drive. The test will automatically pick the logging drive. It is important to minimize the amount of activity occurring on the drive outside of the logo test. Since this is a performance test, outside activity may affect the results.

## Troubleshooting


-   Check WTT Trace

    -   View **Task Log** of **Run Trim Performance Test**.

    -   Open the log file **TrimPerf.wtl**.

    -   Check for messages that may solve the issue.

    -   Copy the .wtl log file. This is the WTT trace described in the WTT Trace section.

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

For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

## More information


This is simply a wrapper around the normal [Trim Performance Test](trim-performance-test-1492035a-c515-472e-8cd1-2878d4fec369.md). The only difference is that every I/O the test sends down is with a priority. In addition, the test will only operate on the first couple of GB equal to the cache size of the device.

Test metrics

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command</th>
<th>Metric</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Trim</p></td>
<td><p>All TRIM commands must be completed in less than 500 milliseconds.</p></td>
</tr>
<tr class="even">
<td><p>IO (with Trim sending at same time)</p></td>
<td><ul>
<li><p>All read and write commands must be completed in less than 500 milliseconds.</p></li>
<li><p>98.5% of the I/O commands must be completed in less than 100 milliseconds.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

Use the following steps to manually reproduce this test:

-   Navigate to the following registry entry: **HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\Enum\\SCSI\\Disk&Ven\_\[name of drive under test\]\\\[device instance path\]\\Device Parameters**

-   Right-click **Storport**, point to **New**, and then click **DWORD (32-bit) Value**.

-   Name the key **EnableLogoETW** and set the value to **1**.

-   Unplug and then plug the drive under test into the system or reboot the system to enable the registry setting.

-   Copy the TrimPerf.exe, EtwProcessor.dll, Wex.Common.dll, and Wex.Communication.dll files locally.

-   Run the command.

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
<td><p>The drive number of the hybrid drive which test is to run on.</p>
<p>Example: 2</p></td>
</tr>
<tr class="even">
<td><p>LogDriveLetter</p></td>
<td><p>The drive letter of the disk to keep logs.</p>
<p>Example: E:</p></td>
</tr>
<tr class="odd">
<td><p>DeviceType</p></td>
<td><p>The type of the device under test.</p>
<p>Default value: StorConsumer</p></td>
</tr>
<tr class="even">
<td><p>Scenario</p></td>
<td><p>The scenario of the test (Performance or Compliance).</p>
<p>Default value: Performance</p></td>
</tr>
<tr class="odd">
<td><p>DiskSize</p></td>
<td><p>The part of the disk to run the test on. If this parameter is 0, then the test will run on entire disk size.</p></td>
</tr>
<tr class="even">
<td><p>Cooldown</p></td>
<td><p>The cool down time in seconds between test cases.</p>
<p>Defaut value: 2</p></td>
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

 

 

 






