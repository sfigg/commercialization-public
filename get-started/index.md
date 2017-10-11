---
title: Get started with Windows 10
description: Build innovative and differentiated devices with Windows 10.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e9ebd4e2-f05e-40fb-9dc3-925f96dce182
ms.author: alhopper
ms.date: 10/17/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Get started with Windows 10

Build innovative and differentiated devices with Windows 10. Windows 10 runs on a broad set of devices—from desktops, notebooks, phones, and Internet of Things (IoT) devices. The operating system's common core works across platforms with 80-inch screens, 4-inch screens, or devices with no screens at all.

You can create devices to use touch/pen, mouse/keyboard, controller/gesture—or you can build them to switch between input types.

## Start building Windows 10 devices

| **I want to build a Windows PC**                          | **I want to build drivers for my Windows device**         |
|:----------------------------------------------------------|:----------------------------------------------------------|
| [Download the Windows ADK](adk-install.md) to start building Windows PCs   | [Download the WDK](https://developer.microsoft.com/en-us/windows/hardware/windows-driver-kit) to start building drivers               |
| [What's new in Windows 10](what-s-new-in-windows.md)      | [What's new in driver development](https://docs.microsoft.com/en-us/windows-hardware/drivers/what-s-new-in-driver-development)                      |
| [Design your deployment](https://docs.microsoft.com/en-us/windows-hardware/design/) | [Develop Universal Windows Drivers](https://docs.microsoft.com/en-us/windows-hardware/drivers/develop/getting-started-with-universal-drivers) |
| [Customize your Windows PC](https://docs.microsoft.com/en-us/windows-hardware/customize/) | [Sign drivers](https://docs.microsoft.com/en-us/windows-hardware/drivers/install/driver-signing) |
| [Create an end-to-end deployment](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/oem-windows-deployment-and-imaging-walkthrough) | [Test drivers](https://docs.microsoft.com/en-us/windows-hardware/drivers/develop/testing-a-driver) |

> [!Tip]
> See [Kits and tools overview](kits-and-tools-overview.md) to learn how our kits and tools enable you to work with Windows.

## Design hardware with the latest features

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
<p>[Read more about implementing tablet mode](https://docs.microsoft.com/en-us/windows-hardware/design/device-experiences/continuum)</p></td>
<td><p>Cortana, the personal assistant technology introduced on Windows Phone 8.1, is now supported on all Windows 10 devices. Learn device recommendations and test setup in these articles.</p>
<p>[Read more about including Cortana](https://docs.microsoft.com/en-us/windows-hardware/design/device-experiences/cortana)</p></td>
<td><p>Windows Hello allows users to securely logon to a device using a biometric device like a fingerprint reader or an IR camera.</p>
<p>[Learn more about biometric requirements for Windows Hello](https://docs.microsoft.com/en-us/windows-hardware/design/device-experiences/windows-hello-biometric-requirements)</p></td>
</tr>
</tbody>
</table>

## Develop Universal Windows Drivers

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Learn fundamental concepts about drivers.</p>
<p>[Get started with Windows drivers](https://docs.microsoft.com/en-us/windows-hardware/drivers/gettingstarted/index)</p></td>
<td><p>Build a universal sensor driver based on the Sharks Cove dev board. Learn how to load a Windows 10 image and provision these boards for driver deployment, debugging, and testing.</p>
<p>[Work with the Sharks Cove hardware development board](https://docs.microsoft.com/en-us/windows-hardware/drivers/gettingstarted/sharks-cove-hardware-development-board)</p></td>
<td><p>Create a single driver that runs across multiple device types, from embedded systems to tablets and desktop PCs. UMDF and KMDF templates are included in Visual Studio to help you get started.</p>
<p>[Get started with Universal Windows drivers](https://docs.microsoft.com/en-us/windows-hardware/drivers/develop/getting-started-with-universal-drivers)</p></td>
</tr>
</tbody>
</table>

## Customize Windows images to reflect your brand

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>For desktop PCs, you can use your existing settings file (Unattend.xml) to add settings during Windows installation.</p>
<p>[Build a Windows Setup unattend file](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/update-windows-settings-and-scripts-create-your-own-answer-file-sxs)</p></td>
</tr>
</tbody>
</table>

## Test system components for compatibility and performance

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Write and run test automations with the Test Authoring and Execution Framework (TAEF). Share your tests across disciplines and teams.</p>
<p>[Get started with the Test Authoring and Execution Framework (TAEF)](https://docs.microsoft.com/en-us/windows-hardware/drivers/taef/getting-started)</p></td>
<td><p>Test your hardware with the Windows Hardware Lab Kit.</p>
<p>[Get started with the Windows Hardware Lab Kit](https://docs.microsoft.com/en-us/windows-hardware/test/hlk/getstarted/windows-hlk-getting-started)</p></td>
<td><p>Analyze system and application performance using the Windows Performance Toolkit.</p>
<p>[Get started with the Windows Performance step-by-step guides](https://docs.microsoft.com/en-us/windows-hardware/test/wpt/windows-performance-step-by-step-guides)</p></td>
</tr>
</tbody>
</table>

## <a href="" id="manufacturing---putting-it-all-together"></a>Manufacturing – putting it all together

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>For desktop PCs, learn strategies to build a set of images for specific markets to meet different customers' needs. Apply classic and modern Windows apps, drivers, languages, and other customizations, and mix and match your customizations as new Windows editions are released through automated scripts or a familiar Windows interface.</p>
<p>[Build and deploy desktop devices](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/oem-windows-deployment-and-imaging-walkthrough)</p></td>
<td><p>Learn about deploying Windows 10 S, a configuration of Windows 10 Pro that offers a familiar, productive Windows experience that’s streamlined for security and performance.</p>
<p>[Windows 10 S manufacturing overview](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/windows-10-s-overview)</p>
</td>
<td><p>Build IoT Core devices, applying apps, drivers, and settings to new devices.</p>
<p>[Build and deploy IoT Core devices](https://docs.microsoft.com/en-us/windows-hardware/manufacture/iot/iot-core-manufacturing-guide)</p></td>
<td><p>OEMs and ODMs can build and test mobile devices and drivers.</p>
<p>[Build and deploy phones](https://docs.microsoft.com/en-us/windows-hardware/manufacture/mobile/mobile-deployment-and-imaging)</p></td>
</tr>
</tbody>
</table>
