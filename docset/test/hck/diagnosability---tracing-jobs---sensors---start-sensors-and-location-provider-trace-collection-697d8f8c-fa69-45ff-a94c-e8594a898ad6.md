---
author: joshbax-msft
title: Diagnosability - Tracing Jobs - Sensors - Start Sensors and Location Provider trace collection
description: Diagnosability - Tracing Jobs - Sensors - Start Sensors and Location Provider trace collection
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1af37559-c4fa-4ede-8eb2-034794783440
---

# Diagnosability - Tracing Jobs - Sensors - Start Sensors and Location Provider trace collection


This optional test is provided to help troubleshoot certain test failures and is not required for certification.

This optional test can be used to start operating system trace collection for Sensors. Traces are saved to the **%SystemDrive%\\Sensors\_Traces** folder on the Windows Hardware Certification Kit (Windows HCK) test system.

**Note**  
Trace logs can become very large. Remember to stop trace collection when collecting traces is no longer required. Trace collection can be manually stopped by pressing the Enter key in the command window on the test system.

 

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
<td><p>~2 minutes</p></td>
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


[Diagnosability - Sensors Tracing](diagnosability---sensors-tracing.md)

 

 







