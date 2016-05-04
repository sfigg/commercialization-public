---
author: joshbax-msft
title: TargetType Enumeration
description: TargetType Enumeration
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d3479359-53fe-425f-8169-d898837ed116
---

# TargetType Enumeration


This is the list of all available test target types. Certification tests runs against a device, software (for example, a filter driver) or a computer.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As TargetType`

## Syntax


**Visual Basic**`Public Enumeration TargetType`

**C#**`public enum TargetType`

## Members


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Member name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Device</p></td>
<td><p>This identifies a test target as a hardware device.</p></td>
</tr>
<tr class="even">
<td><p>Filter</p></td>
<td><p>This specifies that a test target is a filter driver or a driver without hardware to which it is associated.</p></td>
</tr>
<tr class="odd">
<td><p>System</p></td>
<td><p>This defines a test target as a system (also referred to as a test computer).</p></td>
</tr>
<tr class="even">
<td><p>TargetCollection</p></td>
<td><p>This target represents a device collection or association to a test target (test computer).</p></td>
</tr>
</tbody>
</table>

 

 

 






