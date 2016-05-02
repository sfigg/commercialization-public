---
author: joshbax-msft
title: Thin Provisioning SCSI Compliance Test (LOGO)
description: Thin Provisioning SCSI Compliance Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 758667d2-1cad-49fe-a477-3a0c4fd4b373
---

# Thin Provisioning SCSI Compliance Test (LOGO)


This test verifies that a storage array can properly support the thin provisioning feature.

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
<td><p>~10 minutes</p></td>
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

Before you run the test, make sure that the thin provisioned LUN is online initialized raw dis. Set the threshold for thin provisioned LUN to be 70 percent.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

## More information


This test ocuses on measuring the SCSI device compliance in Windows. The goal is twofold - to ensure that SCSI devices supported on Windows fully and completely adhere to the SCSI specifications set forth in SPC-4 and SBC-3, and to allow Microsoft and Microsoft partners to fully respect and comply with these standards. Maintaining compliance leads to a stronger and more reliable overall system.

**Note**  
For more information about these specifications, visit the [Technical Committee T10 SCSI Storage Interfaces](http://go.microsoft.com/fwlink/?LinkId=237712) website.

 

The test sends the following commands to the device:

1.  Inquiry VPD 0xB0, 0xB2 pages

2.  Log Sense

3.  Get LBA Status

4.  Unmap

5.  Read Capacity 16 (not required)

### SCSI commands

-   INQUIRY (see SPC-4 Section 6.6)

-   For page code B0h:

    -   Support INQUIRY B0h VPD page command (status is GOOD)

    -   PAGE LENGTH = 0x3C

    -   MAXIMUM UNMAP LBA COUNT &gt; 0

    -   MAXIMUM UNMAP BLOCK DESCRIPTOR COUNT &gt; 0

-   For page code B2h:

    -   Support INQUIRY B2h VPD page command (status is GOOD)

    -   If DP = 1, then PAGE LENGTH = 0x4

-   LOG SENSE (see SPC-4 Section 6.8)

    -   Support LOG SENSE command (status is GOOD)

    -   The log page’s DS (Disable Save) bit is 1

    -   The log page’s SPF (Subpage Format) bit is 0

    -   The log page’s SUBPAGE CODE (byte 2) is 0

    -   The log page’s PAGE LENGTH is divisible by 12

    -   Log parameter’s FORMAT AND LINKING is 0x3

    -   Log parameter’s PARAMETER LENGTH = 0x8

    -   Log parameter’s PARAMETER CODE is between 0x1 and 0xFF

-   GET LBA STATUS (see SBC-3 Section 5.4)

    -   Support GET LBA STATUS command (status is GOOD)

    -   LBA status descriptor page length &gt; 20

    -   STARTING LOGICAL BLOCK ADDRESS + NUMBER OF LOGICAL BLOCKS &lt; total number of LBAs

-   UNMAP (see SBC-3 Section 5.27)

    -   Support UNMAP (10) command (status is GOOD)

    -   After random WRITE (10) commands, sending down UNMAP, GET LBA STATUS should return some deallocated LBAs

    -   Mapped resource should be reduced after sending down UNMAP command

-   READ CAPACITY (16) (see SBC-3 Section 5.16)

    This command is not required. Test gives warning only.

    -   LBPME bit matches between READ CAPCITY (16) and INQUIRY B2h VPD page

    -   LBPRZ bit matches between READ CAPCITY (16) and INQUIRY B2H VPD page

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
<td><p>DeviceID</p></td>
<td><p>The device in which to run the test (that is. the thin provision drive).</p></td>
</tr>
<tr class="even">
<td><p>LoggingVerbosity</p></td>
<td><p>Detail of logging. Levels are cumulative. 0 = Assertions and results. 1 = Details. 2 = CDBs, data, and sense info. 3 = Debug and detailed Mode page information. 4 = Memory usage.</p></td>
</tr>
<tr class="odd">
<td><p>ThinProvision</p></td>
<td><p>The scenario for the Thin Provision.</p>
<p>Default value: ThinProvision</p></td>
</tr>
<tr class="even">
<td><p>OperationId</p></td>
<td><p>The operation for the test.</p>
<p>Default value: test</p></td>
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
<td><p><strong>Scsicompliance.exe /device [DeviceID] /verbosity [LoggingVerbosity e.g. 4] /scenario ThinProvision /operation [OperationId]</strong></p></td>
<td><p>Runs the test.</p></td>
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
<td><p>Scsicompliance.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Thin%20Provisioning%20SCSI%20Compliance%20Test%20%28LOGO%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




