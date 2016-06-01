---
author: joshbax-msft
title: Connected Standby Stress with Driver Verifier's Concurrency Stress (Logo)
description: Connected Standby Stress with Driver Verifier's Concurrency Stress (Logo)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f88787b7-92e9-4ddc-93af-95c49282a9b3
---

# Connected Standby Stress with Driver Verifier's Concurrency Stress (Logo)


This test causes the system to enter and exit Connected Standby by pressing a software power button. It also performs I/O on devices before entering Connected Standby.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.PowerManagement.CS.CSQuality</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~480 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

## More information


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
<td><p>DQ</p></td>
<td><p>The SDEL device query.</p></td>
</tr>
<tr class="even">
<td><p>TestCycles</p></td>
<td><p>The number of test cycles for this test.</p></td>
</tr>
<tr class="odd">
<td><p>DelayBetweenCycles</p></td>
<td><p>The delay time in milliseconds between each test cycle.</p></td>
</tr>
<tr class="even">
<td><p>IODuration</p></td>
<td><p>The I/O duration in milliseconds.</p></td>
</tr>
<tr class="odd">
<td><p>CSDuration</p></td>
<td><p>The Connected Standby duration in milliseconds.</p></td>
</tr>
<tr class="even">
<td><p>VerifierFlags</p></td>
<td><p>The Driver Verifier flags to enable.</p></td>
</tr>
<tr class="odd">
<td><p>TestTimeoutValue</p></td>
<td><p>The timeout value for the execution of te.exe.</p></td>
</tr>
<tr class="even">
<td><p>OptTeCmdlineParams</p></td>
<td><p>The optional command line parameters for te.exe.</p></td>
</tr>
</tbody>
</table>

 

### Parameters

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
<td><p><strong>TE.exe /inproc /enablewttlogging /appendwttlogging csstresscuzz.dll /p:DQ=[DQ] /p:TestCycles=[TestCycles] /p:DelayBetweenCycles=[DelayBetweenCycles] /p:IODuration=[IODuration] /p:CSDuration=[CSDuration] /p:VerifierFlags=[VerifierFlags]</strong></p></td>
<td><p>Runs the Connected Standby Stress with Driver Verifier's Concurrency Stress (Logo) test job.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type `/h`.

 

 

 






