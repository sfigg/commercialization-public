---
author: joshbax-msft
title: MachineRole Members
description: MachineRole Members
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 913eb156-3bc3-4d3f-9938-7a0629581c56
---

# MachineRole Members


The following table lists the members exposed by the **Machine** type.

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
<td><p>Constraints</p></td>
<td><p>This property represents the constraints needed for this role.</p></td>
</tr>
<tr class="even">
<td><p>Maximum</p></td>
<td><p>This property represents the maximum number of machines needed for this role.</p></td>
</tr>
<tr class="odd">
<td><p>Minimum</p></td>
<td><p>This property represents the minimum number of machines needed for this role.</p></td>
</tr>
<tr class="even">
<td><p>Name</p></td>
<td><p>This property represents the Name of this role.</p></td>
</tr>
<tr class="odd">
<td><p>Primary</p></td>
<td><p>This property represents a value indicating whether this is the primary role.</p></td>
</tr>
<tr class="even">
<td><p>Set</p></td>
<td><p>This property represents the Machine set that contains this role.</p></td>
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
<td><p>AddMachine</p></td>
<td><p>This method adds a machine (test computer) to this role.</p></td>
</tr>
<tr class="even">
<td><p>Equals</p></td>
<td><p>Overloaded. Overridden.</p></td>
</tr>
<tr class="odd">
<td><p>GetHashCode</p></td>
<td><p>Overridden. This method retrieves (creates) a hash code for a MachineRole object.</p></td>
</tr>
<tr class="even">
<td><p>GetMachines</p></td>
<td><p>This method retrieves all of the machines assigned to this role.</p></td>
</tr>
<tr class="odd">
<td><p>GetType</p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="even">
<td><p>IsValidMachine</p></td>
<td><p>This method determines if the machine is appropriate for this role.</p></td>
</tr>
<tr class="odd">
<td><p>IsValidRole</p></td>
<td><p>This method checks to see if the other machine role is sufficient to enable this machine role.</p></td>
</tr>
<tr class="even">
<td><p>Equality</p></td>
<td><p>This method acts as an Equality operator which always returns a value of False if either operand is null, otherwise returns True or False.</p></td>
</tr>
<tr class="odd">
<td><p>Inequality</p></td>
<td><p>This method acts as an Inequality operator which always returns a value of False if either operand is null, otherwise returns True or False.</p></td>
</tr>
<tr class="even">
<td><p>ToString</p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="odd">
<td><p>RemoveMachine</p></td>
<td><p>This method removes a machine from the machine role.</p></td>
</tr>
<tr class="even">
<td><p>Validate</p></td>
<td><p>This method validates that this machine role is correct and complete.</p></td>
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
<td><p>Finalize</p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="even">
<td><p>MemberwiseClone</p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
</tbody>
</table>

 

 

 






