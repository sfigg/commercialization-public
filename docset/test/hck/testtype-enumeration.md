---
author: joshbax-msft
title: TestType Enumeration
description: TestType Enumeration
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 72977801-c149-4acc-9535-7773422c90ae
---

# TestType Enumeration


This enumeration represents types of tests that can exist in the HCK.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As TestType`

## Syntax


**Visual Basic**`Public Enumeration TestType`

**C#**`public enum TestType`

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
<td><p>Automated</p></td>
<td><p>This enum represents tests that require no manual input (referred to automated tests).</p></td>
</tr>
<tr class="even">
<td><p>Configuration</p></td>
<td><p>This enum represents tests denoted as configuration jobs( jobs which perform configuration actions, but do not involve any test actions). This type of test has been deprecated, do not use.</p></td>
</tr>
<tr class="odd">
<td><p>Library</p></td>
<td><p>This enum represents library tests. This type of test has been deprecated, do not use.</p></td>
</tr>
<tr class="even">
<td><p>Manual</p></td>
<td><p>This enum represents tests that require manual input (referred to as manual tests).</p></td>
</tr>
</tbody>
</table>

 

 

 






