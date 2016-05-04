---
author: joshbax-msft
title: WDDM HPD Notification Test (Manual)
description: WDDM HPD Notification Test (Manual)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7701bdb4-ede2-4f26-83a0-c2988df8ac82
---

# WDDM HPD Notification Test (Manual)


This manual test verifies support for notification events about Hot Plug Detect (HPD) removal and arrival.

This test is a user-mode test. You first generate an HPD removal event by unplugging a computer monitor. Then, plug in the monitor. The test reports success if it detects the arrival event after it detects the removal event.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.WDDM.Display.HotPlugDetection Device.Graphics.WDDM.DisplayRender.Base</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Graphic Adapter or Chipset Testing Prerequisites](graphic-adapter-or-chipset-testing-prerequisites.md).

**Warning**  
Make sure that the computer can run all manual tests that are required for certification. Depending on the type of submission, prerequisites may include the following:

-   TV Out support

-   Multimonitor support

-   Hot plug detection support

 

When you are running this test, select one computer in your pool, set the necessary dimension, and then schedule all jobs that have "(Manual)" in the title at the same time. You can do this before or after the rest of the automated jobs so that they are sent to the system in bulk.

You can set the dimension for this test by using either of the following methods:

-   Type this command at a command prompt: `WTTCmd.exe /ConfigReg /Add /Value:Display\PrimaryMachine /Data:""`

-   Use this procedure:

    1.  Pick a relevant computer in the pool via job monitor.

    2.  Right-click the computer name in the pool, and then click **Edit**.

    3.  Add the dimension to the list.

    4.  Click **Save**.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

## More information


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
<td><p><strong>HPDNotification</strong></p></td>
<td><p>Runs the WDDM HPD Notification Test (Manual) test job.</p></td>
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
<td><p>Configdisplay.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\tools\</p></td>
</tr>
<tr class="even">
<td><p>HPDNotification.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttestnttest\windowstest\graphics\wddm\bin\</p></td>
</tr>
<tr class="odd">
<td><p>TDRWatch.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest nttest\windowstest\graphics\</p></td>
</tr>
</tbody>
</table>

 

 

 






