---
author: joshbax-msft
title: Multiport Disk Performance Test (LOGO)
description: Multiport Disk Performance Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 56345e6e-924f-4afe-90db-926975f140df
---

# Multiport Disk Performance Test (LOGO)


This test verifies that drives must not provide different behavior or degraded performance for commands based on which port is used for command delivery.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.MultipleAccess.MultiplePorts</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
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


Before you run the test, complete the test setup for the type of Raid Storage array that you are testing. For more information see, [Hard Disk Drive Testing Prerequisites](hard-disk-drive-testing-prerequisites.md) and [SCSI Enclosure Services (SES) Device Testing Prerequisites](scsi-enclosure-services--ses--device-testing-prerequisites.md).

## Troubleshooting


The most relevant logs for trouble shooting are **diskIO.wtl** and **multiportperf.log.wtl**.

Make sure that:

-   Your test environment is set up so that two HBA ports are connected from the Test Computer to the Storage Target (Enclosure Device).

-   You have selected the MPIO Pseudo-LUN in the Selection tab of HCK Studio.

-   The disk that you have selected in the **Selection** tab of the HCK Studio is online.

For general storage troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

## More information


This test checks that the performance of enclosure disks is not degraded through different ports. To do that, we assume on the enclosure device side that the LUNs have the same configuration, and each port from the storage array has the same connections with HBA ports on server. The test finds different disk instances for the same disk connected by different HBA ports. Then it collects read/write/verify sequential and random throughput performance data, and compares them among different disk instances. The test fails if there is 10% performance degradation.

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
<td><p>The disk number.</p>
<p>Example: 1</p></td>
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
<th>Command option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>multiportperf.exe -lun [StorageDriveNumber]</strong></p></td>
<td><p>Runs the test</p></td>
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
<td><p>multiportperf.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\DRIVERSTEST\storage\wdk\</p></td>
</tr>
<tr class="even">
<td><p>diskio.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\DRIVERSTEST\storage\wdk\</p></td>
</tr>
<tr class="odd">
<td><p>storagedevices.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\DRIVERSTEST\storage\wdk\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Multiport%20Disk%20Performance%20Test%20%28LOGO%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




