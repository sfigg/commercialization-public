---
author: joshbax-msft
title: ProductInstance Members
description: ProductInstance Members
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 53d6ca69-872d-4843-b10b-f2e4fe8c8edf
---

# ProductInstance Members


The following table lists the members exposed by the **OSPlatform** type.

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
<td><p><strong>IsValid</strong></p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p><strong>MachinePool</strong></p></td>
<td><p>This property represents the machine (the test computer) that this product instance has been detected on.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Name</strong></p></td>
<td><p>This property represents the product name for this <strong>ProductInstance</strong> object.</p></td>
</tr>
<tr class="even">
<td><p><strong>OSPlatform</strong></p></td>
<td><p>This property represents the platform (operating system plus the architecture value) for this <strong>ProductInstance</strong> object.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Project</strong></p></td>
<td><p>This property represents the reference to the <strong>Project</strong> object containing this product instance.</p></td>
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
<td><p><strong>CanCreateTarget</strong></p></td>
<td><p>This method determines if a target can be created from <strong>TargetData</strong> object provided. The target is not added to the product instance.</p></td>
</tr>
<tr class="even">
<td><p><strong>CreateTarget</strong></p></td>
<td><p>This method creates a target from <strong>TargetData</strong>, and adds it to this product instance.</p></td>
</tr>
<tr class="odd">
<td><p><strong>CreateTargetFamily</strong></p></td>
<td><p>This method creates and adds a target family to the existing product instance, using the supplied <strong>DeviceFamily</strong>.</p></td>
</tr>
<tr class="even">
<td><p><strong>DeleteTarget</strong></p></td>
<td><p>Overloaded.</p></td>
</tr>
<tr class="odd">
<td><p><strong>DeleteTargetFamily</strong></p></td>
<td><p>This method deletes a target family.</p></td>
</tr>
<tr class="even">
<td><p><strong>Equals</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="odd">
<td><p><strong>FindTargetFromContainer</strong></p></td>
<td><p>This method creates a list of targets containing the specific container ID. There are two special container Ids to consider. The first is the system containerId (00000000-0000-0000-ffff-ffffffffffff). If this is passed in, then the method will return a list with just a single &quot;system&quot; target. The second is a zero-decorated GUID (00000000-0000-0000-0000-000000000000). This is an invalid GUID.</p></td>
</tr>
<tr class="even">
<td><p><strong>FindTargetFromDeviceFamily</strong></p></td>
<td><p>This method finds a list of target data that matches the family specified.</p></td>
</tr>
<tr class="odd">
<td><p><strong>FindTargetFromId</strong></p></td>
<td><p>Overloaded.</p></td>
</tr>
<tr class="even">
<td><p><strong>FindTargetFromSystem</strong></p></td>
<td><p>Overloaded.</p></td>
</tr>
<tr class="odd">
<td><p><strong>GetFeatures</strong></p></td>
<td><p>This method retrieves a collection of features detected for this product instance.</p></td>
</tr>
<tr class="even">
<td><p><strong>GetHashCode</strong></p></td>
<td><p>Overridden. This method creates a unique hash code for a <strong>MachineSet</strong> object.</p></td>
</tr>
<tr class="odd">
<td><p><strong>GetMachines</strong></p></td>
<td><p>This method retrieves all of the machines in a Product Instance. Machines are associated with Product Instances via their test targets. To add or remove a machine, you must add or remove the associated test target.</p></td>
</tr>
<tr class="even">
<td><p><strong>GetProductTypes</strong></p></td>
<td><p>This method attempts to detect product types this product instance belongs to.</p></td>
</tr>
<tr class="odd">
<td><p><strong>GetTargetFamilies</strong></p></td>
<td><p>This method retrieves an enumerable list of TargetFamilies that expose the product to the system.</p></td>
</tr>
<tr class="even">
<td><p><strong>GetTargets</strong></p></td>
<td><p>This method retrieves an enumerable list of targets that expose the product to the system.</p></td>
</tr>
<tr class="odd">
<td><p><strong>GetTests</strong></p></td>
<td><p>This method retrieves all tests needed for this node.</p></td>
</tr>
<tr class="even">
<td><p><strong>GetType</strong></p></td>
<td><p>(Inherited from Object)</p></td>
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
<td><p><strong>ToString</strong></p></td>
<td><p>(Inherited from Object)</p></td>
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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20ProductInstance%20Members%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




