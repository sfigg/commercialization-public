---
author: joshbax-msft
title: TargetDriversType Enumeration
description: TargetDriversType Enumeration
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: daa8081d-3dee-44b9-bf6a-ef777718dcd3
---

# TargetDriversType Enumeration


This enumeration defines the target driver settings values.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As TargetDriversType`

## Syntax


**Visual Basic**`Public Enumeration TargetDriversType`

**C#**`public enum TargetDriversType`

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
<td><p>InboxDrivers</p></td>
<td><p>This enum value identifies a <strong>TargetDriverType</strong> as an inbox driver. Specifically, the test target uses only inbox or system drivers.</p></td>
</tr>
<tr class="even">
<td><p>NoDriversRequired</p></td>
<td><p>This enum value indicates that a driver is not needed for a specific device on a test target. This is usually for a system or network-attached device.</p></td>
</tr>
<tr class="odd">
<td><p>ProvidedDrivers</p></td>
<td><p>This enum value identifies a TargetDriverType as vernodr-provided driver. The test target uses drivers that must be provided prior to testing.</p></td>
</tr>
<tr class="even">
<td><p>InboxDriversOverridden</p></td>
<td><p>This enum value identifies a <strong>TargetDriverType</strong> as inbox or system drivers, but has been overridden.</p></td>
</tr>
</tbody>
</table>

 

 

 






