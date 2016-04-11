---
Description: Windows Setup Scenarios and Best Practices
MS-HAID: 'p\_adk\_online.windows\_setup\_scenarios\_and\_best\_practices'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Windows Setup Scenarios and Best Practices
---

# Windows Setup Scenarios and Best Practices


Windows® Setup installs the Windows operating system. Windows Setup uses a technology called Image-based Setup (IBS) that provides a single, unified process with which all customers can install Windows. IBS performs clean installations and upgrades of Windows and is used in both client and server installations. Windows Setup also enables you to customize Windows during installation by using Setup answer file settings.

In this topic:

-   [Common Usage Scenarios](#commoninstallationscenarios)

-   [Windows Setup Best Practices](#bestpractices)

-   [Windows Setup Limitations](#limitations)

## <span id="CommonInstallationScenarios"></span><span id="commoninstallationscenarios"></span><span id="COMMONINSTALLATIONSCENARIOS"></span>Common Usage Scenarios


Common installation scenarios include performing clean installations, upgrades, and unattended installations.

### <span id="Custom_Installations"></span><span id="custom_installations"></span><span id="CUSTOM_INSTALLATIONS"></span>Custom Installations

The most common scenario for Windows Setup is performing a custom installation. In this scenario, you install Windows onto a computer that does not have an operating system, or has a previous version of Windows. This scenario consists of the following stages:

1.  Run Setup.exe from your Windows product DVD or network share.

2.  Select the **Custom** installation type.

3.  If you are installing from a previous installation of Windows, Windows Setup creates a local boot directory and copies all of the required Windows Setup files to this directory.

4.  Windows Setup reboots, installs and configures Windows components, and, after installation is complete, launches Windows Welcome.

Custom installations do not migrate any settings or preferences from previously installed versions of Windows. Files from previous Windows versions are copied to a \\Windows.old directory. All data from the Windows installation including the Users, Program Files, and Windows directories are saved to this directory.

### <span id="Upgrades"></span><span id="upgrades"></span><span id="UPGRADES"></span>Upgrades

Windows Setup can also perform upgrades from a supported operating system.

This scenario includes the following stages:

1.  Run Setup.exe on the previous version of Windows.

2.  Select the **Upgrade** installation type. Windows Setup upgrades the system and protects your files, settings, and preferences during the installation process.

3.  Windows Setup reboots and restores your protected files, settings, and preferences. Windows Setup then launches Windows Welcome.

**Note**  
Upgrades are used to upgrade a single computer to Windows 8. Upgrades also support migrating user data to a new system.

 

### <span id="Automated_Installations"></span><span id="automated_installations"></span><span id="AUTOMATED_INSTALLATIONS"></span>Automated Installations

Automated installations enable you to customize a Windows installation and remove the need for a user to interact with Windows Setup. By using Windows System Image Manager (Windows SIM) or the Component Platform Interface (CPI) APIs, you can create one or more customized Windows installations that can then be deployed across many different hardware configurations.

The automated installation, also called an unattended installation, scenario includes the following stages:

1.  Use Windows SIM or the CPI APIs to create an unattended installation answer file, typically called Unattend.xml. This answer file contains all of the settings that you configure in the Windows image. For more information, see [Windows System Image Manager How-to Topics](p_wsim.windows_system_image_manager_how_to_topics_win8).

2.  From Windows PE, a previous version of Windows, or another preinstallation environment, run Setup.exe with the explicit path to the answer file. If you do not include the path to the answer file, Setup.exe searches for a valid answer file in several specific locations. For more information, see [Windows Setup Command-Line Options](p_adk_online.windows_setup_command_line_options_win8).

3.  Windows Setup then installs the operating system and configures all settings listed in the answer file. Additional applications, device drivers, and updates can also be installed during Windows Setup. After the operating system is installed, Setup launches Windows Welcome.

## <span id="BestPractices"></span><span id="bestpractices"></span><span id="BESTPRACTICES"></span> Windows Setup Best Practices


The following section describes some of the best practices to use with Windows Setup.

-   **Verify that there is sufficient space for Windows Setup temporary files.** If you run setup from a previous version of Windows, verify that there is sufficient space on the disk for temporary Windows Setup files. The space that is required may vary, but it can be up to 500 megabytes (MB).

-   **Previous Windows installations are moved to a Windows.old folder.** As a best practice, you should back up your data before you upgrade. If you install Windows over a previous Windows installation, all previous Windows files and directories are moved to a Windows.old folder, including the contents of the Users, Program Files, and Windows directories. You can access your data in the Windows.old folder after Windows Setup completes. If you have additional folders not in the Users, Program Files, or Windows directories, those folders are not moved. For example, if you have a folder that is named C:\\Drivers, that folder will not be moved to the Windows.old folder.

-   **Review the Windows Setup log files.** If you experience problems during Windows Setup, review the log files in %WINDIR%\\panther. You will be able to identify and troubleshoot many issues by reviewing the installation log files. For more information, see [Deployment Troubleshooting and Log Files](p_adk_online.deployment_troubleshooting_and_log_files_win8) and [Windows Setup Log Files and Event Logs](p_adk_online.windows_setup_log_files_and_event_logs_win8).

## <span id="Limitations"></span><span id="limitations"></span><span id="LIMITATIONS"></span> Windows Setup Limitations


The following sections describe some of the limitations of Windows Setup. Review this section before you run Windows Setup.

-   **Enable UEFI-compatibility mode to install to an UEFI-based computer**. On some UEFI computers, you cannot install Windows in BIOS-compatibility mode. You may need to switch to UEFI-compatibility mode.

-   **Applications might require a consistent drive letter.** If you install custom applications to your Windows image, we recommend that you install Windows to the same drive letter on the destination computer because some applications require a consistent drive letter. Uninstallation, servicing, and repair scenarios might not function appropriately if the drive letter of the system does not match the drive letter specified in the application. This limitation applies to both the Deployment Image Servicing and Management (DISM) tool and Windows Setup.

-   **Deploying multiple images to multiple partitions.** If you capture and deploy multiple images on multiple partitions, the following requirements must be fulfilled:

    -   The partition structure, bus location, and number of disks must be identical on the reference and destination computers.

    -   The partition types (primary, extended, or logical) must match. The active partition on the reference computer must match that of the destination computer.

-   **Installing Custom .wim files requires a description value in the .wim file.** When you create a custom .wim file, Windows Setup requires that you always include a description value. If a .wim file does not include a description value, the image may not install correctly. You can provide a description value when you use the **dism** command with the **/capture-image** option. If you install a .wim file that does not have a description value, recapture the image and provide a valid description value. For more information, see the [DISM - Deployment Image Servicing and Management Technical Reference for Windows](p_adk_online.dism___deployment_image_servicing_and_management_technical_reference_for_windows_win8).

**Note**  
For Windows® Preinstallation Environment (Windows PE), the version of boot files must match the computer architecture. An x64 UEFI computer can only boot by using Windows PE x64 boot files. An x86 computer can only boot by using Windows PE x86 boot files. This is different from legacy BIOS. In legacy BIOS, an x64 computer can boot by using x86 boot files.

 

## <span id="related_topics"></span>Related topics


[Windows Setup Installation Process](p_adk_online.windows_setup_installation_process_win8)

[Windows Setup Automation Overview](p_adk_online.windows_setup_automation_overview_win8)

[Audit Mode Overview](p_adk_online.audit_mode_overview_win8)

[Windows Setup Configuration Passes](p_adk_online.windows_setup_configuration_passes_win8)

[Windows Setup Supported Platforms and Cross-Platform Deployments](windows-setup-supported-platforms-and-cross-platform-deployments.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Windows%20Setup%20Scenarios%20and%20Best%20Practices%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




