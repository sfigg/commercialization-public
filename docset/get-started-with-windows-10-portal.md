---
title: Get started with Windows 10
description: Build innovative and differentiated devices with Windows 10.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e9ebd4e2-f05e-40fb-9dc3-925f96dce182
---

# Get started with Windows 10


Build innovative and differentiated devices with Windows 10. Windows 10 runs on a broad set of devices—from desktops, notebooks, phones, and Internet of Things (IoT) devices. The operating system's common core works across platforms with 80-inch screens, 4-inch screens, or devices with no screens at all.

You can create devices to use touch/pen, mouse/keyboard, controller/gesture—or you can build them to switch between input types.

## Start here


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong><em>I'm new to this!</em></strong></td>
<td><strong><em>I'm back!</em></strong></td>
</tr>
<tr class="even">
<td><p>Learn about the different kits used to build Windows devices.</p>
<p>[Get familiar with the kits and tools](p_getstarted.kit_and_tools_overview)</p>
<p>Download each of the kits here:</p>
<ul>
<li>[Windows Driver Kit (WDK) 10](https://go.microsoft.com/fwlink/p/?LinkId=733614)</li>
<li>[Windows Hardware Lab Kit (HLK) for Windows 10](https://go.microsoft.com/fwlink/p/?LinkId=733613)</li>
<li>[Windows Assessment and Deployment Kit (ADK) for Windows 10](https://go.microsoft.com/fwlink/p/?LinkId=733615)</li>
</ul></td>
<td><p>Welcome back! Here's what's new in:</p>
<ul>
<li>[... Windows 10](p_getstarted.what_s_new_in_windows_threshold)</li>
<li>[... kits and tools](p_getstarted.what_s_new_in_kits_and_tools)</li>
<li>[... driver development](p_getstarted.what_s_new_in_driver_development)</li>
<li>[... customizations](p_changehistory.change_history_for_customize)</li>
<li>[... manufacturing](https://msdn.microsoft.com/windows/hardware/commercialize/manufacture/whats-new-in-manufacturing)</li>
<li>[... unattend settings](p_unattend.changed_answer_file_settings_from_windows_8_1#newwindowssettings)</li>
<li>[... Windows Performance Toolkit](p_wpt.whats_new_in_the_windows_performance_toolkit)</li>
<li>[... Windows PE](p_adk_online.whats_new_in_windows_pe_s14)</li>
</ul></td>
</tr>
</tbody>
</table>

 

## <a href="" id="start-the-hardware-development-process-with-these-learning-resources-"></a>Start the hardware development process with these learning resources


You can optimize your hardware for Windows 10 during any phase of the development process. These step-by-step guides walk you through using development boards, building Universal Windows drivers for a variety of devices, and making sure your hardware components, peripherals, and technologies are compatible with Windows 10.

### Design hardware with the latest features

From Cortana to Continuum to the core architecture, this release includes tons of new platform features and improvements to help you create compelling user experiences on any form factor.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Continuum switches in and out of &quot;tablet mode&quot;, adapting and optimizing apps and the Windows shell based on the physical form factor and customer's preferences.</p>
<p>[Read more about implementing Continuum](p_weg_hardware.continuum)</p></td>
<td><p>Cortana, the personal assistant technology introduced on Windows Phone 8.1, is now supported on all Windows 10 devices. Learn device recommendations and test setup in these articles.</p>
<p>[Read more about including Cortana](p_weg_hardware.cortana)</p></td>
<td><p>Windows Hello allows users to securely logon to a device using a biometric device like a fingerprint reader or an IR camera.</p>
<p>[Learn more about biometric requirements for Windows Hello](p_weg_hardware.biometric_requirements)</p></td>
</tr>
</tbody>
</table>

 

### Develop Windows Universal Drivers

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Learn fundamental concepts about drivers.</p>
<p>[Get started with Windows drivers](wdkgetstart.getting_started_with_windows_drivers)</p></td>
<td><p>Build a universal sensor driver based on the Sharks Cove dev board. Learn how to load a Windows 10 image and provision these boards for driver deployment, debugging, and testing.</p>
<p>[Work with the Sharks Cove hardware development board](wdkgetstart.sharks_cove_hardware_development_board)</p></td>
<td><p>Create a single driver that runs across multiple different device types, from embedded systems to tablets and desktop PCs. UMDF and KMDF templates are included in Visual Studio to help you get started.</p>
<p>[Get started with Universal Windows drivers](http://go.microsoft.com/fwlink/p/?LinkId=526095)</p></td>
</tr>
</tbody>
</table>

 

### Customize Windows images to reflect your brand

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Create provisioning packages that can gather your settings, languages, drivers, and apply them all at once to a new device with Windows Imaging and Configuration Designer (ICD).</p>
<p>OEMs can apply the packages to new devices. Enterprises can apply them to devices that employees bring from home to quickly configure them to use the corporate network.</p>
<p>[Get started with Windows ICD](p_icd.getting_started_with_the_imaging_configuration_and_designer_tool)</p></td>
<td><p>For desktop PCs, you can use your existing settings file (Unattend.xml) to add settings during Windows installation.</p>
<p>[Build a Windows Setup unattend file](https://msdn.microsoft.com/windows/hardware/commercialize/manufacture/desktop/update-windows-settings-and-scripts-create-your-own-answer-file-sxs)</p></td>
</tr>
</tbody>
</table>

 

### Test system components for compatibility and performance

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Write and run test automations with the Test Authoring and Execution Framework (TAEF). Share your tests across disciplines and teams.</p>
<p>[Get started with the Test Authoring and Execution Framework (TAEF)](taef.getting_started)</p></td>
<td><p>Test your hardware with the Windows Hardware Lab Kit.</p>
<p>[Get started with the Windows Hardware Lab Kit](p_sxs_hlk.windows_hlk_getting_started)</p></td>
<td><p>Analyze system and application performance using the Windows Performance Toolkit.</p>
<p>[Get started with the Windows Performance step-by-step guides](p_wpt.windows_performance_step-by-step_guides)</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="manufacturing---putting-it-all-together"></a>Manufacturing – putting it all together

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>For desktop PCs, learn strategies to build set of images for specific markets to meet different customers' needs. Apply classic and modern Windows apps, drivers, languages, and other customizations, and mix and match your customizations as new Windows editions are released through automated scripts or a familiar Windows interface.</p>
<p>[Build and deploy desktop devices](p_sxs_dmfg.oem_windows_deployment_and_imaging_walkthrough_blue)</p></td>
<td><p>Build IoT Core devices, applying apps, drivers, and settings to new devices.</p>
<p>[Build and deploy IoT Core devices](https://msdn.microsoft.com/windows/hardware/commercialize/manufacture/iot/iot-core-manufacturing-guide)</p></td>
<td><p>OEMs and ODMs can build and test mobile devices and drivers.</p>
<p>[Build and deploy phones](https://msdn.microsoft.com/windows/hardware/commercialize/manufacture/mobile/mobile-deployment-and-imaging)</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bwdknodes\wdknodes%5D:%20Get%20started%20with%20Windows%C2%A010%20%20RELEASE:%20%286/20/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




