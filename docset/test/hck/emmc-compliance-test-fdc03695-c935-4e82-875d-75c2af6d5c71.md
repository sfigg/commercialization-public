---
author: joshbax-msft
title: eMMC Compliance Test
description: eMMC Compliance Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1fe68bc9-642c-47bb-91d7-eef023bcf3f4
---

# eMMC Compliance Test


This test verifies the correct operation of a SD host controller by ensuring that the features described in the requirements are implemented by the host controller.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.EMMC.BasicFunction</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
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

The test checks the current configuration of the eMMC disk and how it is attached to the system. It validates that the items described in the requirements are indeed implemented.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

The logs are descriptive in what is being tested and where any failures occur. The first step in triaging failures should be to check the log file and determine which one of the requirement lines failed. The failure may also have more information about the root cause.

## More information


The test will first do discovery on the SD host controllers and SD devices attached to the system to determine their capabilities. It will then specifically check the disk for the device specified to ensure that it conforms to the logo requirements. For each requirement item the device will be checked to see if it claims to support the features or modes required. Then if applicable, the device will be checked to ensure the operation of that feature is adequate. Failures will be logged for any error found.

### Command usage

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
<td><p><strong>SoCBootTest.exe eMMCComplianceTest Device [StorageDriveLetter]</strong></p></td>
<td><p>Run the eMMCComplianceTest scenario on the specified device.</p></td>
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
<td><p>SoCBootTest</p></td>
<td><p>The binary that runs the test.</p></td>
</tr>
<tr class="even">
<td><p>eMMCComplianceTest</p></td>
<td><p>Runs the eMMC Compliance test.</p></td>
</tr>
<tr class="odd">
<td><p>Device</p></td>
<td><p>Specifies the device to run the test against.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command line help for this test binary, type **/?**.

 

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
<td><p>autocom.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\</p></td>
</tr>
<tr class="even">
<td><p>autocomManaged.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\managed\</p></td>
</tr>
<tr class="odd">
<td><p>bigfile.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\disk\</p></td>
</tr>
<tr class="even">
<td><p>DiskStress.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\sd\SDBoot\</p></td>
</tr>
<tr class="odd">
<td><p>MemoryChoke.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\sd\SDBoot\</p></td>
</tr>
<tr class="even">
<td><p>MemoryStress.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\sd\SDBoot\</p></td>
</tr>
<tr class="odd">
<td><p>SoCBootTest.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\sd\SDBoot\SocBootTest\</p></td>
</tr>
<tr class="even">
<td><p>SDHelper.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\sd\Tools\SDHelper\</p></td>
</tr>
<tr class="odd">
<td><p>EtwProcessor.dll</p></td>
<td><p><em>&lt;[taefbinroot]&gt;</em>\</p></td>
</tr>
<tr class="even">
<td><p>Wex.Common.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\wextest\cue\testexecution\wlk\</p></td>
</tr>
<tr class="odd">
<td><p>Wex.Communication.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\wextest\cue\testexecution\</p></td>
</tr>
<tr class="even">
<td><p>ntlog.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\commontest\ntlog\</p></td>
</tr>
<tr class="odd">
<td><p>ntlogger.ini</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\commontest\ntlog\</p></td>
</tr>
<tr class="even">
<td><p>stresslog.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\basetest\core_file_services\shared_libs\</p></td>
</tr>
<tr class="odd">
<td><p>fbslog.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\basetest\core_file_services\shared_libs\fbslog\</p></td>
</tr>
<tr class="even">
<td><p>rapidfile.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\basetest\core_file_services\shared_tests\Wdk\</p></td>
</tr>
</tbody>
</table>

 

 

 






