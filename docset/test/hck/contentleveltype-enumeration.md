---
author: joshbax-msft
title: ContentLevelType Enumeration
description: ContentLevelType Enumeration
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3341aa73-50f5-4f42-986f-ec9a02678256
---

# ContentLevelType Enumeration


Represents the content level type for a [Test Class](test-class.md) object.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Syntax


**Visual Basic**`Public Enumeration ContentLevelType`

**C#**`public enum ContentLevelType`

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
<td><p>Basic</p></td>
<td><p>Simple, direct developer tests that catch fundamental issues during the driver development cycle.</p></td>
</tr>
<tr class="even">
<td><p>Functional</p></td>
<td><p>More rigorous tests that test the full functionalities of the driver.</p></td>
</tr>
<tr class="odd">
<td><p>Reliability</p></td>
<td><p>Stress tests for testing the reliability of the driver.</p></td>
</tr>
<tr class="even">
<td><p>Certification</p></td>
<td><p>Tests that are used to acquire the WHCK logo.</p></td>
</tr>
<tr class="odd">
<td><p>Experiences</p></td>
<td><p>Tests for validation of end-to-end experiences. For example, testing interaction with other hardware/software stacks.</p></td>
</tr>
<tr class="even">
<td><p>Optional</p></td>
<td><p>Optional tests that provide additional value based on diagnostic information or configuration.</p></td>
</tr>
</tbody>
</table>

 

 

 






