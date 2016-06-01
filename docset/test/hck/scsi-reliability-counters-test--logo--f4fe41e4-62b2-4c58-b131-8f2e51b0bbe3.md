---
author: joshbax-msft
title: SCSI Reliability Counters Test (LOGO)
description: SCSI Reliability Counters Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f379b1d1-bef3-4307-a0be-2d136f0d3bb5
---

# SCSI Reliability Counters Test (LOGO)


Storage Spaces has two certification programs: one for drives, and one for enclosures. The reliability counter requirements apply to drives. These reliability counter requirements are a result of OEM feedback that they are necessary to enable troubleshooting issues in the field, and a result of the product team supporting and troubleshooting deployments.

This test checks if drives return reliability data log pages.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.Scsi.ReliabilityCounters.BasicFunction</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
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

If you are testing any drive that requires media or testing in system-mode on a computer that contains drives that require media, you must insert media into the drives. The media that is used must be formatted and contain data that occupies at least 50% of the media's capacity.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

## More information


**Basic reliability counter functionality for that implement SCSI command sets**

All drives must provide valid data for the below log sense page (LOG SENSE 4Dh) parameters, per the SCSI Primary Commands 4 (SPC-4) and SCSI Block Commands 3 (SBC-3) specifications.

-   Start-Stop Cycle Counter (0Eh)

    -   Manufacture Date (0001h)

-   Read Error Counter (03h)

    -   Total (0002h)

    -   Total Errors Corrected (0003h)

    -   Total Uncorrected Errors (0006h)

-   Temperature (0Dh)

    -   Temperature (0000h)

    -   Reference Temperature (0001h)

-   Write Error Counter (02h)

    -   Total (0002h)

    -   Total Errors Corrected (0003h)

    -   Total Uncorrected Errors (0006h)

-   Background Scan (15h)

    -   Background Scan Status (0000h)

Drives that physically move recording media and/or read-write devices, such as hard disk drives, must provide valid data for the below log sense page (LOG SENSE 4Dh) parameters, per the SCSI Primary Commands 4 (SPC-4) specification.

-   Start-Stop Cycle Counter (0Eh)

    -   Specified Cycle Count Over Device Lifetime (0003h)

    -   Accumulated Start-Stop Cycles (0004h)

    -   Specified Load-Unload Count Over Device Lifetime (0005h)

    -   Accumulated Load-Unload Cycles (0006h)

Solid-state drives must provide valid data for the below log sense page (LOG SENSE 4Dh) parameter, per the SCSI Block Commands 3 (SBC-3) specification.

-   Solid State Media (11h)

    -   Percentage Used Endurance Indicator (0001h)

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
<td><p><strong>Scsicompliance.exe</strong></p></td>
<td><p>Runs the tests with the specified options.</p></td>
</tr>
<tr class="even">
<td><p><strong>/device</strong></p></td>
<td><p>Specifies the device to be tested.</p>
<p>Example: \\.\disk0</p></td>
</tr>
<tr class="odd">
<td><p><strong>/scenario</strong></p></td>
<td><p>Specifies the scenario test to be run.</p>
<p>Example ReliabilityCounters</p></td>
</tr>
<tr class="even">
<td><p><strong>/verbosity</strong></p></td>
<td><p>Logging detail. Levels are cumulative. 0 = Assertions and results. 1 = Details. 2 = CDBs , data, and sense info. 3 = Debug and detailed Mode page information. 4 = Memory usage</p></td>
</tr>
<tr class="odd">
<td><p><strong>/operation</strong></p></td>
<td><p>The operation ID.</p>
<p>Example: test</p></td>
</tr>
<tr class="even">
<td><p><strong>/cdb</strong></p></td>
<td><p>The CDB list.</p></td>
</tr>
<tr class="odd">
<td><p><strong>/version</strong></p></td>
<td><p>The version. 1 = SPC-2 and SBC1. 2= SPC3 and SBC2. 3 = SPC-4 and SBC3.</p></td>
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
<td><p>scsicompliance.exe</p></td>
<td><p>&lt;[testbinroot]&gt;\nttest\driverstest\storage\wdk\</p></td>
</tr>
</tbody>
</table>

 

 

 






