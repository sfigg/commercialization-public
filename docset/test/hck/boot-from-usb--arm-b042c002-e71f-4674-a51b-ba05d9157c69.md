---
author: joshbax-msft
title: Boot from USB (ARM)
description: Boot from USB (ARM)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5436422f-192a-44cd-8686-aa07d1f1b0bf
---

# Boot from USB (ARM)


This test verifies that a computer can boot Windows from all exposed USB 2.x and 3.x ports. This is used for Windows 8 features such as Recovery and Portable Workspaces.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.USBBoot.BootFromUSB</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows RT 8.1</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~15 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md). In addition, insert a bootable USB storage device, at least 500MB in size or larger. If the test system has PC\\AT firmware, configure it to boot from USB first.

The test will do the following steps:

1.  Provision the USB Drive with Windows PE.

2.  Restart the host operating system and attempt to boot from the USB drive.

3.  Restart the system from the USB drive three times.

4.  Boot back into to host operating system and format the USB drive.

**Note**  
You must insert the USB drive into a 3.0 port if there is one on the machine, otherwise the test will fail. Additionally, you must provide the supplemental content (a Windows PE image capable of booting on the ARM system).

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

This test will always return Pass or Fail. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio. The test will only fail if the system doesn’t support creating firmware boot entries, boot from USB, or if the USB drive is not enumerated during warm reboot.

## Supporting information


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
<td><p><strong>Host /beg</strong></p></td>
<td><p>This command starts the test.</p></td>
</tr>
<tr class="even">
<td><p><strong>Host /end</strong></p></td>
<td><p>This command completes the test.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command line help for this test binary, type /h.

 

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
<td><p><em>Host.exe</em></p></td>
<td><p><em>[OsBinRoot]\pw_system_logo</em></p></td>
</tr>
<tr class="even">
<td><p><em>Ufd.exe</em></p></td>
<td><p><em>[OsBinRoot]\pw_system_logo</em></p></td>
</tr>
<tr class="odd">
<td><p><em>Winpe.wim</em></p></td>
<td><p><em>[OsBinRoot]\media</em></p></td>
</tr>
</tbody>
</table>

 

 

 






