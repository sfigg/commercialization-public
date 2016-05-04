---
author: joshbax-msft
title: Diagnosability - Tracing Jobs - WDTF - Format collected WDTF traces
description: Diagnosability - Tracing Jobs - WDTF - Format collected WDTF traces
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 176b9b39-e249-40f9-8011-e0357e35884c
---

# Diagnosability - Tracing Jobs - WDTF - Format collected WDTF traces


This optional test is provided to help troubleshoot certain test failures and is not required for certification.

You can use this optional test to format WDTF traces that are saved in the **%SystemDrive%\\WDTF\_Traces** folder on the Windows Hardware Certification Kit (Windows HCK) test system, to create readable text and CSV files. For more information, see [Collect and View Windows Device Testing Framework (WDTF) Traces](collect-and-view-windows-device-testing-framework--wdtf--traces.md#view).

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
<td><p>~15 minutes</p></td>
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


You must run the following tests before you run this test:

-   [Diagnosability - Install Jobs - Install tracing tools](diagnosability---install-jobs---install-tracing-tools-147a1834-d3b3-4604-8515-4aa26ebc099c.md)

-   [Diagnosability - Tracing Jobs - WDTF - Start WDTF trace collection](diagnosability---tracing-jobs---wdtf---start-wdtf-trace-collection-d490d110-c85e-4a4b-9900-d122180a1334.md)

-   [Diagnosability - Tracing Jobs - WDTF - Stop WDTF trace collection](diagnosability---tracing-jobs---wdtf---stop-wdtf-trace-collection-cc751bd6-2935-4d0a-8742-ec69cc7cea8e.md)

## Related topics


[Diagnosability - WDTF Tracing](diagnosability---wdtf-tracing.md)

 

 







