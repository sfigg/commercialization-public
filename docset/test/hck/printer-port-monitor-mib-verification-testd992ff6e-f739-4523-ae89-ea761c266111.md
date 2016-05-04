---
author: joshbax-msft
title: Printer Port Monitor MIB Verification Test
description: Printer Port Monitor MIB Verification Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ed8354b8-a1c9-4e39-903f-da8659ed9092
---

# Printer Port Monitor MIB Verification Test


This automated test verifies that a TCP/IP printer supports the Printer Port Monitor Management Information Base (MIB) 1.0. This test tool also verifies that the printer supports the minimum components of the Host Resources MIB and Printer MIB that the Standard TCP/IP Port Monitor requires.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Printer.Base.TCPMon</p>
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
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Printer Testing Prerequisites](printer-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md).

## More information


This test performs Simple Network Management Protocol (SNMP) queries on the device that you want to test. This test verifies that the device supports the minimum components of the Host Resources MIB and the Printer MIB that the Standard TCP/IP Port Monitor uses to query device status. This test also verifies that the device supports the Printer Port Monitor MIB that is required for port installation and configuration by the Standard TCP/IP Port Monitor.

 

 






