---
author: joshbax-msft
title: Diagnosability - Tracing Jobs - WPD - Start Windows Portable Devices (WPD) trace collection
description: Diagnosability - Tracing Jobs - WPD - Start Windows Portable Devices (WPD) trace collection
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 29514eee-4eec-43b3-8b69-55fbad7319a8
---

# Diagnosability - Tracing Jobs - WPD - Start Windows Portable Devices (WPD) trace collection


This optional test is provided to help troubleshoot certain test failures and is not required for certification.

This optional test can be used to start WPD OS trace collection. Traces are saved to the **%SystemDrive%\\WPD\_Traces** folder on the Windows Hardware Certification Kit (Windows HCK) test system.

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


There are no prerequisites to running this test.

## Related topics


[Diagnosability - WPD Tracing](diagnosability---wpd-tracing.md)

[Diagnosability - Tracing Jobs - WPD - Delete collected Windows Portable Devices (WPD) traces](diagnosability---tracing-jobs---wpd---delete-collected-windows-portable-devices--wpd--traces-0eed28fe-c77a-41c1-97e2-47590f8ebec0.md)

[Using the Network Monitor Tool](http://go.microsoft.com/fwlink/p/?linkid=302290)

 

 







