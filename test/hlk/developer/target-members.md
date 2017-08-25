---
title: Target Members
description: Target Members
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d8338c02-35fb-41c2-b08b-19e8a4ca7d12
---

# Target Members


This class represents an abstract pool of machines that are grouped together based on a user intention. It exposes functionality that enables machines to be regrouped among different machine pools and manage the resource pool hierarchy.

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
<td><p><strong>DriverStatus</strong></p></td>
<td><p>This property represents the driver status of the test target.</p></td>
</tr>
<tr class="even">
<td><p><strong>IsTargetReady</strong></p></td>
<td><p>This property represents the value indicating whether the test target is currently ready to run tests (specifically, the test computer is in the “ready” state).</p></td>
</tr>
<tr class="odd">
<td><p><strong>Key</strong></p></td>
<td><p>This property represents the string that uniquely identifies this test target. In case of a device, for example, this would be the hardware ID.</p></td>
</tr>
<tr class="even">
<td><p><strong>Machine</strong></p></td>
<td><p>This property represents the machine (test computer) that this test target was detected on.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Name</strong></p></td>
<td><p>This property represents the name of the test target to display to the users.</p></td>
</tr>
<tr class="even">
<td><p><strong>TargetFamily</strong></p></td>
<td><p>This property represents the product instance that this test target is associated with.</p></td>
</tr>
<tr class="odd">
<td><p><strong>TargetType</strong></p></td>
<td><p>This property represents the type of this test target.</p></td>
</tr>
<tr class="even">
<td><p><strong>XmlData</strong></p></td>
<td><p>This property represents the sysparse data associated with this test target.</p></td>
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
<td><p>LockObject</p></td>
<td><p>(Inherited from [NotificationBase Class](notificationbase-class.md))</p></td>
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
<td><p>[AddFeature](targetaddfeature-method.md)</p></td>
<td><p>This method adds a [Feature](feature-class.md).</p></td>
</tr>
<tr class="even">
<td><p><strong>Equals</strong></p></td>
<td><p>Overloaded. Overridden.</p></td>
</tr>
<tr class="odd">
<td><p>[GetDrivers](targetgetdrivers-method.md)</p></td>
<td><p>Gets a list of drivers.</p></td>
</tr>
<tr class="even">
<td><p>[GetFeatures](targetgetfeatures-method.md)</p></td>
<td><p>This method retrieves the list of features that is associated with the [Target](target-class.md).</p></td>
</tr>
<tr class="odd">
<td><p><strong>GetHashCode</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="even">
<td><p>[GetTestResults](targetgettestresults-method.md)</p></td>
<td><p>Gets a read-only collection of test results for tests for this [Target](target-class.md).</p></td>
</tr>
<tr class="odd">
<td><p>[GetTests](targetgettests-method.md)</p></td>
<td><p>Gets all tests for this [Target](target-class.md).</p></td>
</tr>
<tr class="even">
<td><p><strong>GetType</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="odd">
<td><p>[RedistributeScheduledTests](target-redistributescheduledtests-method.md)</p></td>
<td><p>Method to redistribute tests across targets which have been added to a project.</p></td>
</tr>
<tr class="even">
<td><p><strong>RemoveFeature</strong></p></td>
<td><p>Overloaded.</p></td>
</tr>
<tr class="odd">
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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20Target%20Members%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




