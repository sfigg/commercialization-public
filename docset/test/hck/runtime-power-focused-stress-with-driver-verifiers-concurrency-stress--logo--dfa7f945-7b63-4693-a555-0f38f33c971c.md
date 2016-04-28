---
author: joshbax-msft
title: Runtime Power Focused Stress with Driver Verifier's Concurrency Stress (Logo)
description: Runtime Power Focused Stress with Driver Verifier's Concurrency Stress (Logo)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7fbddb5f-7e23-460e-9299-630399021ed1
---

# Runtime Power Focused Stress with Driver Verifier's Concurrency Stress (Logo)


This test performs I/O on different combinations of devices to alternate the devices between Active and Idle condition. Creating different combinations of devices being Active and Idle will help to ensure that the PEP logic is fully exercised.

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


This is a system-specific implementation of an existing test. For more information on this test, see [Round Trip Test (Manual) - Certification](round-trip-test--manual----certification6f11cbfa-d7b4-4421-ae08-736a5d585ad6.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

## More information


### Parameters

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
<td><p>The number of test cycles.</p>
<p>Default value: 400</p></td>
</tr>
<tr class="odd">
<td><p>DelayBetweenCycles</p></td>
<td><p>The delay time in milliseconds between each test cycle.</p>
<p>Default value: 1000</p></td>
</tr>
<tr class="even">
<td><p>IODuration</p></td>
<td><p>The I/O duration in milliseconds.</p>
<p>Default value: 1000</p></td>
</tr>
<tr class="odd">
<td><p>VerifierFalgs</p></td>
<td><p>The Driver Verifier flags to enable.</p>
<p>Default value: 0x289BB</p></td>
</tr>
<tr class="even">
<td><p>TestTimeoutValue</p></td>
<td><p>The timeout value for te.exe.</p>
<p>Default value: 7:50:0</p></td>
</tr>
<tr class="odd">
<td><p>OptTeCmdlineParams</p></td>
<td><p>The optional command line parameters for te.exe.</p></td>
</tr>
</tbody>
</table>

 

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
<td><p><strong>TE.exe /inproc /enablewttlogging /appendwttlogging rtpwrstresscuzz.dll /p:”TestCycles=[TestCycles]” /p:”DelayBetweenCycles=[DelayBetweenCycles]” /p:”IODuration=[IODuration]” /p:”VerifierFlags=[VerifierFlags]” /p:”TestTimeoutValue=[TestTimeoutValue]” /p:”OptTeCmdLineParams=[OptTeCmdLineParams]”</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type `/h`

 

### File list

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>File</th>
<th>Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Rtpwrstresscuzz.dll</p></td>
<td><p><em>[OSBinRoot]</em>\</p></td>
</tr>
<tr class="even">
<td><p>Te.exe</p></td>
<td><p><em>[TAEFBinRoot]</em>\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Runtime%20Power%20Focused%20Stress%20with%20Driver%20Verifier's%20Concurrency%20Stress%20%28Logo%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




