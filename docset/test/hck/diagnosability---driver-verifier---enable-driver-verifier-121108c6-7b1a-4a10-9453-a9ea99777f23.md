---
author: joshbax-msft
title: Diagnosability - Driver Verifier - Enable Driver Verifier
description: Diagnosability - Driver Verifier - Enable Driver Verifier
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 98f17c7b-c85a-4c7d-b88f-972d6de41941
---

# Diagnosability - Driver Verifier - Enable Driver Verifier


This optional test is provided to help troubleshoot certain test failures and is not required for certification.

This optional test can be used to enable [Driver Verifier](http://go.microsoft.com/fwlink/p/?linkid=303808).

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


There are no prerequisites to run this test.

## More information


### Command line syntax

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
<td><p><strong>Drivers</strong></p></td>
<td><p>Specify a space-separated list of drivers that Driver Verifier should verify. Use <strong>*</strong> to have Driver Verifier verify all drivers. For more information, see [Verifier Command Line](http://go.microsoft.com/fwlink/p/?linkid=303809).</p></td>
</tr>
<tr class="even">
<td><p><strong>Flags</strong></p></td>
<td><p>Specify flags for verification in decimal or hex format. Use <strong>standard</strong> to have Driver Verifier use standard settings. For more information, see [Verifier Command Line](http://go.microsoft.com/fwlink/p/?linkid=303809).</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Diagnosability - Driver Verifier](diagnosability---driver-verifier.md)

 

 







