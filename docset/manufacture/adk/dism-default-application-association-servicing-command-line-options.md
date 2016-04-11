---
Description: 'DISM Default Application Association Servicing Command-Line Options'
MS-HAID: 'p\_adk\_online.dism\_default\_application\_association\_servicing\_command\_line\_options'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'DISM Default Application Association Servicing Command-Line Options'
---

# DISM Default Application Association Servicing Command-Line Options


You can use the default application association-servicing commands to import, export, list, and remove the settings that specify which application opens a file based on the file name extension or protocol.

The base syntax for servicing a Windows image using DISM is:

**DISM.exe** {**/Image:**&lt;*path\_to\_ image\_directory*&gt; | **/Online**} \[**dism\_global\_options**\] {**servicing\_option**} \[&lt;*servicing\_argument*&gt;\]

The following default application servicing options are available for an offline image.

**DISM.exe /image:**&lt;*path\_to\_image\_directory*&gt; \[**/Get-DefaultAppAssociations** | **/Import-DefaultAppAssociations** | **/Remove-DefaultAppAssociations**\]

The following default application association servicing options are available for a running operating system.

**DISM.exe /Online** \[**/Export-DefaultAppAssociations** | **/Get-DefaultAppAssociations** | **Import-DefaultAppAssociations** | **Remove-DefaultAppAssociations**\]

The following table provides a description of how each default application association servicing option can be used. These options are not case sensitive.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Option</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>/Get-Help</strong></p>
<p><strong>/?</strong></p></td>
<td align="left"><p>When used immediately after a default application association servicing command-line option, information about the option and the arguments is displayed. Additional topics might become available when an image is specified.</p>
<p>Examples:</p>
<p><strong>Dism /image:C:\test\offline /Import-DefaultAppAssociations /?</strong></p>
<p><strong>Dism /online /Get-DefaultAppAssociations /?</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/Export-DefaultAppAssociations:</strong>&lt;<em>path_to_export_file</em>&gt;</p></td>
<td align="left"><p>Exports the default application associations from a running operating system to an .xml file.</p>
<p>Example:</p>
<p><strong>Dism.exe /Online /Export-DefaultAppAssociations:C:\AppAssoc.xml</strong></p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/Get-DefaultAppAssociations</strong></p></td>
<td align="left"><p>Displays the list of default application associations that have been set in the specified Windows image. You can use this option to verify that default application associations were successfully imported to the image.</p>
<p>Examples:</p>
<p><strong>Dism.exe /Image:C:\test\offline /Get-DefaultAppAssociations</strong></p>
<p><strong>Dism.exe /Online /Get-DefaultAppAssociations</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/Import-DefaultAppAssociations:</strong>&lt;<em>path_to_xml_file</em>&gt;</p></td>
<td align="left"><p>Imports a set of default application associations to a specified Windows image from an .xml file. The default application associations will be applied for each user during their first logon.</p>
<p>Examples:</p>
<p><strong>Dism.exe /Image:C:\test\offline /Import-DefaultAppAssociations:C:\AppAssoc.xml</strong></p>
<p><strong>Dism.exe /Online /Import-DefaultAppAssociations:C:\AppAssoc.xml</strong></p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/Remove-DefaultAppAssociations</strong></p></td>
<td align="left"><p>Removes the default application associations from the specified Windows image.</p>
<p>Examples:</p>
<p><strong>Dism.exe /Image:C:\test\offline /Remove-DefaultAppAssociations</strong></p>
<p><strong>Dism.exe /Online /Remove-DefaultAppAssociations</strong></p></td>
</tr>
</tbody>
</table>

 

## <span id="related_topics"></span>Related topics


[What is DISM?](what-is-dism.md)

[DISM Image Management Command-Line Options](dism-image-management-command-line-options-s14.md)

[Deployment Image Servicing and Management (DISM) Command-Line Options](deployment-image-servicing-and-management--dism--command-line-options.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20DISM%20Default%20Application%20Association%20Servicing%20Command-Line%20Options%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




