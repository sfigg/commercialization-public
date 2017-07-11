---
title: Project Methods
description: Project Methods
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3ec5b071-f1cd-4b17-9758-a75c5fb52924
---

# Project Methods


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
<td><p>[AddTests](project-addtests-method.md)</p></td>
<td>Adds the given Tests to this Project.
<div class="alert">
<strong>Warning</strong>  This functionality is being deprecated. Please use playlists to create custom test pass lists.
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td><p>[CanCreateProductInstance](projectcancreateproductinstance-method.md)</p></td>
<td><p>This method validates that a child product instance object can be created but does not add the product instance. This method does not create a <strong>ProductInstance</strong>. A call to <strong>CreateProductInstance</strong> needs to be called to actually create the <strong>ProductInstance</strong>.</p></td>
</tr>
<tr class="odd">
<td><p>[CreateProductInstance](projectcreateproductinstance-method.md)</p></td>
<td><p>This method creates a child <strong>ProductInstance</strong> object.</p></td>
</tr>
<tr class="even">
<td><p>[DeleteProductInstance](projectdeleteproductinstance-method.md)</p></td>
<td><p>This method deletes a <strong>ProductInstance</strong>.</p></td>
</tr>
<tr class="odd">
<td><p>[DeleteProperty](projectdeleteproperty-method.md)</p></td>
<td><p>This method deletes an instance of a names property.</p></td>
</tr>
<tr class="even">
<td><p>Equals</p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="odd">
<td><p>[GetAllPossibleTests](project-getallpossibletests-method.md)</p></td>
<td>Gets all of the tests that could potentially be added to this Project.
<div class="alert">
<strong>Warning</strong>  This functionality is being deprecated. Please use playlists to create custom test pass lists.
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td><p>[GetAppliedFilters](projectgetappliedfilters-method.md)</p></td>
<td><p>This method retrieves a list of filters applied for this submission project.</p></td>
</tr>
<tr class="odd">
<td><p>GetHashCode</p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="even">
<td><p>[GetProductInstances](projectgetproductinstances-method.md)</p></td>
<td><p>This method retrieves a list of product instances.</p></td>
</tr>
<tr class="odd">
<td><p>[GetProperties](projectgetproperties-method.md)</p></td>
<td><p>This method retrieves, a <strong>Dictionary</strong> object with all of the project properties.</p></td>
</tr>
<tr class="even">
<td><p>[GetTests](projectgettests----method.md)</p></td>
<td><p>This method retrieves all tests needed for this node.</p></td>
</tr>
<tr class="odd">
<td><p>GetType</p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="even">
<td><p>[QueueTest](projectqueuetest-method.md)</p></td>
<td><p>Overloaded.</p></td>
</tr>
<tr class="odd">
<td><p>[RemoveTests](project-removetests-method.md)</p></td>
<td>Removes the given Tests from the Project.
<div class="alert">
<strong>Warning</strong>  This functionality is being deprecated. Please use playlists to create custom test pass lists.
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td><p>[SetProperty](projectsetproperty-method.md)</p></td>
<td><p>This method updates or creates a new property value.</p></td>
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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20Project%20Methods%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




