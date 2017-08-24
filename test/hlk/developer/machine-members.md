---
title: Machine Members
description: Machine Members
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 91acf90b-c8c4-4891-9260-f9f3a4fa7309
---

# Machine Members


The following table lists the members exposed by the **Machine** type.

## <span id="Protected_Constructors"></span><span id="protected_constructors"></span><span id="PROTECTED_CONSTRUCTORS"></span>Protected Constructors


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
<td><p><strong>Machine</strong></p></td>
<td><p>Overloaded.</p></td>
</tr>
</tbody>
</table>

 

## <span id="Public_Properties"></span><span id="public_properties"></span><span id="PUBLIC_PROPERTIES"></span>Public Properties


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
<td><p><strong>EstimatedRuntime</strong></p></td>
<td><p>This property represents the estimated runtime remaining for all tests which will be run against this machine (test computer).</p></td>
</tr>
<tr class="even">
<td><p><strong>Id</strong></p></td>
<td><p>This property represents the unique ID value of the machine.</p></td>
</tr>
<tr class="odd">
<td><p><strong>LastHeartbeat</strong></p></td>
<td><p>This property represents the last heartbeat time.</p></td>
</tr>
<tr class="even">
<td><p><strong>Name</strong></p></td>
<td><p>This property represents the name of the machine.</p></td>
</tr>
<tr class="odd">
<td><p><strong>OSPlatform</strong></p></td>
<td><p>This property represents the operating system name, CPU type, and so on of this machine.</p></td>
</tr>
<tr class="even">
<td><p><strong>Pool</strong></p></td>
<td><p>This property represents the reference of the parent pool for this machine.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Status</strong></p></td>
<td><p>This property represents the state of the machine.</p></td>
</tr>
<tr class="even">
<td><p><strong>UniqueIdentifier</strong></p></td>
<td><p>Gets the unique identifier.</p></td>
</tr>
</tbody>
</table>

 

## <span id="Protected_Properties"></span><span id="protected_properties"></span><span id="PROTECTED_PROPERTIES"></span>Protected Properties


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

 

## <span id="Public_Methods"></span><span id="public_methods"></span><span id="PUBLIC_METHODS"></span>Public Methods


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
<td><p><strong>Equals</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="even">
<td><p><strong>GetFullPropertyByName</strong></p></td>
<td><p>This method retrieves the value of a particular dimension value.</p></td>
</tr>
<tr class="odd">
<td><p><strong>GetHashCode</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="even">
<td><p><strong>GetMachineProperties</strong></p></td>
<td><p>This method retrieves all of the machine properties for this machine.</p></td>
</tr>
<tr class="odd">
<td><p><strong>GetPropertyByName</strong></p></td>
<td><p>This method retrieves the value of a particular dimension value.</p></td>
</tr>
<tr class="even">
<td><p>GetTargetsInUse</p></td>
<td><p>Gets a summary of all of the targets from all of the projects that are still in use by the machine.</p></td>
</tr>
<tr class="odd">
<td><p><strong>GetTestTargets</strong></p></td>
<td><p>Gets a collection of test targets.</p></td>
</tr>
<tr class="even">
<td><p><strong>GetType</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="odd">
<td><p><strong>RemoveProperty</strong></p></td>
<td><p>This method removes and deletes property (dimension) by name from this machine.</p></td>
</tr>
<tr class="even">
<td><p><strong>SetMachineStatus</strong></p></td>
<td><p>This method sets the machine status. This is a blocking call and will wait until the machine status is set or the timeout has elapsed. A good default value is 10 min (600000 milliseconds).</p></td>
</tr>
<tr class="odd">
<td><p><strong>SetProperty</strong></p></td>
<td><p>This method creates a new, or updates an existing property value for a machine.</p></td>
</tr>
<tr class="even">
<td><p><strong>ToString</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
</tbody>
</table>

 

## <span id="Protected_Methods"></span><span id="protected_methods"></span><span id="PROTECTED_METHODS"></span>Protected Methods


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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20Machine%20Members%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




