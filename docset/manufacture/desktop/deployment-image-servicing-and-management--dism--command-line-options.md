---
author: Justinha
Description: 'Windows 10 DISM Command-Line Options'
MS-HAID: 'p\_adk\_online.deployment\_image\_servicing\_and\_management\_\_dism\_\_command\_line\_options'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Windows 10 DISM Command-Line Options'
---

# Windows 10 DISM Command-Line Options


Deployment Image Servicing and Management (DISM.exe) mounts a Windows image (.wim) file or virtual hard disk (.vhd or .vhdx) for servicing. You can also use DISM to install, uninstall, configure, and update the features and packages in offline Windows images and offline Windows Preinstallation Environment (WinPE) images. For more information about common DISM scenarios, see [What is DISM?](what-is-dism.md).

In addition to the command-line tool, DISM is available by using PowerShell. For more information, see [Deployment Imaging Servicing Management (DISM) Cmdlets in Windows PowerShell](http://go.microsoft.com/fwlink/?LinkId=239926).

DISM replaces tools including PEImg, Intlcfg, Package Manager, and ImageX.

## <span id="In_This_Section"></span><span id="in_this_section"></span><span id="IN_THIS_SECTION"></span>In This Section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p>[DISM Image Management Command-Line Options](dism-image-management-command-line-options-s14.md)</p></td>
<td align="left"><p>Image management commands such as capturing, applying, and mounting a Windows image.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[DISM Global Options for Command-Line Syntax](dism-global-options-for-command-line-syntax.md)</p></td>
<td align="left"><p>Basic command-line syntax and universal options for servicing functions.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[DISM Operating System Package Servicing Command-Line Options](dism-operating-system-package-servicing-command-line-options.md)</p></td>
<td align="left"><p>Package-servicing commands for adding, removing, and enumerating .cab and .msu packages and enabling, disabling, and enumerating features.</p></td>
</tr>
<tr class="even">
<td align="left">[DISM Provisioning Package (.ppkg) Command-Line Options](dism-provisioning-package-command-line-options.md)</td>
<td align="left"><p>Use Windows provisioning packages (.ppkg)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[DISM Capabilities Package Servicing Command-Line Options](dism-capabilities-package-servicing-command-line-options.md)</p></td>
<td align="left"><p>Capabilities servicing commands for adding languages, .NET, and other Windows features.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[DISM App Package (.appx or .appxbundle) Servicing Command-Line Options](dism-app-package--appx-or-appxbundle--servicing-command-line-options.md)</p></td>
<td align="left"><p>Servicing commands for adding, removing, and enumerating app packages.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[DISM Application Servicing Command-Line Options](dism-application-servicing-command-line-options.md)</p></td>
<td align="left"><p>Servicing commands that can be used to check the applicability of Windows Installer application patches (.msp files) and to query your offline image for information about installed MSI applications and application patches (.msp files).</p></td>
</tr>
<tr class="even">
<td align="left"><p>[DISM Default Application Association Servicing Command-Line Options](dism-default-application-association-servicing-command-line-options.md)</p></td>
<td align="left"><p>Servicing commands for importing, exporting, removing, and enumerating the settings that specify which application opens a file based on file extension or protocol</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[DISM Languages and International Servicing Command-Line Options](dism-languages-and-international-servicing-command-line-options.md)</p></td>
<td align="left"><p>International-servicing commands for adjusting international settings and configurations.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[DISM Driver Servicing Command-Line Options](dism-driver-servicing-command-line-options-s14.md)</p></td>
<td align="left"><p>Driver-specific servicing commands for adding, removing, and enumerating driver .inf files.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[DISM Unattended Servicing Command-Line Options](dism-unattended-servicing-command-line-options.md)</p></td>
<td align="left"><p>Servicing commands that can be used to apply an Unattend.xml file.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[DISM Windows PE Servicing Command-Line Options](dism-windows-pe-servicing-command-line-options.md)</p></td>
<td align="left"><p>WinPE–specific servicing commands for preparing a WinPE image.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[DISM Windows Edition-Servicing Command-Line Options](dism-windows-edition-servicing-command-line-options.md)</p></td>
<td align="left"><p>Edition-servicing commands for changing the edition of your Windows image.</p></td>
</tr>
</tbody>
</table>

 

## <span id="related_topics"></span>Related topics


[DISM Image Management Command-Line Options](dism-image-management-command-line-options-s14.md)

[DISM How-to Topics (Deployment Image Servicing and Management)](dism-how-to-topics--deployment-image-servicing-and-management.md)

[What is DISM?](what-is-dism.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Windows%2010%20DISM%20Command-Line%20Options%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




