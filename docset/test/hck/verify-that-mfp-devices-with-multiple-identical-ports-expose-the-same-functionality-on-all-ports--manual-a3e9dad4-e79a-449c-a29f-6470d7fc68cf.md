---
author: joshbax-msft
title: Verify that MFP devices with multiple identical ports expose the same functionality on all ports (MANUAL)
description: Verify that MFP devices with multiple identical ports expose the same functionality on all ports (MANUAL)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 34cac018-2d65-4792-b135-f6c5b10fa756
---

# Verify that MFP devices with multiple identical ports expose the same functionality on all ports (MANUAL)


This manual test ensures that a multifunction printer (MFP) device that has multiple identical ports exposes the same functionality on all ports. For example, if an MFP printer and scanner have two USB ports, both ports must be able to print and scan. An MFP that exposes print functionality on one port and scan functionality on the other port fails this test.

This requirement still allows devices to use USB ports for ?PictBridge? or another picture data protocol. For example, an MFP may contain two USB ports that have different functionality, where one USB port is for MFP functionality and one port is for ?PictBridge.? However, the MFP must have a clear distinction in functionality for each port.

The test does the following:

1.  Asks if this device has multiple identical physical ports, such as two USB-B connectors. (You can disregard modem ports.)

2.  Asks if each of these ports expose the same set of functions, such as print, scan, fax, and storage.

3.  Waits for you to push the Pass, Fail, or NotApplicable button,

4.  Writes a WTT pass/fail result.

The "Verify that MFP devices with multiple identical ports expose the same functionality on all ports (MANUAL)" tool returns PASS or FAIL, based on user input.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Printer.Base.connectivityRobustness Device.Imaging.Scanner.Base.MFPmultiplePorts</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
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
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Printer Testing Prerequisites](printer-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md).

 

 






