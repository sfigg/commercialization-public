---
title: PackageWriter Methods
description: PackageWriter Methods
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f1773568-f232-44ba-9aec-8b2dde1a997a
---

# PackageWriter Methods


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
<td><p>[AddDriver](packagewriteradddriver-method.md)</p></td>
<td><p>This method adds driver files to the submission package and checks the driver files for driver signability. This method can only be used for submission packages. It cannot be used for update packages. The signability tests are done when drivers are added to the package. If the signability tests fail the driver is not added to the package. Down level operating system signability tests are automatically run. Errors from these signability results will not prevent submission creation (will not cause a false return value).The error messages for down level operating system signability runs will be captured and returned as warnings.</p></td>
</tr>
<tr class="even">
<td><p>[AddReplacementDriver](packagewriteraddreplacementdriver-method.md)</p></td>
<td><p>This method replaces a driver in the submission package. This method can only be used for update packages.</p></td>
</tr>
<tr class="odd">
<td><p>[AddSupplementalFiles](packagewriteraddsupplementalfiles-method.md)</p></td>
<td><p>This method adds all of the files in a specified directory to a submission package. This method can be used for both submission packages and update packages.</p></td>
</tr>
<tr class="even">
<td><p>[Dispose](packagewriterdispose-method.md)</p></td>
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
<td><p>[Merge](packagewritermerge-method.md)</p></td>
<td><p>This method merges a project into an existing package. This method can only be used for existing submission packages.</p></td>
</tr>
<tr class="odd">
<td><p>[Save](packagewritersave-method.md)</p></td>
<td><p>Overloaded. This class contains methods used to save a submission package.</p></td>
</tr>
<tr class="even">
<td><p>[SavePartialPackage](packagewriter-savepartialpackage-method.md)</p></td>
<td><p>Overloaded.</p></td>
</tr>
<tr class="odd">
<td><p>[SetProgressActionHandler](packagewritersetprogressactionhandler-method.md)</p></td>
<td><p>This method sets an action handler that is used to send out submission progress updates. This method can be used for both submission packages and update packages.</p></td>
</tr>
<tr class="even">
<td><p><strong>ToString</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="odd">
<td><p>[TargetFamiliesAreDeepMergeCompatible](packagewriter-targetfamiliesaredeepmergecompatible-method.md)</p></td>
<td><p>Checks if two target families are similar enough for deep merging.</p></td>
</tr>
<tr class="even">
<td><p>[ValidateMerge](packagewritervalidatemerge-method.md)</p></td>
<td><p>Checks the provided project for errors that would occur while merging with the current package.</p></td>
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
<td><p>[Dispose](packagewriterdispose-method.md)</p></td>
<td><p>Overloaded.</p></td>
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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20PackageWriter%20Methods%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




