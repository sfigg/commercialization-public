---
title: What's new in kits and tools
description: What's new in kits and tools
Search.SourceType: Video
ms.assetid: EE27ABF7-C197-4E8E-AC1B-77266E2B9FD9
---

# What's new in kits and tools


The Windows 10 kits and tools include an updated Windows Driver Kit (WDK), Hardware Lab Kit (HLK), Software Development Kit (SDK), and Assessment and Deployment Kit (ADK).

Here's a summary of what's new in the kits and tools.

## <a href="" id="adk"></a>What’s new in the Windows ADK


The Windows ADK now includes [Windows Imaging and Configuration Designer](p_icd.icd_portal), the [Windows Assessment Toolkit](p_assessments.windows_assessment_toolkit), the [Windows Performance Toolkit](p_wpt.windows_performance_toolkit), and several new and improved deployment tools that can help you automate a large-scale deployment of Windows 10.

### Windows Imaging and Configuration Designer (ICD)

-   Quickly create a provisioning package that you can use to customize devices without re-imaging.
-   Build a customized Windows 10 image for specific market segments and regions.

See [Getting started with Windows ICD](p_icd.getting_started_with_the_imaging_configuration_and_designer_tool) for more information.

### Push-button reset incorporates system updates by default

Users can now refresh or restore their PCs to the updated version of the system files, instead of having to reinstall each update individually.

### Partial language packs now available

Want to add more languages for users when they turn on their device? Instead of adding full language packs, save space by adding just the base user interface files for a language. Later, if your user needs handwriting or voice recognition capabilities, Windows can download them as needed.

For more information, see [Language Packs (lp.cab)](p_adk_online.language_packs__lpcab__and_windows_deployment).

### New package type: Capabilities

This new Windows package type lets you request services like Microsoft .NET or languages without specifying the version. Use the DISM tool to search multiple sources like Windows Update or your corporate servers to find and install the latest version.

### Save space by running Windows from compressed OS files

You can now run Windows directly from compressed files. This is similar to WIMBoot, introduced in Windows 8.1 Update 1. This new process uses individual files instead of a static WIM file. When updating system files, Windows now replaces the old files instead of keeping both copies.

### Windows Performance Analyzer Sharing and Collaboration

Developers can package and share their trace in a zip file along with their trace session, annotations, and (optionally) loaded symbols with Windows Performance Analyzer.

See [What's New in the Windows Performance Toolkit](p_wpt.whats_new_in_the_windows_performance_toolkit) for more information.

### Windows Performance Recorder Query Providers

Windows Performance Recorder now supports querying providers. ProcessExeFilter is an optional attribute, allows providers to filter specific processes by their corresponding executable name.

See [What's New in the Windows Performance Toolkit](p_wpt.whats_new_in_the_windows_performance_toolkit) for more information.

## <a href="" id="hlk"></a>What's new in the Hardware Lab Kit (HLK)


### What's new in this release

### Support for Mobile testing

Mobile devices running Test and Health images are now supported for testing with the HLK. For more information, see [HLK Proxy Client Getting Started Guide](p_sxs_hlk.hlk_proxy_client_getting_started_guide).

### SQL Server 2012 Express SP2

The HLK setup process now installs SQL Server 2012 Express SP2 if no other SQL installation is present on the controller at the time of installation.

### What's new in previous releases

### Scenario Testing

Test levels have been replaced by Development Phases to better align with the hardware and system development cycle. Tests are organized by their applicability during Bring Up, Development and Integration, Reliability, and Tuning and Validation.

### Playlists

Playlists describe a collection of tests and can be created from the HLK Studio and [Object Model](p_hlk_om.microsoftwindowskitshardwareobjectmodel) to define custom test passes.

<iframe src="https://hubs-video.ssl.catalog.video.msn.com/embed/afc1a262-6147-448f-910c-dbb1bcb18d07/IA?csid=ux-en-us&MsnPlayerLeadsWith=html&PlaybackMode=Inline&MsnPlayerDisplayShareBar=false&MsnPlayerDisplayInfoButton=false&iframe=true&QualityOverride=HD" width="720" height="405" allowFullScreen="true" frameBorder="0" scrolling="no"></iframe>

Learn more about playlists in the [Getting Started Guide](p_sxs_hlk.step_6_select_and_run_tests).

### Windows Hardware Compatibility Program

Hardware certification is no longer required. Instead, the Windows Hardware Compatibility Program is an optional program in which you can participate. For more information, see [Windows Hardware Compatibility Program](p_hlk.windows_hardware_compatibility_program_overview).

-   Compatibility Playlist - Levels are no longer used to identify tests required for the Compatibility Program. To create a Compatibility Program test pass, download the official [Hardware Compatibility Program Playlist](https://sysdev.microsoft.com/en-US/Hardware/compatibilityplaylists/) and apply to your HLK project.
-   [Windows Hardware Certification blog](http://blogs.msdn.com/b/windows_hardware_certification) –This blog provides up-to-date news about the Windows Compatibility Program. Including Compatibility Playlist update announcements.

### OS Support

The Hardware Lab Kit supports Windows 10 testing only. Use the Hardware Certification Kit for testing downlevel operating systems.

### Merge .hckx Packages

To support unified driver submissions, results from HCK and HLK projects can be merged together using HLK Studio. When merging, open the HLK project or package first, and then merge in the HCK package(s).

### Virtual machine support

The HLK Controller now supports installation and execution in a virtual machine. When configuring your virtual machines, ensure the virtual machine meets the [minimum requirements](p_sxs_hlk.windows_hlk_prerequisites) for the HLK Controller.

### Partial packaging

You can now package a subset of test results within an HLK project, tailoring the packaging experience to key scenarios. This allows you to capture, share, and diagnose test failures without having to run tests individually in a new project.

To use this feature, select one or more tests from the **Test** tab, right-click the selection, and choose **Create Partial Package of Highlighted Tests**. Note that this package will be saved as a partial package (.hlkp). This extension will be deprecated in future HLK releases.

### Rate this Test

You can now provide feedback on tests in the HLK. To rate tests, you must opt-in to CEIP. To rate a test, right-click on the desired test in the Results Pane, and select Rate This Test.

### Preview pane

The **Preview pane** in File Explorer provides project and package information including Name, Creation Date, Targets, and Type.

To use the Preview pane in File Explorer, choose the **View** menu group, and then choose **Preview pane**. You can then choose any .hlkx file to view details of the package.

### Server support

The HLK Controller can now be installed on Windows Server 2012 R2.

### 64-bit SQL

The HLK now supports 64-bit SQL editions exclusively. Previously, the HCK supported only 32-bit SQL editions exclusively.

### Enterprise Windows Driver Kit

As an alternative to running the WDK and SDK installation wizards separately on each computer, you can now use the Enterprise Windows Driver Kit to deploy the WDK and the SDK more quickly within an organization that has more than just a few developers.

## Related topics


[Kits and tools overview](kit-and-tools-overview.md)

[What's new in driver development](what-s-new-in-driver-development.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_getstarted\p_getstarted%5D:%20What's%20new%20in%20kits%20and%20tools%20%20RELEASE:%20%286/15/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





