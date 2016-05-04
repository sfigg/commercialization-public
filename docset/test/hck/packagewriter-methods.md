---
author: joshbax-msft
title: PackageWriter Methods
description: PackageWriter Methods
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 87a60878-f433-40f7-adda-bdd4eafc6855
---

# PackageWriter Methods


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

 

 

 






