---
author: joshbax-msft
title: TargetFamily Methods
description: TargetFamily Methods
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9481ab23-ed8c-456c-b3c2-23a74255af4c
---

# TargetFamily Methods


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
<td><p>CreateTarget</p></td>
<td><p>Overloaded.</p></td>
</tr>
<tr class="even">
<td><p>DeleteTarget</p></td>
<td><p>This method deletes a test target from a target family.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Equals</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="even">
<td><p><strong>GetFeatures</strong></p></td>
<td><p>This method retrieves a list of features for this <strong>TargetFamily</strong>.</p></td>
</tr>
<tr class="odd">
<td><p><strong>GetHashCode</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="even">
<td><p><strong>GetTargets</strong></p></td>
<td><p>This method retrieves a list of test targets that have been assigned to this Device Family.</p></td>
</tr>
<tr class="odd">
<td><p><strong>GetTestResults</strong></p></td>
<td><p>This method retrieves a list of results for this <strong>TargetFamily</strong>.</p></td>
</tr>
<tr class="even">
<td><p><strong>GetTests</strong></p></td>
<td><p>This method retrieves a list of all of the tests needed for this <strong>TargetFamily</strong>.</p></td>
</tr>
<tr class="odd">
<td><p><strong>GetType</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="even">
<td><p><strong>IsValidTarget</strong></p></td>
<td><p>Checks to see if the TargetData can be a member of this target family.</p></td>
</tr>
<tr class="odd">
<td><p><strong>QueueTest</strong></p></td>
<td><p>Overloaded.</p></td>
</tr>
<tr class="even">
<td><p><strong>SetCommonParameters</strong></p></td>
<td><p>This method sets all of the parameters with a given name to the same value for all child jobs.</p></td>
</tr>
<tr class="odd">
<td><p><strong>TargetsAreValidInSameTargetFamily</strong></p></td>
<td><p>This method checks to see if the two TargetData objects can be members of the same target family.</p></td>
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
<td><p><strong>Family</strong></p></td>
<td><p>This property represents the <strong>DeviceFamily</strong> object associated with this <strong>TargetFamily</strong>.</p></td>
</tr>
<tr class="even">
<td><p><strong>IsValid</strong></p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p><strong>ProductInstance</strong></p></td>
<td><p>This property represents the <strong>ProductInstance</strong> parent object of this <strong>TargetFamily</strong>.</p></td>
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
<td><p><strong>LockObject</strong></p></td>
<td><p>(Inherited from <strong>NotificationBase</strong>)</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20TargetFamily%20Methods%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




