---
author: joshbax-msft
title: Windows System Check For WDDM
description: Windows System Check For WDDM
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d340cac0-9b2b-4410-8166-a0c14afd5ec7
---

# Windows System Check For WDDM


This automated test verifies that all display adapters or chipsets in the system are using WDDM version 1.0 display drivers or greater.

This test document is applicable to three test jobs:

-   Windows Client System Check For WDDM 1.0 Display Driver Support

-   Windows Client System Check For WDDM 1.1 Display Driver Support

-   Windows Client System Check For WDDM 1.2 Display Driver Support

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.Graphics.WDDM</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~1 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md).

## Supporting information


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
<td><p><strong>VerifyMode</strong></p></td>
<td><p>Displays available options</p></td>
</tr>
<tr class="even">
<td><p><strong>VerifyMode VGA</strong></p></td>
<td><p>Checks if machine is using VGA driver</p></td>
</tr>
<tr class="odd">
<td><p><strong>VerifyMode LDA</strong></p></td>
<td><p>Checks if machine is in LDA mode</p></td>
</tr>
<tr class="even">
<td><p><strong>VerifyMode Default</strong></p></td>
<td><p>Checks if machine is using default driver (WDDM, unless server with no D3D9).</p></td>
</tr>
<tr class="odd">
<td><p><strong>Verifymode WDDM10</strong></p></td>
<td><p>Checks if machine is using a WDDM 1.0 driver.</p></td>
</tr>
<tr class="even">
<td><p><strong>Verifymode WDDM11</strong></p></td>
<td><p>Checks if machine is using a WDDM 1.1 driver.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Verifymode WDDM12</strong></p></td>
<td><p>Checks if machine is using a WDDM 1.2 driver.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command line help for this test binary, type `/h`.

 

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
<td><p>Verifymode.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\wddm\bin\</p></td>
</tr>
</tbody>
</table>

 

 

 






