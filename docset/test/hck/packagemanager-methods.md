---
author: joshbax-msft
title: PackageManager Methods
description: PackageManager Methods
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7b267209-cb6b-4296-bbb5-7a9bc36d84ec
---

# PackageManager Methods


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
<td><p>This method is no longer valid. Use <strong>IOpcFactory</strong> and <strong>CreateDigitalSignatureManager</strong> to detect signatures.</p></td>
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

 

 

 






