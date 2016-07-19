---
author: joshbax-msft
title: FilterType Enumeration
description: FilterType Enumeration
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f340178e-0e27-4529-bff9-fd60b26f4158
---

# FilterType Enumeration


This class contains an enumeration that defines the HCK filter type.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As FilterType`

## Syntax


**Visual Basic**`Public Enumeration FilterType`

**C#**`public enum FilterType`

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
<td><p>AutoTriage</p></td>
<td><p>This enum identifies a filer as being of type Auto Triage. In this case, the filter provides additional troubleshooting information that can be viewed by the tester. This type of filer does not change the status of the test result. For a failed test result, the test must be rerun until it returns a pass.</p></td>
</tr>
<tr class="even">
<td><p>Contingency</p></td>
<td><p>This enum identifies a filer as being of type Contingency. A contingency is granted to Microsoft partners due to partial hardware or driver implementation issues and once applied it enables failed results to be submitted as if the tests passed.</p></td>
</tr>
<tr class="odd">
<td><p>Errata</p></td>
<td><p>This enum identifies a filer as being of type Errata. This type of filter is applied to tests that fail due to known test issues, and enables failed results to be submitted as if the tests passed.</p></td>
</tr>
</tbody>
</table>

 

 

 






