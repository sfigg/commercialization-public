---
author: joshbax-msft
title: CpuArchitecture Enumeration
description: CpuArchitecture Enumeration
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3a331a4b-8cd4-4c9d-9b63-1bde4dccf7a0
---

# CpuArchitecture Enumeration


This class contains enumeration values that define the architecture that a test or submission package is applicable to.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As CpuArchitecture`

## Syntax


**Visual Basic**`Public Enumeration CpuArchitecture`

**C#**`public enum CpuArchitecture`

## Members


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Member Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Arm</p></td>
<td><p>This enum value identifies the architecture as ARM.</p></td>
</tr>
<tr class="even">
<td><p>IA64</p></td>
<td><p>This enum value identifies the architecture as Intel ia64 (Itanium 64-bit).</p></td>
</tr>
<tr class="odd">
<td><p>X64</p></td>
<td><p>This enum value identifies the architecture as 64-bit.</p></td>
</tr>
<tr class="even">
<td><p>X86</p></td>
<td><p>This enum value identifies the architecture as 32-bit.</p></td>
</tr>
</tbody>
</table>

 

## Remarks


See the Win32 documentation for SYSTEM\_INFO.wProcessorArchitecture.

 

 






