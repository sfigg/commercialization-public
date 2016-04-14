---
Description: 'DISM Unattended Servicing Command-Line Options'
MS-HAID: 'p\_adk\_online.dism\_unattended\_servicing\_command\_line\_options'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'DISM Unattended Servicing Command-Line Options'
---

# DISM Unattended Servicing Command-Line Options


If you are installing multiple packages to a Windows® image, use DISM to apply an unattend.xml answer file to the image. Some packages require other packages to be installed first. If there is a dependency requirement, the best way to ensure the correct order of the installation is by using an answer file. When you use DISM to apply an unattend.xml answer file to an image, the unattended settings in the **offlineServicing** configuration pass are applied to the Windows image.

The base syntax for servicing a Windows image using DISM is:

**DISM.exe** {**/Image:**&lt;*path\_to\_ image\_directory*&gt; | **/Online**} \[**dism\_global\_options**\] {**servicing\_option**} \[&lt;*servicing\_argument*&gt;\]

The following servicing options are available to apply an unattend.xml answer file to an offline Windows image:

**DISM.exe /Image:**&lt;*path\_to\_ image\_directory*&gt; **/Apply-Unattend:**&lt;*path\_to\_unattend.xml*&gt;

The following servicing options are available to apply an unattend.xml answer file to a running operating system:

**DISM.exe /Online** **/Apply-Unattend:**&lt;*path\_to\_unattend.xml*&gt;

The following table provides a description of how an unattended servicing option can be used. These options are not case sensitive.

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
<td align="left"><p>When used immediately after an unattended servicing command-line option, information about the option and the arguments is displayed. Additional topics might become available when an image is specified.</p>
<p>Examples:</p>
<p><strong>Dism /online /Apply-Unattend /?</strong></p>
<p><strong>Dism /image:C:\test\offline /Apply-Unattend /?</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/Apply-Unattend:</strong>&lt;<em>path_to_unattend.xml</em>&gt;</p></td>
<td align="left"><p>Applies an Unattend.xml file to an image.</p>
<p>If you are updating device drivers using an unattended answer file, you must apply the answer file to an offline image and specify the settings in the <strong>offlineServicing</strong> configuration pass.</p>
<p>If you are updating packages or other settings using an unattended answer file, you can apply the answer file to an offline or online image. Specify the settings in the <strong>offlineServicing</strong> configuration pass.</p>
<p>Example:</p>
<p><strong>Dism /image:C:\test\offline /Apply-Unattend:C:\test\answerfiles\myunattend.xml</strong></p>
<p><strong>Dism /online /Apply-Unattend:C:\test\answerfiles\myunattend.xml</strong></p></td>
</tr>
</tbody>
</table>

 

## <span id="Limitations"></span><span id="limitations"></span><span id="LIMITATIONS"></span>Limitations


-   You cannot use other servicing commands on the same command line with unattended servicing commands.

-   Only a single unattend.xml answer file can be specified on any command line.

-   When you add packages to an image using an unattended answer file, the applicability of the package will not be checked. The answer file will be applied, and the operation will complete even if there are packages specified in the answer file which do not apply to the image. If you have to check the applicability of a package when you add it to an image, use the **DISM** command together with the **/Add-Package** option without the **/ignorecheck** option. For more information, see [DISM Operating System Package Servicing Command-Line Options](dism-operating-system-package-servicing-command-line-options.md).

-   If you are updating device drivers using an unattended answer file, you must apply the answer file to an offline image.

-   When you use DISM.exe to apply an answer file to a running operating system, the answer file should only contain elements in the **offlineServicing** configuration pass. This is because some settings in the Specialize configuration pass might be applied to the operating system. We recommend that the answer file that you use with DISM only contain settings in the **offlineServicing** configuration pass.

-   The recommended way to author answer files is to create them in Windows System Image Manager (Windows SIM). However, if you use a manually authored answer file, you must validate the answer file in Windows SIM to verify that it works. For more information, see [Best Practices for Authoring Answer Files](https://msdn.microsoft.com/library/windows/hardware/dn915073).

-   When you apply an answer file by using DISM, the answer file is not cached on the target computer.

## <span id="related_topics"></span>Related topics


[What is DISM?](what-is-dism.md)

[DISM Image Management Command-Line Options](dism-image-management-command-line-options-s14.md)

[DISM Languages and International Servicing Command-Line Options](dism-languages-and-international-servicing-command-line-options.md)

[DISM Operating System Package Servicing Command-Line Options](dism-operating-system-package-servicing-command-line-options.md)

[DISM Windows Edition-Servicing Command-Line Options](dism-windows-edition-servicing-command-line-options.md)

[DISM Driver Servicing Command-Line Options](dism-driver-servicing-command-line-options-s14.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20DISM%20Unattended%20Servicing%20Command-Line%20Options%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




