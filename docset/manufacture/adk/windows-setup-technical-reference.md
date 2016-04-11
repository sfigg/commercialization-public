---
Description: Windows Setup Technical Reference
MS-HAID: 'p\_adk\_online.windows\_setup\_technical\_reference'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Windows Setup Technical Reference
---

# Windows Setup Technical Reference


Windows Setup is a bootable program that installs the Windows operating system.

## <span id="BKMK_APP"></span><span id="bkmk_app"></span>Practical applications


-   You can install or upgrade the Windows operating system on a PC from a USB key, a mounted .ISO file, DVD, or network device.
-   You can automate the Windows installation process, including the configuration of drivers, packages, files, and Windows system settings by using answer files created from [Windows System Image Manager Technical Reference](p_wsim.windows_system_image_manager_technical_reference__win8).
-   You can use Windows Setup as an installer for your own customized Windows images.
-   You can use the menus in Windows Setup to prepare the hard drives before installation.

## <span id="What_s_New"></span><span id="what_s_new"></span><span id="WHAT_S_NEW"></span>What's New


-   Windows 8.1 upgrades are different from previous Windows upgrade scenarios. For more info, see [Windows 8.1 Upgrade Scenarios for OEMs](windows-81-upgrade-scenarios-for-oems.md).

-   Windows Setup cannot be used to perform automated upgrades to most editions of Windows 8.1.

    For volume-licensed editions of Windows, we've added a new command-line option, `setup /auto`, to help enable upgrades. Note, we only plan to use this option for upgrades to Windows 8.1, and we may remove the option in future versions of Windows. For more info, see [Windows Setup Command-Line Options](windows_setup_command_line_options.md).

-   [Settings for Automating OOBE](settings-for-automating-oobe.md): The [NetworkLocation](p_unattend.networklocation_win7_microsoft_windows_shell_setupoobenetworklocation) setting is no longer needed to automate OOBE. The functionality of the [ProtectYourPC](p_unattend.protectyourpc_win7_microsoft_windows_shell_setupoobeprotectyourpc) setting has changed.

## <span id="BKMK_LINKS"></span><span id="bkmk_links"></span>See also


The following table contains links to resources related to this scenario.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Content type</th>
<th align="left">References</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Planning</strong></p></td>
<td align="left"><p>[Windows Setup Scenarios and Best Practices](windows-setup-scenarios-and-best-practices.md) | [Windows Setup Automation Overview](windows-setup-automation-overview.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Deployment</strong></p></td>
<td align="left"><p>[Windows Setup Installation Process](windows-setup-installation-process.md) | [Windows 8.1 Upgrade Scenarios for OEMs](windows-81-upgrade-scenarios-for-oems.md) | [Boot from a DVD](boot-from-a-dvd.md) | [Install Windows from a USB Flash Drive](install_windows_from_a_usb_flash_drive_blue.md) | [Deploy a Custom Image](deploy-a-custom-image.md) | [WinPE: Create USB Bootable drive](winpe-create-usb-bootable-drive.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Operations</strong></p></td>
<td align="left"><p>[Automate Windows Setup](automate_windows_setup_blue.md) | [Use a Configuration Set with Windows Setup](use-a-configuration-set-with-windows-setup.md)| [Add Device Drivers to Windows During Windows Setup](add-device-drivers-to-windows-during-windows-setup.md) | [Add a Custom Script to Windows Setup](add-a-custom-script-to-windows-setup.md) | [Multilingual Windows Image Creation](multilingual_windows_image_creation_blue.md) | [Boot Windows to Audit Mode or OOBE](boot-windows-to-audit-mode-or-oobe.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Tools and settings</strong></p></td>
<td align="left"><p>[Windows Setup Command-Line Options](windows_setup_command_line_options.md) | [Windows Setup Supported Platforms and Cross-Platform Deployments](windows-setup-supported-platforms-and-cross-platform-deployments.md) | [Windows Setup States](windows-setup-states.md) | [Windows Setup Edition Configuration and Product ID Files (EI.cfg and PID.txt)](windows-setup-edition-configuration-and-product-id-files--eicfg-and-pidtxt.md) | [Windows Setup Log Files and Event Logs](windows-setup-log-files-and-event-logs.md) | [Windows Setup Configuration Passes](windows-setup-configuration-passes.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Related technologies</strong></p></td>
<td align="left"><p>[Windows System Image Manager Technical Reference](p_wsim.windows_system_image_manager_technical_reference__win8) | [Unattended Windows Setup Reference](http://go.microsoft.com/fwlink/?LinkId=206281) | [Sysprep (System Preparation) Overview](sysprep__system_preparation__overview_blue.md) | [WinPE for Windows 10](winpe-intro.md)</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Windows%20Setup%20Technical%20Reference%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




