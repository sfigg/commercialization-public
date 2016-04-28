---
author: joshbax-msft
title: SAS SSD SCSI Compliance Test (LOGO)
description: SAS SSD SCSI Compliance Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 783135ca-81be-4bb9-878c-8991612a2dfc
---

# SAS SSD SCSI Compliance Test (LOGO)


This test verifies INQUIRY, READ CAPACITY (16), and UNMAP (10) Small Computer System Interface (SCSI) commands sent to a Serial Attached SCSI (SAS) Solid State Drive (SSD). For more information, see the [SCSI Compliance Test (LOGO)](scsi-compliance-test--logo-8193d65b-1e18-43d8-9fe7-fca3fb178f67.md).

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
<td><p>~1 minutes</p></td>
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

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

The test writes the results to the log files Scsicompliance.wtl and Scsicompliance.wtl.txt. You can use the results to determine:

-   If a device is compliant with the SCSI specification

-   The optional SCSI commands that are supported by a device

To pass, the SCSI device must support every mandatory command and must be fully compliant with those commands. Each command has a different threshold for pass or fail, and the expectations are specified explicitly in the test and in the log file.

Optional commands are also tested. If a device supports the optional commands and the commands are found to be non-compliant, the test fails. If the device does not support optional commands, the test passes.

## More information


The test SCSI commands are as follows:

**INQUIRY**

For page code B0h:

-   Support INQUIRY B0h VPD page

-   PAGE LENGTH = 0x3C

-   MAXIMUM UNMAP LBA COUNT &gt; 0

-   MAXIMUM UNMAP BLOCK DESCRIPTOR

-   COUNT &gt; 0

For page code B1h:

-   Support INQUIRY B1h VPD page

-   PAGE LENGTH = 0x3C

-   MEDIUM ROTATION RATE = 1

For page code B2h:

-   Support INQUIRY B2h VPD page

-   If DP = 1, then PAGE LENGTH = 0x4

-   LBPU = 1

-   PROVISIONING TYPE = 0 or 1

**READ CAPACITY (16)**

-   Support READ CAPACITY (16)

-   LBPME = LBPME (VPD B2h page)

-   LBPRZ = LBPRZ (VPD B2h page)

**UNMAP (10)**

-   Support UNMAP (10)

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
<td><p>ScsiComplianceDevice</p></td>
<td><p>The device in which to run the test.</p>
<p>Example: \\.\PhysicalDrive2</p></td>
</tr>
<tr class="even">
<td><p>LoggingVerbosity</p></td>
<td><p>Detail of logging. Levels are cumulative. 0 = Assertions and results. 1 = Details. 2 = CDBs, data, and sense info. 3 = Debug and detailed Mode page information. 4 = Memory usage.</p>
<p>Default value: 4</p></td>
</tr>
<tr class="odd">
<td><p>SasSsd</p></td>
<td><p>The scenario for the SAS SSD.</p>
<p>Default value: SasSsd</p></td>
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
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Scsicompliance.exe /device [ScsiComplianceDevice] /verbosity [LoggingVerbosity] /scenario SasSsd /operation test</strong></p></td>
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
<td><p>Scsicompliance.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20SAS%20SSD%20SCSI%20Compliance%20Test%20%28LOGO%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




