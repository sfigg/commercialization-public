---
author: joshbax-msft
title: NVMe SCSI Compliance Test (LOGO)
description: NVMe SCSI Compliance Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2ddebb95-afb8-4d69-b713-5a7b8f524cd4
---

# NVMe SCSI Compliance Test (LOGO)


This test verifies the device and driver capabilities of SCSI-NVMe translation.

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

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

If the test fails to find the drive letter of the device, try to restart the machine with device attached, format and mount NTFS volume and assign drive letter, reboot machine to confirm drive letter and drive number of device are recognizable in diskmgmt.msc and then schedule the test.

## More information


Here’s a list of SCSI commands:

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>SCSI command</th>
<th>NVMe command translation</th>
<th>HCK policy</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>SCSIOP_REPORT_LUNS</p></td>
<td><p>Identify</p></td>
<td><p>M</p></td>
</tr>
<tr class="even">
<td><p>SCSIOP_INQUIRY</p></td>
<td><p>Identify</p></td>
<td><p>M</p></td>
</tr>
<tr class="odd">
<td><p>SCSIOP_MODE_SENSE</p></td>
<td><p>Identify, get features</p></td>
<td><p>M</p></td>
</tr>
<tr class="even">
<td><p>SCSIOP_MODE_SENSE10</p></td>
<td><p>Identify, get features</p></td>
<td><p>M</p></td>
</tr>
<tr class="odd">
<td><p>SCSIOP_MODE_SELECT</p></td>
<td><p>No translation recommended</p></td>
<td><p>M</p></td>
</tr>
<tr class="even">
<td><p>SCSIOP_MODE_SELECT10</p></td>
<td><p>No translation recommended</p></td>
<td><p>M</p></td>
</tr>
<tr class="odd">
<td><p>SCSIOP_READ_CAPACITY</p></td>
<td><p>Identify</p></td>
<td><p>M</p></td>
</tr>
<tr class="even">
<td><p>SCSIOP_READ_CAPACITY16</p></td>
<td><p>Identify</p></td>
<td><p>M</p></td>
</tr>
<tr class="odd">
<td><p>SCSIOP_READ6</p></td>
<td><p>Read</p></td>
<td><p>If-implemented</p></td>
</tr>
<tr class="even">
<td><p>SCSIOP_READ</p></td>
<td><p>Read</p></td>
<td><p>M</p></td>
</tr>
<tr class="odd">
<td><p>SCSIOP_READ12</p></td>
<td><p>Read</p></td>
<td><p>Not tested</p></td>
</tr>
<tr class="even">
<td><p>SCSIOP_READ16</p></td>
<td><p>Read</p></td>
<td><p>M</p></td>
</tr>
<tr class="odd">
<td><p>SCSIOP_WRITE6</p></td>
<td><p>Write</p></td>
<td><p>If-implemented</p></td>
</tr>
<tr class="even">
<td><p>SCSIOP_WRITE</p></td>
<td><p>Write</p></td>
<td><p>M</p></td>
</tr>
<tr class="odd">
<td><p>SCSIOP_WRITE12</p></td>
<td><p>Write</p></td>
<td><p>Not tested</p></td>
</tr>
<tr class="even">
<td><p>SCSIOP_WRITE16</p></td>
<td><p>Write</p></td>
<td><p>M</p></td>
</tr>
<tr class="odd">
<td><p>SCSIOP_SYNCHRONIZE_CACHE</p></td>
<td><p>Flush</p></td>
<td><p>M</p></td>
</tr>
<tr class="even">
<td><p>SCSIOP_SYNCHRONIZE_CACHE16</p></td>
<td><p>Flush</p></td>
<td><p>Not tested</p></td>
</tr>
<tr class="odd">
<td><p>SCSIOP_WRITE_LONG</p></td>
<td><p>Write uncorrectable</p></td>
<td><p>Not tested</p></td>
</tr>
<tr class="even">
<td><p>SCSIOP_WRITE_LONG16</p></td>
<td><p>Write uncorrectable</p></td>
<td><p>Not tested</p></td>
</tr>
<tr class="odd">
<td><p>SCSIOP_UNMAP</p></td>
<td><p>Dataset management</p></td>
<td><p>M</p></td>
</tr>
<tr class="even">
<td><p>SCSIOP_START_STOP_UNIT</p></td>
<td><p>Set features, get features</p></td>
<td><p>M</p></td>
</tr>
<tr class="odd">
<td><p>SCSIOP_SECURITY_PROTOCOL_IN</p></td>
<td><p>Security receive</p></td>
<td><p>If-implemented</p></td>
</tr>
<tr class="even">
<td><p>SCSIOP_SECURITY_PROTOCOL_OUT</p></td>
<td><p>Security send</p></td>
<td><p>If-implemented</p></td>
</tr>
<tr class="odd">
<td><p>SCSIOP_COMPARE</p></td>
<td><p>Compare and write</p></td>
<td><p>Not tested</p></td>
</tr>
<tr class="even">
<td><p>SCSIOP_FORMAT</p></td>
<td><p>Format NVM</p></td>
<td><p>Not tested</p></td>
</tr>
<tr class="odd">
<td><p>SCSIOP_LOG_SENSE</p></td>
<td><p>Get features, get log page</p></td>
<td><p>M</p></td>
</tr>
<tr class="even">
<td><p>SCSIOP_REQUEST_SENSE</p></td>
<td><p>No translation recommended</p></td>
<td><p>If-implemented</p></td>
</tr>
<tr class="odd">
<td><p>SCSIOP_TEST_UNIT_READY</p></td>
<td><p>No translation recommended</p></td>
<td><p>M</p></td>
</tr>
<tr class="even">
<td><p>SCSIOP_WRITE_DATA_BUFF</p></td>
<td><p>Firmware image download, firmware image activate</p></td>
<td><p>Not tested</p></td>
</tr>
</tbody>
</table>

 

The following shows a list of VPDs:

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>VPD</th>
<th>Page code</th>
<th>NVMe guidelines</th>
<th>HCK policy</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Supported VPD pages</p></td>
<td><p>0x0</p></td>
<td><p>M</p></td>
<td><p>M</p></td>
</tr>
<tr class="even">
<td><p>Serial number</p></td>
<td><p>0x80</p></td>
<td><p>M</p></td>
<td><p>M</p></td>
</tr>
<tr class="odd">
<td><p>Device identification</p></td>
<td><p>0x83</p></td>
<td><p>M</p></td>
<td><p>M</p></td>
</tr>
<tr class="even">
<td><p>Extended inquiry</p></td>
<td><p>0x86</p></td>
<td><p>O</p></td>
<td><p>Not tested</p></td>
</tr>
<tr class="odd">
<td><p>Block device characteristics</p></td>
<td><p>0x81</p></td>
<td><p>M</p></td>
<td><p>M</p></td>
</tr>
<tr class="even">
<td><p>Block limits</p></td>
<td><p>0xB0</p></td>
<td><p>Not recommended</p></td>
<td><p>M</p></td>
</tr>
</tbody>
</table>

 

The following shows a list of mode pages:

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Mode page</th>
<th>Page code</th>
<th>NVMe guidelines</th>
<th>HCK policy</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Supported mode pages</p></td>
<td><p>0x3F</p></td>
<td><p>M</p></td>
<td><p>M</p></td>
</tr>
<tr class="even">
<td><p>Caching</p></td>
<td><p>0x8</p></td>
<td><p>M</p></td>
<td><p>M</p></td>
</tr>
<tr class="odd">
<td><p>Control</p></td>
<td><p>0xA</p></td>
<td><p>M</p></td>
<td><p>Not tested</p></td>
</tr>
<tr class="even">
<td><p>Power condition</p></td>
<td><p>0x1A</p></td>
<td><p>M</p></td>
<td><p>Not tested</p></td>
</tr>
<tr class="odd">
<td><p>Informational exceptions control</p></td>
<td><p>0x1C</p></td>
<td><p>M</p></td>
<td><p>Not tested</p></td>
</tr>
</tbody>
</table>

 

The following shows a list of log pages:

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Log page</th>
<th>Page code</th>
<th>NVMe guidelines</th>
<th>HCK policy</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Supported log pages</p></td>
<td><p>0x0</p></td>
<td><p>M</p></td>
<td><p>M</p></td>
</tr>
<tr class="even">
<td><p>Temperature</p></td>
<td><p>0x0D</p></td>
<td><p>M</p></td>
<td><p>M</p></td>
</tr>
<tr class="odd">
<td><p>Information exceptions</p></td>
<td><p>0x2F</p></td>
<td><p>M</p></td>
<td><p>M</p></td>
</tr>
</tbody>
</table>

 

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
<td><p>Verbosity</p></td>
<td><p>The level of logging verbosity. Larger values cause more verbose output.</p>
<p>Default value: 4</p></td>
</tr>
</tbody>
</table>

 

## Command syntax


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
<td><p><strong>/Device</strong></p></td>
<td><p>Device under test to be used. You can get help by running <strong>scsicompliance.exe /Device /?</strong></p>
<p>Example: \\.\physicaldrive1</p></td>
</tr>
<tr class="even">
<td><p><strong>/Operation</strong></p></td>
<td><p>The operation for the test. You can get help by running <strong>scsicompliance.exe /Operation /?</strong></p>
<p>Example: test</p></td>
</tr>
<tr class="odd">
<td><p><strong>/Scenario</strong></p></td>
<td><p>The scenario for the test. Use NVMe. You can get help by running <strong>scsicompliance.exe /Scenario /?</strong></p>
<p>Example: NVMe</p></td>
</tr>
<tr class="even">
<td><p><strong>/Verbosity</strong></p></td>
<td><p>The level of logging verbosity. Larger values cause more verbose output. (0 - 4) You can get help by running <strong>scsicompliance.exe /Verbosity /?</strong></p>
<p>Example: 4</p></td>
</tr>
</tbody>
</table>

 

## File list


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
<td><p><em>&lt;testbinroot&gt;</em>\NTTEST\driverstest\storage\wdk\</p></td>
</tr>
</tbody>
</table>

 

 

 






