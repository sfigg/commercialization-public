---
author: joshbax-msft
title: FilterStatus Enumeration
description: FilterStatus Enumeration
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 585b61a6-1eaa-473a-9fe5-1925051c1cea
---

# FilterStatus Enumeration


This class contains enumeration value that denotes the status of a HCK filter.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As FilterStatus`

## Syntax


**Visual Basic**`Public Enumeration FilterStatus`

**C#**`public enum FilterStatus`

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
<td><p>Active</p></td>
<td><p>This enum identifies a filter as being active. When in the active state, a filter will be applied during filter processing against matching test results.</p></td>
</tr>
<tr class="even">
<td><p>Inactive</p></td>
<td><p>This enum identifies a filter as being active. When a filter is inactive the filter will not be applied during filter processing for matching test results.</p></td>
</tr>
<tr class="odd">
<td><p>Test</p></td>
<td><p>This enum identifies a filter as a test filter.</p></td>
</tr>
</tbody>
</table>

 

 

 






