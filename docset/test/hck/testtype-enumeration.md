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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20TestType%20Enumeration%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




