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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20ContentLevelType%20Enumeration%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




