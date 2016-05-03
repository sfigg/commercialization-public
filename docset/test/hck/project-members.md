---
author: joshbax-msft
title: Project Members
description: Project Members
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3f26cec3-11f8-4ea3-b123-37597a9038f1
---

# Project Members


The following table lists the members exposed by the **Machine** type.

## Public Fields


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>OpenedByTag</p></td>
<td><p>This is the value of the string used to indicate the current opener.</p></td>
</tr>
</tbody>
</table>

 

## Public Properties


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>CreationTime</p></td>
<td><p>This property represents the creation <strong>DateTime</strong> for this <strong>Project</strong> object. You cannot change this value.</p></td>
</tr>
<tr class="even">
<td><p>Info</p></td>
<td><p>This property represents the project information.</p></td>
</tr>
<tr class="odd">
<td><p>ModifiedTime</p></td>
<td><p>This property represents the <strong>DateTime</strong> that this project was last modified (for example, when targets are created/removed or tests are scheduled). <strong>ModifiedTime</strong> is not updated when tests are completed.</p></td>
</tr>
<tr class="even">
<td><p>Name</p></td>
<td><p>This property represents the name of this <strong>Project</strong> object.</p></td>
</tr>
<tr class="odd">
<td><p>ProjectManager</p></td>
<td><p>This property represents the parent Windows HCK Studio object.</p></td>
</tr>
<tr class="even">
<td><p>ServiceLog</p></td>
<td><p>This property represents the service log associated with this project.</p></td>
</tr>
</tbody>
</table>

 

## Protected Properties


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>LockObject</p></td>
<td><p>(Inherited from <strong>NotificationBase</strong>)</p></td>
</tr>
</tbody>
</table>

 

## Public Methods


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>CanCreateProductInstance</p></td>
<td><p>This method validates that a child product instance object can be created but does not add the product instance. This method does not create a <strong>ProductInstance</strong>. A call to <strong>CreateProductInstance</strong> needs to be called to actually create the <strong>ProductInstance</strong>.</p></td>
</tr>
<tr class="even">
<td><p>CreateProductInstance</p></td>
<td><p>This method creates a child <strong>ProductInstance</strong> object.</p></td>
</tr>
<tr class="odd">
<td><p>DeleteProductInstance</p></td>
<td><p>This method deletes a <strong>ProductInstance</strong>.</p></td>
</tr>
<tr class="even">
<td><p>DeleteProperty</p></td>
<td><p>This method deletes an instance of a names property.</p></td>
</tr>
<tr class="odd">
<td><p>Equals</p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="even">
<td><p>GetAppliedFilters</p></td>
<td><p>This method retrieves a list of filters applied for this submission project.</p></td>
</tr>
<tr class="odd">
<td><p>GetHashCode</p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="even">
<td><p>GetProductInstances</p></td>
<td><p>This method retrieves a list of product instances.</p></td>
</tr>
<tr class="odd">
<td><p>GetProperties</p></td>
<td><p>This method retrieves, a <strong>Dictionary</strong> object with all of the project properties.</p></td>
</tr>
<tr class="even">
<td><p>GetTests</p></td>
<td><p>This method retrieves all tests needed for this node.</p></td>
</tr>
<tr class="odd">
<td><p>GetType</p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="even">
<td><p>QueueTest</p></td>
<td><p>Overloaded.</p></td>
</tr>
<tr class="odd">
<td><p>SetProperty</p></td>
<td><p>This method updates or creates a new property value.</p></td>
</tr>
<tr class="even">
<td><p><strong>ToString</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
</tbody>
</table>

 

## Protected Methods


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Finalize</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="even">
<td><p><strong>MemberwiseClone</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Project%20Members%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




