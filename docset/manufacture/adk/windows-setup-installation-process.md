---
Description: Windows Setup Installation Process
MS-HAID: 'p\_adk\_online.windows\_setup\_installation\_process'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Windows Setup Installation Process
---

# Windows Setup Installation Process


Windows® Setup is the program that installs Windows or upgrades an existing Windows installation. It is also the basis for the following installation and upgrade methods:

-   Interactive Setup

-   Automated installation

-   Windows Deployment Services

In this topic:

-   [Windows Setup Installation Types](#installationtypes)

-   [Windows Setup Process](#windowssetupprocess)

## <span id="InstallationTypes"></span><span id="installationtypes"></span><span id="INSTALLATIONTYPES"></span> Windows Setup Installation Types


Windows Setup can perform both clean and upgrade installations. However, it does not perform computer-to-computer migrations. Instead, you must use Windows Easy Transfer, the User State Migration Tool (USMT), or another migration tool to move data from a previous installation to the new operating system.

-   **Custom installations.** Windows Setup can perform a custom installation, also known as a clean installation, which saves your previous Windows installation but does not migrate your settings. The previous Windows installation will not boot after a clean installation.

-   **Upgrade installations.** Windows Setup can perform an installation that retains your settings and preferences while upgrading your operating system.

## <span id="WindowsSetupProcess"></span><span id="windowssetupprocess"></span><span id="WINDOWSSETUPPROCESS"></span> Windows Setup Process


The Windows Setup program starts and restarts the computer, gathers information, copies files, and creates or adjusts configuration settings. The following table shows the overall process for Windows Setup:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Windows Setup phase</th>
<th align="left">Setup actions</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Downlevel</strong> (for custom installations and upgrades)</p>
<p>- or -</p>
<p><strong>Windows PE</strong> (for booting the Windows DVD or booting a custom Windows PE image)</p></td>
<td align="left"><ol>
<li><p>Specify Windows Setup configurations by using either the Windows Setup dialog boxes (interactive) or an answer file (unattended), or a combination of the two. Windows Setup configurations include adding a product key and configuring a disk.</p></li>
<li><p>Apply answer file settings in the [windowsPE](windowspe.md) configuration pass to configure the installation behavior and user experience.</p></li>
<li><p>Configure the disk.</p></li>
<li><p>Copy the Windows image to the disk.</p></li>
<li><p>Prepare boot information.</p></li>
<li><p>Process answer file settings in the [offlineServicing](p_adk_online.offlineservicing_win8) configuration pass. The settings are applied to the Windows image before that Windows image boots. When the computer first boots, any optional components, drivers, updates, or language packs are processed.</p></li>
</ol></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Online configuration</strong></p></td>
<td align="left"><p>Create specific configurations, making the Windows installation unique.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Windows Welcome</strong></p></td>
<td align="left"><ol>
<li><p>Apply answer file settings in the [oobeSystem](p_adk_online.oobesystem_win8) configuration pass.</p></li>
<li><p>Apply content file settings from the Oobe.xml file.</p></li>
<li><p>Start Windows Welcome.</p></li>
</ol></td>
</tr>
</tbody>
</table>

 

## <span id="related_topics"></span>Related topics


[Windows Setup Technical Reference](windows-setup-technical-reference.md)

[Automate Windows Setup](automate-windows-setup.md)

[Settings for Automating OOBE](p_adk_online.settings_for_automating_oobe_win8)

[Windows Setup Scenarios and Best Practices](windows-setup-scenarios-and-best-practices.md)

[Windows Setup Automation Overview](p_adk_online.windows_setup_automation_overview_win8)

[Audit Mode Overview](p_adk_online.audit_mode_overview_win8)

[Windows Setup Configuration Passes](p_adk_online.windows_setup_configuration_passes_win8)

[Windows Setup Supported Platforms and Cross-Platform Deployments](windows-setup-supported-platforms-and-cross-platform-deployments.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Windows%20Setup%20Installation%20Process%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




