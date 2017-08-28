---
title: Troubleshooting Device.Storage Testing
Description: Troubleshooting Device.Storage Testing
ms.assetid: 7b46b9ac-9da2-4422-87c6-98b7d04c1226
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Troubleshooting Device.Storage Testing

To troubleshoot issues that occur with Device.Storage tests, follow these steps:

1.  Review <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.

2.  Review one of these Windows Hardware Lab Kit (Windows HLK) topics, depending on the type of storage device or configuration:

    -   <xref rid="p_hlk_test.hard_disk_drive_testing_prerequisites">Hard Disk Drive Testing Prerequisites</b>

    -   <xref rid="p_hlk_test.hardware_based_raid_systems__fibre_channel_sas_scsi_serial_ata__testing_prerequisites">Hardware-based Raid Systems (Fibre Channel, SAS, SCSI, Serial ATA) Testing Prerequisites</b>

    -   <xref rid="p_hlk_test.optical_disk_drive_testing_prerequisites">Optical Disk Drive Testing Prerequisites</b>

    -   <xref rid="p_hlk_test.removable_storage_testing_prerequisites">Removable Storage Testing Prerequisites</b>

    -   <xref rid="p_hlk_test.secure_digital_host_controller_storage_testing_prerequisites">Secure Digital Host Controller Storage Testing Prerequisites</b>

    -   <xref rid="p_hlk_test.storage_adapter_or_controller_testing_overview">Storage Adapter or Controller Testing Overview</b>

3.  Review the <xref hlink="http://go.microsoft.com/fwlink/p/?LinkID=236110">Windows HLK release notes</b> for current test issues.

4.  For a test failure, look for usable information in the Windows HLK Studio test log. If you find usable information, resolve the issue and rerun the test.

5.  If you observe any failures while running the tests in the Windows HLK, look at the test logs that were generated. For example, for the Enumeration Test, the most relevant log is enumeratedrive.log.wtl. To view this log, go to the **Results** tab in the HLK studio and expand **Enumeration Test** &gt; **Test Run Date and Time** &gt; **Run Test** &gt; **Logs** &gt; **enumeratedrive.log.wtl**.

6.  To debug more, rerun the test manually from the Command Prompt (cmd), while setting the verbosity level to 4. This allows the test to log more information, such as data buffer, CDB information, and sense code. Documentation for each test contains details about the binary that is related to a particular test along with the binary location.

## Optical Storage Device

These are common issues with optical disk drive tests:

-   Some controllers that use Serial Advanced Technology Attachment (SATA) Advanced Host Controller Interface (AHCI) mode might cause the CDBs to time out. This time-out occurs most frequently in the Start Stop Unit test, where the CDB after test unit ready times out without any sense code being returned. To resolve the issue, try a different controller or configuration.

-   Some drives intermittently can't delete data from a disk. This issue might be caused by rewritable media that has been used too many times. Try to use new rewritable media.

For more information about how to troubleshoot a test, see the troubleshooting section of a specific test in <xref rid="p_hlk_test.device_storage_tests">Device.Storage Tests</b>.

## Hybrid Information Device

There are special steps that can be taken to reproduce a particular test case in a test, or if necessary, conduct a manual investigation of the device.

1.  Install hybridflt. These files(.inf, .sys, .cat) are found under the same folder as hybriddrive.exe

2.  Enable Storport Tracing

3.  Run hybriddrive.exe

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
<td><p><strong>Hybriddrive.exe –drive &lt;disk #&gt; -scenario &lt;scenario&gt; &lt;additional options&gt;</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
<tr class="even">
<td><p><strong>-Drive &lt;disk#&gt;</strong></p></td>
<td><p>The drive to be tested on. The behavior of boot drives or drives with a file system is not defined.</p></td>
</tr>
<tr class="odd">
<td><p><strong>-Verbosity</strong></p></td>
<td><p>The logging level for this test.</p>
<p>Default value: 1</p></td>
</tr>
<tr class="even">
<td><p><strong>-?</strong></p></td>
<td><p>Displays help.</p></td>
</tr>
<tr class="odd">
<td><p><strong>-Scenario logrw</strong></p></td>
<td><p>The scenario to run.</p></td>
</tr>
<tr class="even">
<td><p><strong>-case #</strong></p></td>
<td><p>The test case to run.</p></td>
</tr>
<tr class="odd">
<td><p>-length #(k|m|g)</p></td>
<td><p>Specifies the length of the operation.</p></td>
</tr>
<tr class="even">
<td><p>-offset #(k|m|g)</p></td>
<td><p>Specifies the offset of the operation from the start of the disk.</p></td>
</tr>
<tr class="odd">
<td><p>-tpriority #(|none)</p></td>
<td><p>Specifies the target priority of the operation. Specify <strong>none</strong> for no priority (this is different than a priority of 0).</p></td>
</tr>
<tr class="even">
<td><p>-spriority #</p></td>
<td><p>Specifies the source priority of the operation.</p></td>
</tr>
<tr class="odd">
<td><p>-thigh #</p></td>
<td><p>Specifies the high threshold.</p></td>
</tr>
<tr class="even">
<td><p>-tlow #</p></td>
<td><p>Specifies the low threshold.</p></td>
</tr>
<tr class="odd">
<td><p>-operation (r|w)</p></td>
<td><p>Specifies read or write.</p></td>
</tr>
</tbody>
</table>

<mark type="bullet_intro">Test scenarios:</b>

-   Logverify

-   Logrw

-   Logcommand

-   Location

-   Tagperf

Manual operation:

-   Print

    -   Prints out the current state of the disk.

-   Changelba

    -   Sends down change lba by range command. Valid options for this command are length, offset, and tpriority.

-   Demote

    -   Sends down demote by size command. Valid options for this command are length, tpriority, and spriority.

-   Off

    -   Turns off the cache.

-   On

    -   Turns on the cache.

-   Evict

    -   Sends an evict command. Valid options for this command are length and offset.

-   Threshold

    -   Sets the dirty threshold. Valid options for this command are thigh and tlow.

-   Movedata

    -   Reads and writes data from the device. Valid options for this command are length, offset, tpriority, and operation. This will also set the priority for any future I/O.

-   Priority

    -   Set the priority for future reads and writes. Valid options for this command are tpriority.

>[!NOTE]
Invalid parameters will be ignored.

Unspecified valid parameters are defaulted to a fixed value.


For more information about how to troubleshoot a test, see the troubleshooting section of a specific test in <xref rid="p_hlk_test.device_storage_tests">Device.Storage Tests</b>.

<seealso> <xref rid="p_hlk_test.device_storage_tests">Device.Storage Tests</b> <xref rid="p_hlk.troubleshooting_windows_hlk">Troubleshooting Windows HLK</b> </seealso>



