---
author: joshbax-msft
title: Hybrid Information Log Verification Test (LOGO)
description: Hybrid Information Log Verification Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6ad4fff7-663d-422d-8382-3e1dbfa69f80
---

# Hybrid Information Log Verification Test (LOGO)


This test ensures that certain bits are set in IDENTIFY DEVICE and the logs from READ LOGS.

The following are checked from IDENTIFY DEVICE:

-   Hybrid Information feature support

-   Hybrid Information feature enabled

-   Nominal Rotational rate

-   Trim Support

-   NCQ Queue Management

-   NCQ Send and Receive

The following are checked from the general purpose log:

-   NCQ Support

-   NCQ Non-Data Log Support

-   NCQ Send and Receive Log Support

-   Hybrid Information Log Support

The following command support is checked:

-   Change by LBA

-   Hybrid Control

-   Demote by Size

-   Evict

The following hybrid fields for the logs are checked:

-   Caching Medium Health Status

-   Dirty Low Threshold

-   Dirty High Threshold

-   Maximum Hybrid Priority Level

-   Max Priority Behavior

-   NVM size

-   Max Eviction Commands

-   Max Eviction Data Blocks

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.Sata.HybridInformation.BasicFunction</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8.1 x64 Windows 8.1 x86</p></td>
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

Hybridflt.sys must be installed for the test to work properly.

## More information


The test should automatically turn the hybrid information on before checking the logs, if it was not on already.

Use the Command Syntax section to execute a specific test case.

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
<td><p>The logging level for the test where 0 is the least verbose and 4 is the most verbose. You should leave this at its default value unless you are troubleshooting an individual test case.</p>
<p>Default value: 1</p></td>
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
<td><p><strong>Hybriddrive.exe –drive &lt;disk #&gt; -scenario logverify</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
<tr class="even">
<td><p><strong>-Drive &lt;disk#&gt;</strong></p></td>
<td><p>The drive to be tested on. The behavior of boot drives or drives with a file system is not defined.</p></td>
</tr>
<tr class="odd">
<td><p><strong>-Verbosity</strong></p></td>
<td><p>The logging level for this test.</p></td>
</tr>
<tr class="even">
<td><p><strong>-?</strong></p></td>
<td><p>Displays help.</p></td>
</tr>
<tr class="odd">
<td><p><strong>-Scenario logverify</strong></p></td>
<td><p>The scenario to run.</p></td>
</tr>
<tr class="even">
<td><p><strong>-case #</strong></p></td>
<td><p>The test case to run.</p></td>
</tr>
</tbody>
</table>

 

 

 






