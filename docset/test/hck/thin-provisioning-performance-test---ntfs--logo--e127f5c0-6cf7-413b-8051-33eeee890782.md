---
author: joshbax-msft
title: Thin Provisioning Performance Test - NTFS (LOGO)
description: Thin Provisioning Performance Test - NTFS (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b8f72c65-7320-46c9-a900-1d0b0b8ee438
---

# Thin Provisioning Performance Test - NTFS (LOGO)


This automated test evaluates the NTFS performance of the Unmap command for thin provisioning LUNs.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.ThinProvisioning.BasicFunction</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2012 R2</p></td>
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

The test requires a thin provisioned LUN device setup on the client machine. The LUN must satisfy the following requirements:

-   The drive should be a non-boot drive. The test is destructive. It will prepare the disk with correct partition and formatting for the test.

-   The drive must support UNMAP (10) command. The VPD B0h page’s LBPU bit is set to 1. The test will send down Unmap commands by using the DATA SET MANAGEMENT’s Trim command.

-   Make sure that there is a separate drive available to be used as a logger drive. The test will automatically pick the logging drive. It is important to minimize the amount of activity that occurs on the drive (outside of the logo test). Because this is a performance test, outside activity can affect the results.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Error</th>
<th>Description/Workaround</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Test failed and went to check WTT Trace</p></td>
<td><p>How to check log files upon test failure:</p>
<ul>
<li><p>View child job results of Run Trim Performance Test.</p></li>
<li><p>View job logs of Run Trim Performance Test – Library.</p></li>
<li><p>Open the log file <strong>TrimPerf.wtl</strong> and check for messages that might describe/resolve the problem.</p></li>
<li><p>Copy the .wtl log file. This is the WTT trace that is described in the WTT Trace section.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>No metrics found</p></td>
<td><p>The test depends on Storport ETW tracing being enabled to get the command completion metrics.</p>
<p>Make sure that no other Storport ETW traces are currently logging. Only one Storport ETW trace can be active at a time.</p></td>
</tr>
<tr class="odd">
<td><p>Test failed with a “write protected” error</p></td>
<td><ul>
<li><p>Make sure that the thin provisioned LUN is not write-protected.</p></li>
<li><p>Make sure that the thin provisioned LUN is always online while the test is running. “Write protected” usually means the LUN goes offline.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>Test warns: “The test drive does not support trim”.</p></td>
<td><ul>
<li><p>Check the thin provisioned LUN to make sure VPD B0h page’s LBPU bit is set to one (or run [Thin Provisioning SCSI Compliance Test (LOGO)](thin-provisioning-scsi-compliance-test--logo-b6ca1543-aee5-4390-8f16-f3a5dd5d35e7.md) to verify the compliance of the LUN).</p></li>
<li><p>Try to send an Unmap command by using DATA SET MANAGEMENT’s Trim command.</p></li>
<li><p>Run the test again.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>Test warns: “Read/write max latency exceeds logo requirement of 500.0 ms”.</p></td>
<td><p>The test sends IO together with Unmap when it measures the max IO latency. The virtual address of IO and Unmap are not interleaving.</p></td>
</tr>
</tbody>
</table>

 

## More information


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
<td><p>The drive number of the thin provisioned LUN which test is to run on. Example: 2.</p></td>
</tr>
<tr class="even">
<td><p>LogDriveLetter</p></td>
<td><p>The drive letter of the disk on which to keep logs. Example: E<strong>:</strong>.</p></td>
</tr>
<tr class="odd">
<td><p>DeviceType</p></td>
<td><p>The type of the device under test.</p>
<p>Default value: StorEnterprise</p></td>
</tr>
<tr class="even">
<td><p>Scenario</p></td>
<td><p>The scenario of the test (Performance or Compliance).</p>
<p>Default value: Performance</p></td>
</tr>
<tr class="odd">
<td><p>DiskSize</p></td>
<td><p>The part of the disk on which to run the test. If this parameter is 0, then the test will run on the entire disk.</p>
<p>Default value: 0</p></td>
</tr>
<tr class="even">
<td><p>Cooldown</p></td>
<td><p>The cool down time in seconds between test cases</p>
<p>Default value: 2</p></td>
</tr>
</tbody>
</table>

 

### Test metrics

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command</th>
<th>Test metrics</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Unmap command</p></td>
<td><p>All Unmap commands shall be completed in less than 500ms.</p></td>
</tr>
<tr class="even">
<td><p>IO command(with Unmap sending at the same time)</p></td>
<td><ul>
<li><p>All Read/Write commands shall be completed in less than 500ms.</p></li>
<li><p>98.5% of IO commands shall be completed in less than 100ms.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

Currently this test only gives warnings if the thin provisioned LUN under test fails to meet the bar described in the preceding table. The test never fails on this, but you must make sure that the LUN supports UNMAP (10) command, and that the LUN never goes offline when the test is running.

**To manually reproduce the test**

1.  Open the Registry Editor and follow the path: **Computer\\HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\Enum\\SCSI\\Disk&Ven\_***\[name of drive under test\]\\\[device instance path of the thin provisioned LUN\]***\\Device Parameters\\Storport**

2.  Right click **Storport**, click **New**, and click **DWORD (32-bit) Value**.

3.  Name the key **EnableLogoETW**, and set the value to **1**.

4.  Replug the drive under test or reboot the machine to enable the registry key.

5.  Copy **TrimPerf.exe**, **EtwProcessor.dll**, **Wex.Common.dll**, and **Wex.Communication.dll** files to the local drive.

6.  Run the test on a command line (see Command Syntax).

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
<td><p><strong>TrimPerf.exe /DriveNumber [StorageDriveNumber] /LogDriveLetter [LoggerDriveLetter]: /DeviceType [DeviceType] /Scenario [Scenario] /DiskSize [DiskSize] /Cooldown [Cooldown]</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command line help for this test binary, type **/h**.

 

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
<td><p>&lt;[<em>&lt;[testbinroot]&gt;</em>]&gt; <strong>\nttest\driverstest\storage\wdk\</strong></p></td>
</tr>
<tr class="even">
<td><p>EtwProcessor.dll</p></td>
<td><p>&lt;[<strong>WHCK\TAEFBinRoot</strong>]&gt;\</p></td>
</tr>
<tr class="odd">
<td><p>Wex.Common.dll</p></td>
<td><p>&lt;[<strong>WHCK\TAEFBinRoot</strong>]&gt;\</p></td>
</tr>
<tr class="even">
<td><p>Wex.Communication.dll</p></td>
<td><p>&lt;[<strong>WHCK\TAEFBinRoot</strong>]&gt;\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Thin%20Provisioning%20Performance%20Test%20-%20NTFS%20%28LOGO%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




