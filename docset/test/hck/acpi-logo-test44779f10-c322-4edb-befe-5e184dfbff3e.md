---
author: joshbax-msft
title: ACPI Logo Test
description: ACPI Logo Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: dc6f78c2-bd3e-4812-84a8-077ed3699e1a
---

# ACPI Logo Test


This test checks the system ACPI tables against a set of ACPI 5.0 requirements for general resource consistency (\_CRS) and correct usages of \_DIS/\_STA methods. It also validates specific ACPI requirements for HIDI2C and five-button array devices, as well as those systems that support InstantGo. In addition, the test ensures proper ACPI definition of TPM 1.2/2.0 devices per Hardware Certification requirements.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.Firmware.ACPI</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~30 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Basic Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md).

**Note**  
You must enable test-signing for the test system before you run the test. You must either disable Secure Boot or install debug policy (ARM platform only) before executing this test.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

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
<td><p><strong>acpilogo.exe –Install %cd%\acpifilter.inf</strong></p></td>
<td><p>Install the ACPI logo test driver; note that a reboot is required after running this command.</p></td>
</tr>
<tr class="even">
<td><p><strong>acpilogo.exe –Logo</strong></p></td>
<td><p>Runs the ACPI logo test; the test results are logged to AcpiLogo.wtl.</p></td>
</tr>
<tr class="odd">
<td><p><strong>acpilogo.exe –Uninstall</strong></p></td>
<td><p>Uninstall the ACPI logo test driver</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command line help for this test binary, type /h.

 

 

 






