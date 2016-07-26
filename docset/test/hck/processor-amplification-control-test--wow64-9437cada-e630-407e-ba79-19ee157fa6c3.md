---
author: joshbax-msft
title: Processor Amplification Control Test (WoW64)
description: Processor Amplification Control Test (WoW64)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 51230993-032d-40da-a123-53b24e59b1b2
---

# Processor Amplification Control Test (WoW64)


This automated test verifies the presence and correctness of ProcAmpControl support of the video driver.

The test (based on DX7) attempts to create and use the ProcAmpControl device, a construct that is exposed through the DXVA1.0 Device Driver Interface (DDI). For each of the supported ProcAmp capabilities, and sometimes for combined capabilities, the test performs the following actions:

-   Verifies that the range, minimum, maximum, default values, and step size comply with the specification

-   Sets random, minimum, maximum, or invalid values; performs the Blt operations; and compares the output values with the expected values

If failures occur, the test logs the corresponding parameters, in addition to the actual and expected output values (or, in the case of noncompliance, the exact cause of failure).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.AdapterRender.MinimumDirectXLevel</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 8 (x64) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Graphic Adapter or Chipset Testing Prerequisites](graphic-adapter-or-chipset-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

## More information


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
<td><p><strong>Pactest.exe -d 1 -whql</strong></p></td>
<td><p>Runs the test job. The –d option sets the device index &quot;x&quot; (zero-based) and the –whql option is the default command-line parameter for Windows HCK testing.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type **/h**.

 

### File List

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
<td><p>Configdisplay.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\tools\</p></td>
</tr>
<tr class="even">
<td><p>Pactest.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>TDRWatch.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\</p></td>
</tr>
</tbody>
</table>

 

 

 






