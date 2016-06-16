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

 

 

 






