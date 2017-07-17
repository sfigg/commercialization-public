---
title: microsoft-windows-setup-
description: microsoft-windows-setup-
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1a4a4656-9f87-478e-b905-dd91c40562b5
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# microsoft-windows-setup-


The microsoft-windows-setup- component contains settings that enable you to select the Windows image that you install, configure the disk that you install Windows to, and configure the Windows PE operating system.

Some of the settings in this component apply only to Windows PE, and some settings are applied to the installed Windows image. Each setting describes which operating system the setting applies to.

## In This Section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[ComplianceCheck](microsoft-windows-setup-compliancecheck.md)</p></td>
<td><p>Checks that the requirements for installing Windows are fulfilled so that the operating system can be installed.</p></td>
</tr>
<tr class="even">
<td><p>[Diagnostics](microsoft-windows-setup-diagnostics.md)</p></td>
<td><p>Specifies whether to send installation information to Microsoft.</p></td>
</tr>
<tr class="odd">
<td><p>[DiskConfiguration](microsoft-windows-setup-diskconfiguration.md)</p></td>
<td><p>Specifies the disk configurations to apply to a disk on the destination computer.</p></td>
</tr>
<tr class="even">
<td><p>[Display](microsoft-windows-setup-display.md)</p></td>
<td><p>Specifies display settings to apply to Windows PE.</p></td>
</tr>
<tr class="odd">
<td><p>[DynamicUpdate](microsoft-windows-setup-dynamicupdate.md)</p></td>
<td><p>Specifies whether to enable dynamic updates.</p></td>
</tr>
<tr class="even">
<td><p>[EnableFirewall](microsoft-windows-setup-enablefirewall.md)</p></td>
<td><p>Specifies whether to enable Windows Firewall for Windows PE.</p></td>
</tr>
<tr class="odd">
<td><p>[EnableNetwork](microsoft-windows-setup-enablenetwork.md)</p></td>
<td><p>Specifies whether a network connection is enabled.</p></td>
</tr>
<tr class="even">
<td><p>[ImageInstall](microsoft-windows-setup-imageinstall.md)</p></td>
<td><p>Specifies the Windows image to install.</p></td>
</tr>
<tr class="odd">
<td><p>[LogPath](microsoft-windows-setup-logpath.md)</p></td>
<td><p>Specifies the path used for log files during Windows PE.</p></td>
</tr>
<tr class="even">
<td><p>[PageFile](microsoft-windows-setup-pagefile.md)</p></td>
<td><p>Specifies the size and the location of the page file used during Windows PE.</p></td>
</tr>
<tr class="odd">
<td><p>[Restart](microsoft-windows-setup-restart.md)</p></td>
<td><p>Specifies whether to restart or shut down the computer after Windows PE completes.</p></td>
</tr>
<tr class="even">
<td><p>[RunAsynchronous](microsoft-windows-setup-runasynchronous.md)</p></td>
<td><p>Specifies commands to run asynchronously after Windows PE starts.</p></td>
</tr>
<tr class="odd">
<td><p>[RunSynchronous](microsoft-windows-setup-runsynchronous.md)</p></td>
<td><p>Specifies commands to run synchronously after Windows PE starts.</p></td>
</tr>
<tr class="even">
<td><p>[UpgradeData](microsoft-windows-setup-upgradedata.md)</p></td>
<td><p>Specifies whether the installation is an upgrade of an existing operating system.</p></td>
</tr>
<tr class="odd">
<td><p>[UseConfigurationSet](microsoft-windows-setup-useconfigurationset.md)</p></td>
<td><p>Specifies that a configuration set is used.</p></td>
</tr>
<tr class="even">
<td><p>[UserData](microsoft-windows-setup-userdata.md)</p></td>
<td><p>Specifies user data, such as the user name and the product key to apply to the Windows installation.</p></td>
</tr>
<tr class="odd">
<td><p>[WindowsDeploymentServices](microsoft-windows-setup-windowsdeploymentservices.md)</p></td>
<td><p>Specifies settings for Windows Deployment Services, a management tool designed to facilitate deployment with a limited number of settings.</p></td>
</tr>
</tbody>
</table>

 

## Applies To


To determine whether a component applies to the image you’re building, load your image into Windows SIM and search for the component or setting name. For information on how to view components and settings, see [Configure Components and Settings in an Answer File](https://msdn.microsoft.com/library/windows/hardware/dn915078).v

## Related topics


[Components](components-b-unattend.md)

 

 







