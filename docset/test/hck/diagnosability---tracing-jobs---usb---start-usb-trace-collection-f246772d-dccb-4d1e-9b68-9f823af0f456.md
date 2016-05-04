---
author: joshbax-msft
title: Diagnosability - Tracing Jobs - USB - Start USB trace collection
description: Diagnosability - Tracing Jobs - USB - Start USB trace collection
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8f676d4b-7921-4a72-9115-a15b0171ec7b
---

# Diagnosability - Tracing Jobs - USB - Start USB trace collection


This optional test is provided to help troubleshoot certain test failures and is not required for certification.

This optional test can be used to start USB OS trace collection. Traces are saved to the **%SystemDrive%\\USB\_Traces** folder on the Windows Hardware Certification Kit (Windows HCK) test system. For more information, see [How to Capture and Read USB ETW Traces in Windows 8](http://go.microsoft.com/fwlink/p/?linkid=302308).

**Note**  
Trace logs can become very large. When you no longer need to collect trace logs, use [Diagnosability - Tracing Jobs - USB - Stop USB trace collection](diagnosability---tracing-jobs---usb---stop-usb-trace-collection-544a7404-7584-4951-8c7f-ddf02f846226.md) to stop tracing.

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.DevFund.Reliability.Discretional System.Fundamentals.Reliability.Discretional</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
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
<td><p>Optional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


There are no prerequisites for running this test.

## Related topics


[Diagnosability - USB Tracing](diagnosability---usb-tracing.md)

 

 







