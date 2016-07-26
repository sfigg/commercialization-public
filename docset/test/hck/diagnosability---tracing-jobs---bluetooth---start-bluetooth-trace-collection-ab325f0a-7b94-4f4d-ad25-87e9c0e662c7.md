---
author: joshbax-msft
title: Diagnosability - Tracing Jobs - Bluetooth - Start Bluetooth trace collection
description: Diagnosability - Tracing Jobs - Bluetooth - Start Bluetooth trace collection
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9d3edcc6-e93f-481a-bdc4-490b58961ec9
---

# Diagnosability - Tracing Jobs - Bluetooth - Start Bluetooth trace collection


This optional test is provided to help troubleshoot certain test failures and is not required for certification.

This optional test can be used to start Bluetooth operating system trace collection. Traces are saved to the **%SystemDrive%\\Bluetooth\_Traces** folder on the Windows Hardware Certification Kit (Windows HCK) test system.

**Note**  
Trace logs can become very large. When you no longer need to collect traces, use [Diagnosability - Tracing Jobs - Bluetooth - Stop Bluetooth trace collection](diagnosability---tracing-jobs---bluetooth---stop-bluetooth-trace-collection-c7ea99cd-faa2-4d10-acc7-d0076568dff7.md) to stop collecting traces.

 

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


There are no prerequisites to running this test.

## Related topics


[Diagnosability - Bluetooth Tracing](diagnosability---bluetooth-tracing.md)

 

 







