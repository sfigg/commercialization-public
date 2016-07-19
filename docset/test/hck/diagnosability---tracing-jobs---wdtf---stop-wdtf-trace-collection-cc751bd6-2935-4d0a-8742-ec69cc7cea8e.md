---
author: joshbax-msft
title: Diagnosability - Tracing Jobs - WDTF - Stop WDTF trace collection
description: Diagnosability - Tracing Jobs - WDTF - Stop WDTF trace collection
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a9f87cf2-2ea3-4402-9a6b-dd8768a79af4
---

# Diagnosability - Tracing Jobs - WDTF - Stop WDTF trace collection


This optional test is provided to help troubleshoot certain test failures and is not required for certification.

You can use this optional test to stop a Windows Device Testing Framework (WDTF) trace collection. Traces are saved to the **%SystemDrive%\\WDTF\_Traces** folder on the Windows Hardware Certification Kit (Windows HCK) test system.For more information, see [Collect and View Windows Device Testing Framework (WDTF) Traces](collect-and-view-windows-device-testing-framework--wdtf--traces.md).

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


You must run the [Diagnosability - Tracing Jobs - WDTF - Start WDTF trace collection](diagnosability---tracing-jobs---wdtf---start-wdtf-trace-collection-d490d110-c85e-4a4b-9900-d122180a1334.md) test before you can run this test.

## Related topics


[Diagnosability - WDTF Tracing](diagnosability---wdtf-tracing.md)

 

 







