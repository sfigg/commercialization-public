---
author: joshbax-msft
title: Media Lock Test (LOGO)
description: Media Lock Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a498a667-0bb2-4185-ae7a-147ae5209d28
---

# Media Lock Test (LOGO)


This test is a user-mode application that tests the functionality of locking mechanisms on SCSI-removable devices of type CD-ROM and direct access (formerly Jaz or Zip drives). This test issues SCSI passthrough Prevent/Allow medium removal commands to test the locking capabilities of such devices.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Optical.Features</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2008 x64 Windows Server 2008 x86Windows 8.1 x64Windows 8.1 x86Windows Server 2012 R2</p></td>
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
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Optical Disk Drive Testing Prerequisites](optical-disk-drive-testing-prerequisites.md).

In addition, this test requires a piece of media to insert into the device. For optical devices, a CD-ROM disc usually works well.

The test prompts you to perform some actions such as inserting media, pressing the eject button on the device, and responding to prompts about if the device dismounted. The test tells you exactly what needs to be done to pass the test. Pay careful attention to the test prompts and follow the instructions carefully.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

If the test fails with blank optical media, please try to use a CD-ROM disc.

If other failures occur, ensure that the manual steps requested by the test were performed exactly as the test specifies.

## More information


This test verifies that the device supports the media lock command properly. The test requests a piece of media to place into the device. It then locks the media by using the Prevent/Allow medium removal command and then verifies if the media is locked such that it cannot be ejected using the external buttons. The same command is used to release the tray allowing the eject button to physically eject the media. This is verified with the user. This test is a manual test and needs manual intervention to successfully complete the testing.

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
<td><p><strong>Mlocktst.exe &lt;StorageDriveLetter&gt;</strong></p></td>
<td><p>Runs the test.</p>
<p>StorageDriveLetter example: E:</p></td>
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
<td><p>Mlocktst.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\\driverstest\storage\wdk\</p></td>
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
<td><p>logtest.vbs</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\\driverstest\storage\wdk\</p></td>
</tr>
</tbody>
</table>

 

 

 






