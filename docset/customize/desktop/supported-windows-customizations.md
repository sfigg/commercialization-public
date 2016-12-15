---
title: Supported Windows customizations
description: Windows 10 supports the following customizations
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 15A96784-EBE8-4E94-A7D2-F7D99099638D
---

# Supported Windows customizations


Windows 10 supports the following customizations:

-   [Customization assets](#customization-assets)
-   [Configuration settings](#configuration-settings)

## Customization assets


Customization assets are imaging collaterals that partners can add to a base Windows image to generate a model or master image for a model device.

### Desktop imaging

Microsoft-provided Windows desktop images are in Windows image (WIM) containers. Partners can customize the WIM images offline by using DISM as an offline servicing of a Windows image, or by using Windows Setup during the offline phase of Windows deployment. Partners can add customization assets to a desktop image directly in their existing formats. The assets are normally collected from various sources and placed in a repository as a pre-requisite of the offline image customization process.

The following table lists the supported asset types for desktop imaging.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Asset type</th>
<th>File type</th>
<th>Description</th>
<th>Examples</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Application</p></td>
<td><p>.appx</p>
<p>.appxbundle</p></td>
<td><p>The .appx or .appxbundle package along with the dependency packages, license file, and optional custom data file can be provisioned in a desktop image. These assets are configured for each user at first logon.</p></td>
<td><p>Microsoft.Windows.MyApp_8wekyb3d8bbwe.appxbundle</p></td>
</tr>
<tr class="even">
<td><p>Driver</p></td>
<td><p>.inf</p></td>
<td><p>An individual driver and its payload will be added to the driver store in a desktop image, and boot critical drivers will be reflected.</p></td>
<td><p>Igdlh.inf</p></td>
</tr>
<tr class="odd">
<td><p>Driver set</p></td>
<td><p>.inf</p></td>
<td><p>All driver INFs and their payloads in a specified folder will be added to the driver store in a desktop image. Boot critical drivers will be reflected.</p></td>
<td><p>Folder containing multiple driver INFs</p></td>
</tr>
<tr class="even">
<td><p>Language pack</p></td>
<td><p>.cab</p></td>
<td><p>In Windows 10, language packs are refactored so the size of packages are much smaller.</p></td>
<td><p>fr-fr.cab for French language in France</p></td>
</tr>
<tr class="odd">
<td><p>Features on demand package</p></td>
<td><p>.cab</p></td>
<td><p>Features on demand v2 packages, for example, language component packages or .NET, are optional features that can be added to a desktop image on demand.</p></td>
<td><p>Microsoft-Windows-LanguageFeatures-Speech-fr-fr-Package.cab</p></td>
</tr>
<tr class="even">
<td><p>Windows update package</p></td>
<td><p>.msu</p></td>
<td><p>KBs downloaded from Windows Update or Windows Server Update Services can be installed in a Windows desktop image to keep images up-to-date and secured.</p></td>
<td><p>Kb9342432.msu</p></td>
</tr>
<tr class="odd">
<td><p>Reference device data</p></td>
<td><p>.ppkg</p></td>
<td><p>Reference device data are Windows desktop application files and registry settings captured in a provisioning package by USMT ScanState command from a reference device. Instead of installing a Windows desktop application online on a device, you can install the app to a desktop image offline by importing the provisioning package that contains reference device data.</p></td>
<td><p>CustomData.ppkg</p></td>
</tr>
</tbody>
</table>

 

### Mobile imaging

While desktop imaging starts with hardware-agnostic OS images in WIM containers that can be customized offline, mobile imaging starts with OS packages in .zip files provided by Microsoft and board support packages (BSPs) provided by the silicon vendor. Partners use Microsoft-provided imaging tools to build device platform-specific full flash update (FFU) images that can be flashed through USB tethering to target devices.

FFU images are not offline customizable, and unlike Windows Setup, the sector-based USB flashing deployment does not have an offline phase where customization assets can be injected to the image. Hence, customization assets like drivers, language packs, and applications must be provided as feature packages wrapped in CAB (.spkg for Windows Phone 8.1, and .cab for Windows 10) container. You can add the feature packages to a mobile image at image build time by using feature manifest files and OEMInput files. For more information, see *Specifying packages to include in images by using feature manifest files* in [Building a phone image using ImgGen.cmd](p_phFlashing.building_a_phone_image_using_imggencmd).

Other than creating feature packages, customization with apps (.appx or .appxbundle packages) can also be done by using the **Applications** configuration support in Windows Imaging and Configuration Designer (ICD). For more information, see *To add an app* in [Configure customizations using Windows ICD](p_icd.customize_the_image_using_windows_icd).

## Configuration settings


Each Windows OS component can have a set of configuration settings defined in manifest XML files. The manifest XML file defines the hierarchical XML structure of the settings mapping into the registry hive of an OS image. Microsoft uses the XML schema to define policies, customizable values, and the default value of a setting. The XML schema also allows for the definition of asset payloads associated with a setting. The definition is also used to specify the source location of the asset payload, and where to install/configure the asset payloads in an OS image. The asset payloads can be files like maps, retail demos, wallpapers, ringtones, OEM logos, or apps.

Based on the manifest XML definitions, partners can author answer files to customize a Windows image. The customization answer files can be applied to a Windows image through Microsoft provided tools at either Windows imaging time or device provisioning time.

### Settings categories

Settings are grouped based on the time the configuration settings are applied to a Windows image. These categories are:

-   **Image time or build time settings** – These settings are applied to a Windows image while the image is offline, which can be during offline image customization process or during the image build process. Examples of these settings include touch `CapButtons` settings or tablet PC platform settings.

-   **Deployment time settings** – These settings are applied by Windows Setup during deployment of a Windows image. Since Windows Setup is only used for deploying Windows desktop images, the category is applicable to desktop image configuration settings. The settings can be defined with configuration passes, so that they are processed at the defined Windows Setup pass during Window image deployment. For example, `AutoLogon` settings can be defined with generalize or with oobeSystem configuration pass.

-   **Runtime settings** – These settings can be applied to a running OS on a Windows device, or after Windows image installation is completed and has reached to the desktop on a device. The settings can be defined with variant targets for supporting multivariant so that the device can be conditionally configuration based on selected region/locale. Examples of these settings include `DefaultAccentColor` or `DefaultBackgroundColor` for `Themes` settings.

For information about the Windows Provisioning settings that you can configure in Windows ICD, see [Windows Provisioning settings reference](p_icd_settings.windows_provisioning_settings_reference).

### Settings stores

For more information, see [Provisioning settings store](provisioning-settings-store.md).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_customize_converged\p_customize_converged%5D:%20Supported%20Windows%20customizations%20%20RELEASE:%20%2811/17/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




