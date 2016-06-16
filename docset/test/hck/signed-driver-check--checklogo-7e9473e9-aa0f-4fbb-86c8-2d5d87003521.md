---
author: joshbax-msft
title: Signed Driver Check (CheckLogo)
description: Signed Driver Check (CheckLogo)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a1234f77-ba24-4402-a6de-9e22f12d57c2
---

# Signed Driver Check (CheckLogo)


This test verifies that drivers that are submitted for certification have valid signature attributes. This test applies to both Windows client and Windows Server operating systems. Windows Server systems must have device drivers signed specifically for Windows Server, indicating they were tested in compliance with Windows Server. Device requirements and submitted successfully for Windows Server Device Certification.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.SignedDrivers.DigitalSignature</p>
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
<td><p>Certification</p></td>
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

This test verifies the following driver aspects:

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Potential Cause of Failure</th>
<th>Failure Details</th>
<th>Failure Fix</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Device problems</p></td>
<td><p>Indicates a device problem that prevents proper operation.</p></td>
<td><p>See [Error Codes in Device Manager](http://go.microsoft.com/fwlink/p/?linkid=226044) for information about specific error codes and how to address them.</p></td>
</tr>
<tr class="even">
<td><p>Signature problems</p></td>
<td><p>Indicates critical certification-level problems (for example a test-signed driver) that are preventing compliance with certification requirements.</p></td>
<td><p>Contact the driver vendor to get a driver that is not test signed and is for this version of Windows, and then install the new driver.</p></td>
</tr>
<tr class="odd">
<td><p>Certification level problems</p></td>
<td><p>Indicates signature issues (for example, signed for an incorrect operating system) that prevent the driver from meeting certification requirements.</p></td>
<td><p>Contact the driver vendor for the correctly signed driver for the installed version of Windows, and install that driver.</p></td>
</tr>
</tbody>
</table>

 

 

 






