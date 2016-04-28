---
author: joshbax-msft
title: PackageWriter Members
description: PackageWriter Members
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8365413c-0dc6-48d1-b9e7-177a00f5974e
---

# PackageWriter Members


The following table lists the members exposed by the **PackageWriter** type.

## Public Constructors


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>PackageWriter</p></td>
<td><p>Overloaded.</p></td>
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
<td><p><strong>PackageVersion</strong></p></td>
<td><p>This property represents the version of the package that this instance of <strong>PackageWriter</strong> will create.</p></td>
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
<td><p>AddDriver</p></td>
<td><p>This method adds driver files to the submission package and checks the driver files for driver signability. This method can only be used for submission packages. It cannot be used for update packages. The signability tests are done when drivers are added to the package. If the signability tests fail the driver is not added to the package. Down level operating system signability tests are automatically run. Errors from these signability results will not prevent submission creation (will not cause a false return value).The error messages for down level operating system signability runs will be captured and returned as warnings.</p></td>
</tr>
<tr class="even">
<td><p>AddReplacementDriver</p></td>
<td><p>This method replaces a driver in the submission package. This method can only be used for update packages.</p></td>
</tr>
<tr class="odd">
<td><p>AddSupplementalFiles</p></td>
<td><p>This method adds all of the files in a specified directory to a submission package. This method can be used for both submission packages and update packages.</p></td>
</tr>
<tr class="even">
<td><p>Dispose</p></td>
<td><p>Overloaded.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Equals</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="even">
<td><p><strong>GetHashCode</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="odd">
<td><p><strong>GetType</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="even">
<td><p>Merge</p></td>
<td><p>This method merges a project into an existing package. This method can only be used for existing submission packages.</p></td>
</tr>
<tr class="odd">
<td><p>Save</p></td>
<td><p>Overloaded. This class contains methods used to save a submission package.</p></td>
</tr>
<tr class="even">
<td><p>SetProgressActionHandler</p></td>
<td><p>This method sets an action handler that is used to send out submission progress updates. This method can be used for both submission packages and update packages.</p></td>
</tr>
<tr class="odd">
<td><p><strong>ToString</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="even">
<td><p>ValidateMerge</p></td>
<td><p></p></td>
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
<td><p><strong>Dispose</strong></p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p><strong>Finalize</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="odd">
<td><p><strong>MemberwiseClone</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20PackageWriter%20Members%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




