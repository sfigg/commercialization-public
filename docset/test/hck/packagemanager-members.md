---
author: joshbax-msft
title: PackageManager Members
description: PackageManager Members
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: cc72f47b-0da9-459c-8533-b340c8814df8
---

# PackageManager Members


The following table lists the members exposed by the **PackageManager** type.

## Public Constructors


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
<td><p>PackageManager(String)</p></td>
<td><p>Overloaded.</p></td>
</tr>
</tbody>
</table>

 

## Public Fields


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
<td><p>PackageVersionString</p></td>
<td><p>The version (string) for the package version that this <strong>PackageManager</strong> can open.</p></td>
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
<td><p><strong>Certificate</strong></p></td>
<td><p>This property represents the certificate used to sign a submission package. This property will be <strong>null</strong> if the package is not signed.</p></td>
</tr>
<tr class="even">
<td><p>ConnectionType</p></td>
<td><p>Overridden. This property represents the connection type for this submission package.</p></td>
</tr>
<tr class="odd">
<td><p>FileName</p></td>
<td><p>This property represents the filename of the submission package that was opened.</p></td>
</tr>
<tr class="even">
<td><p>PackageVersion</p></td>
<td><p>This property represents the package version that this instance of <strong>PackageManager</strong> is able to read.</p></td>
</tr>
<tr class="odd">
<td><p>Version</p></td>
<td><p>This property represents the major version of the Windows HCK Controller. (Inherited from [ProjectManager Class](projectmanager-class.md))</p></td>
</tr>
<tr class="even">
<td><p>VersionString</p></td>
<td><p>This property represents the version of the Windows HCK Controller and its content. (Inherited from [ProjectManager Class](projectmanager-class.md))</p></td>
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
<td><p>IsDisposed</p></td>
<td><p>This property represents a value indicating whether this object has already freed its resources. (Inherited from [ProjectManager Class](projectmanager-class.md))</p></td>
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
<td><p>CreateDeviceFamily</p></td>
<td><p>Overridden. This method creates a new device family to use.</p></td>
</tr>
<tr class="even">
<td><p>CreateProject</p></td>
<td><p>Overridden. This method creates a new project within the submission package.</p></td>
</tr>
<tr class="odd">
<td><p>DeleteDeviceFamily</p></td>
<td><p>Overridden. This method deletes a device family.</p></td>
</tr>
<tr class="even">
<td><p>DeleteProject</p></td>
<td><p>Overridden. This method deletes a project from the submission package.</p></td>
</tr>
<tr class="odd">
<td><p>Dispose</p></td>
<td><p>This method implements the IDisposable interface. (Inherited from [ProjectManager Class](projectmanager-class.md))</p></td>
</tr>
<tr class="even">
<td><p><strong>Equals</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="odd">
<td><p>ExtractDriverPackages</p></td>
<td><p>This method extracts all the driver packages linked with a submission package.</p></td>
</tr>
<tr class="even">
<td><p>ExtractSupplementalFiles</p></td>
<td><p>This method extracts all the &quot;supplemental files&quot; linked with a submission package.</p></td>
</tr>
<tr class="odd">
<td><p>GetDeviceFamilies</p></td>
<td><p>Overridden. This method retrieves a list of all of the device families used in this submission package.</p></td>
</tr>
<tr class="even">
<td><p>GetFeatures</p></td>
<td><p>Overridden. This method retrieves the features found within the submission package.</p></td>
</tr>
<tr class="odd">
<td><p>GetFilters</p></td>
<td><p>Overridden. This method retrieves the filters present in the submission package. Getting filters from a package is not supported.</p></td>
</tr>
<tr class="even">
<td><p><strong>GetHashCode</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="odd">
<td><p>GetPlatforms</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>GetProductTypes</p></td>
<td><p>Overridden. This method retrieves the product types found within the package.</p></td>
</tr>
<tr class="odd">
<td><p>GetProject</p></td>
<td><p>Overridden. This method retrieves a Submission from the package that matches projectName.</p></td>
</tr>
<tr class="even">
<td><p>GetProjectInfoList</p></td>
<td><p>Overridden. This method retrieves a list containing one ProjectInfo object per Project found in the submission package.</p></td>
</tr>
<tr class="odd">
<td><p>GetProjectNames</p></td>
<td><p>Overridden. This method retrieves a list of names for projects stored in this package.</p></td>
</tr>
<tr class="even">
<td><p>GetProjectSummary</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>GetRequirements</p></td>
<td><p>Overridden. This method retrieves the requirements found within the submission package.</p></td>
</tr>
<tr class="even">
<td><p>GetRootMachinePool</p></td>
<td><p>Overridden. This method retrieves the root machine pool for this package.</p></td>
</tr>
<tr class="odd">
<td><p><strong>GetType</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="even">
<td><p>Sign</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p><strong>ToString</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="even">
<td><p>VerifySignature</p></td>
<td><p>This method is no longer valid. Use <strong>IOpcFactory</strong> and <strong>CreateDigitalSignatureManager</strong> to detect signatures</p></td>
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

 

 

 






