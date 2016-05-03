---
author: joshbax-msft
title: Disk Stress (SYSTEM)
description: Disk Stress (SYSTEM)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c474bb5b-5fbb-4f00-acae-010bd1cbe3eb
---

# Disk Stress (SYSTEM)


This test stresses the disks on a computer by sending as much asynchronous I/O as the device can handle. The test should reach the bandwidth limit of the test device for the given test system configuration.

**Note**  
This is a server-specific version of an existing test. For more information, please see [Disk Stress (LOGO)](disk-stress--logo-738735f7-245a-4b39-9d81-20339ce31fd4.md).

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.StorageAndBoot.BootPerformance System.Server.SystemStress.ServerStress</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~90 minutes</p></td>
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


Before you run the test, complete the test setup as described in the following test requirements:

-   [System Server Testing Prerequisites](system-server-testing-prerequisites.md)

-   [Test Server Configuration](test-server-configuration.md)

-   [Hard Disk Drive Testing Prerequisites](hard-disk-drive-testing-prerequisites.md)

-   [Optical Disk Drive Testing Prerequisites](optical-disk-drive-testing-prerequisites.md)

If you are testing any drive that requires media or testing in system-mode on a computer, you must insert media into the drives. The media that is used must be formatted and contain data that occupies at least 50% of the media's capacity.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md) and [Troubleshooting System Server Testing](troubleshooting-system-server-testing.md).

## <a href="" id="bkmk-moreinfo"></a>More information


The test is passed the instance path of the target test device. It finds all hard disks and optical drives that are equal to or connected to the test device. The test will then go through the following scenarios on all of the found devices:

-   Sequential read

-   Sequential write

-   Sequential verify (write followed by read and comparison)

-   Random read

-   Random write

-   Random verify

The test is given a fixed run time and runs each scenario for a fraction of that time. In the case of six scenarios and a run time of 90 minutes, each scenario is run for 15 minutes. The test displays dialog boxes with the progress of the current scenario. Any write scenarios (including verify) are skipped for optical devices. The size of the individual data transfers is determined by a command-line parameter; the default size for the logo test is 32 KB.

The test tries to do raw writes, bypassing any file system that is mounted on the hard disk if it can. The test attempts raw writes if one of the following occurs:

-   The test can find a raw, unpartitioned disk.

-   The test can find a raw, unformatted volume.

-   The test can find a volume that it can dismount.

If none of the preceding situations are available, the test performs I/O through the file system. This action is more CPU intensive and might not give accurate bandwidth and latency measurements for the device. In the third situation (the test finds a volume that it can dismount), which is the most common mode that the test is run in, the test allocates a test file to use and writes only to the extents of that file. This situation ensures that the test never corrupts the file system of the device that it is testing.

The amount of space that the test uses is determined by the free space that is available on the test device. To ensure best device performance, you should delete any unnecessary files from the test device and should cleanly format or defragment the device before running the test. The test warns you if the target's fragmentation might influence the test results.

Even though this test does measure device performance, there is currently no test case in the Logo version of this test that passes or fails based on these measurements.

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
<td><p><strong>DiskIo</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

**Warning**  
For command line help for this test binary, type `/h`.

 

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
<td><p>DiskIo.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk</p></td>
</tr>
<tr class="even">
<td><p>StorageDevices.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Disk%20Stress%20%28SYSTEM%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




