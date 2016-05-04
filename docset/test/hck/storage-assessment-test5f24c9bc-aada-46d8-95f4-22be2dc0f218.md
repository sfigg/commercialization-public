---
author: joshbax-msft
title: Storage Assessment Test
description: Storage Assessment Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9c3a816d-34bc-4b30-bb19-6a34119c9f75
---

# Storage Assessment Test


This test measures the performance of the disk under test by using Windows System Assessment Tool (WinSAT) to check that the I/O performance data meets the required metrics.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.AtaProtocol.Performance Device.Storage.Hd.Sata.BasicFunction</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~120 minutes</p></td>
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

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

## More information


The test runs against the disk that is under test by determining and using the physical drive number to perform the workload. The WinSAT workload is used to assess the disk by using the “disk” test for the block storage device built into the tool. It measures the following performance requirements for any visible storage space utilization up to 95%:

-   Disk Sequential 64K Byte Read

-   Disk Random 16K Byte Read

-   Disk Sequential 64K Byte Write

-   Average Read Time with Sequential Writes

-   Latency: 95th Percentile

-   Latency: Maximum

-   Average Read Time with Random Writes

At each of the steps: 0%, 30%, 60%, 90%, and 95%, the metrics above are tested to ensure that the disk meets the performance metrics specified.

**Note**  
The % of utilization value is % of "used space" seen through the Windows file system.

 

If you are testing any drive that requires media, or testing in system-mode on a computer that contains drives that require media, you must insert media into the drives. The media that is used must be formatted.

### Command usage

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
<td><p><strong>StorAT.exe /diskid “[StorageDriveNumber]”</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type **/h**.

 

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
<td><p>/diskid</p></td>
<td><p>The disk ID.</p>
<p>Example: /diskid 0</p></td>
</tr>
<tr class="even">
<td><p>/loop</p></td>
<td><p>The times to run WinSAT in testing.</p>
<p>Example: /loop 1</p></td>
</tr>
<tr class="odd">
<td><p>/log</p></td>
<td><p>Log file name</p>
<p>Default value: StorATTest.wtl</p>
<p>Example: /log mytestlog</p></td>
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
<td><p>StorAT.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\storat\</p></td>
</tr>
</tbody>
</table>

 

 

 






