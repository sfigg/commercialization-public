---
author: joshbax-msft
title: MachinePropertyType Enumeration
description: MachinePropertyType Enumeration
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d9091478-d633-40c9-a9f7-4b3fc0182700
---

# MachinePropertyType Enumeration


A flag value that indicates whether this machine property is a settable property, or a Non-settable query (for example, ProcessorSpeed).

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As MachinePropertyType`

## Syntax


**Visual Basic**`Public Enumeration MachinePropertyType`

**C#**`public enum MachinePropertyType`

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
<td><p><strong>Query</strong></p></td>
<td><p>This Machine Property is a query against the machine itself, and is not settable or configurable.</p></td>
</tr>
<tr class="even">
<td><p><strong>Settable</strong></p></td>
<td><p>This flag indicates that a machine property is settable.</p></td>
</tr>
</tbody>
</table>

 

 

 






