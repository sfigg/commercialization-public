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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20FilterType%20Enumeration%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




