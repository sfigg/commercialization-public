---
author: joshbax-msft
title: Enclosure Disk Test (LOGO)
description: Enclosure Disk Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: bebd865b-1273-4e3c-b600-8629f5d381f0
---

# Enclosure Disk Test (LOGO)


This test verifies SCSI device compliance on Windows®.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.PortAssociation.BasicFunction</p>
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


Before you run the test, complete the test setup as described in the prerequisites for the type of storage controller that you are testing: [Hard Disk Drive Testing Prerequisites](hard-disk-drive-testing-prerequisites.md) and [SCSI Enclosure Services (SES) Device Testing Prerequisites](scsi-enclosure-services--ses--device-testing-prerequisites.md).

To run this test you must set the DiskDeviceObjLink parameter. This parameter represents the physical path to the test device. Example: \\\\.\\PhysicalDrive1

## Troubleshooting


If a failure is observed in the Enclosure Disk Test (LOGO), then run scsicompliance.exe /device \\\\.\\&lt;Drive Number&gt; /verbosity 4 /scenario PersistentResrvation /operation test (for example: scsicompliance.exe /device \\\\.\\PhysicalDrive1 /verbosity 4 /scenario PersistentResrvation /operation test).

The most relevant log is scsicompliance.wtl.

For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

Errors from this test occur via issues identified in the log file and in bug checks produced through stressing the driver under test.

## More information


This test measures the SCSI device compliance on Windows. The goal is twofold - to ensure that SCSI devices supported on the Windows OS fully and completely adhere to the SCSI specifications set forth in SPC-4 and SES-3, as well as to allow us and our partners to fully respect and comply with these standards. Maintaining compliance will lead to a stronger and more reliable system overall.

For more information about these specifications, visit the [Technical Committee T10 SCSI Storage Interfaces website](http://go.microsoft.com/fwlink/?LinkId=237712).

The test sends the following commands to the device:

-   Receive Diagnostic Results: 0X0A pages

-   Inquiry: VPD 0x83 Page

### Parameters

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameters</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>DiskDeviceObjLink</p></td>
<td><p>The device object link.</p></td>
</tr>
<tr class="even">
<td><p>LoggingVerbosity</p></td>
<td><p>The detail level of logging. 0 = Assertions and results. 1 = Details (default). 2 = CDBs , data, and sense info. 3 = Debug and detailed Mode page information. 4 = Memory usage</p>
<p>Default value: 1</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Enclosure%20Disk%20Test%20%28LOGO%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




