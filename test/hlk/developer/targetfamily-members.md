---
title: TargetFamily Members
description: TargetFamily Members
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 31be2d17-5f19-4f8d-a900-2b9f1945d515
---

# TargetFamily Members


The following table lists the members exposed by the [TargetFamily Class](targetfamily-class.md).

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
<td><p><strong>Family</strong></p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p><strong>IsValid</strong></p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p><strong>ProductInstance</strong></p></td>
<td><p></p></td>
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
<td><p>[AddTests](targetfamily-addtests-method.md)</p></td>
<td>Adds the given Tests to this [TargetFamily](targetfamily-class.md).
<div class="alert">
<strong>Warning</strong>  This functionality is being deprecated. Please use playlists to create custom test pass lists.
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td><p>[CreateTarget](targetfamilycreatetarget-method.md)</p></td>
<td>Creates a target from a <strong>TargetData</strong> object, and adds it to a target family.
<div class="alert">
<strong>Warning</strong>  Some overloads of this method are being deprecated. Please use [CreateTarget(IEnumerable&lt;TargetData&gt;)](targetfamilycreatetarget-method--ienumerable-.md).
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td><p>[DeleteTarget](targetfamilydeletetarget-method.md)</p></td>
<td><p>This method deletes a test target from a target family.</p></td>
</tr>
<tr class="even">
<td><p><strong>Equals</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="odd">
<td><p>[GetFeatures](targetfamilygetfeatures-method.md)</p></td>
<td><p>This method retrieves a list of features for this <strong>TargetFamily</strong>.</p></td>
</tr>
<tr class="even">
<td><p><strong>GetHashCode</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="odd">
<td><p>[GetTargets](targetfamilygettargets-method.md)</p></td>
<td><p>This method retrieves a list of test targets that have been assigned to this Device Family.</p></td>
</tr>
<tr class="even">
<td><p>[GetTestResults](targetfamilygettestresults-method.md)</p></td>
<td><p>This method retrieves a list of results for this <strong>TargetFamily</strong>.</p></td>
</tr>
<tr class="odd">
<td><p>[GetTests](targetfamilygettests-method.md)</p></td>
<td><p>This method retrieves a list of all of the tests needed for this <strong>TargetFamily</strong>.</p></td>
</tr>
<tr class="even">
<td><p><strong>GetType</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="odd">
<td><p>[IsValidTarget](targetfamilyisvalidtarget-method.md)</p></td>
<td><p>Checks to see if the TargetData can be a member of this target family.</p></td>
</tr>
<tr class="even">
<td><p>[QueueTest](targetfamilyqueuetest-method.md)</p></td>
<td><p>Overloaded.</p></td>
</tr>
<tr class="odd">
<td><p>[SetCommonParameters](targetfamilysetcommonparameters-method.md)</p></td>
<td><p>This method sets all of the parameters with a given name to the same value for all child jobs.</p></td>
</tr>
<tr class="even">
<td><p>[TargetsAreValidInSameTargetFamily](targetfamliytargetsarevalidinsametargetfamily-method.md)</p></td>
<td><p>This method checks to see if the two [TargetData](targetdata-class.md) objects can be members of the same target family.</p></td>
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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20TargetFamily%20Members%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




