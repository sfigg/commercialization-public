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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20CpuArchitecture%20Enumeration%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




