---
author: joshbax-msft
title: ParameterSetAsDefault Enumeration
description: ParameterSetAsDefault Enumeration
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2d52dfc7-b29c-4c17-8c78-b964f4a1c150
---

# ParameterSetAsDefault Enumeration


This is used as a flag to determine if a test run parameter should be set as a default for future test runs.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ParameterSetAsDefault`

## Syntax


**Visual Basic**`Public Enumeration ParameterSetAsDefault`

**C#**`public enum ParameterSetAsDefault`

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
<td><p>DoNotSetAsDefault</p></td>
<td><p>This value represents a test run parameter that will only be implemented for a specific test run. The test run parameter will not be set as the default value for future test runs.</p></td>
</tr>
<tr class="even">
<td><p>SetAsDefault</p></td>
<td><p>This value represents a test run parameter set as a default for future test runs.</p></td>
</tr>
</tbody>
</table>

 

 

 






