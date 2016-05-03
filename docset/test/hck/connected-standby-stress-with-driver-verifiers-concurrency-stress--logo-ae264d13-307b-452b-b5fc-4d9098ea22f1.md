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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Connected%20Standby%20Stress%20with%20Driver%20Verifier's%20Concurrency%20Stress%20%28Logo%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




