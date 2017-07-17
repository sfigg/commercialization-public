---
title: UnattendEnableRetailDemo
description: Use UnattendEnableRetailDemo to enable retail demo mode on the device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1F546709-3662-4E15-8BD5-CF80E1761766
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# UnattendEnableRetailDemo


Use `UnattendEnableRetailDemo` to enable retail demo mode on the device. Retail demo mode is a special retail mode that can be activated in retail stores to run a demo on the device. The demo highlights key features of the OS and shows off the device user experience.

When `UnattendEnableRetailDemo` is used in combination with other Unattend settings for language, region, keyboard, and EULA agreement, the device boots directly into retail demo mode with a local user account, which is automatically upgraded to a Microsoft account. For more information about retail demo mode and what you need to do to take full advantage of this integrated feature, see the *User Experience Windows Engineering Guide (UX WEG) for Windows 10*.

## Values


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>true</strong></p></td>
<td><p>Enables retail demo mode on the device.</p></td>
</tr>
<tr class="even">
<td><p><strong>false</strong></p></td>
<td><p>Disables retail demo mode on the device.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


oobeSystem

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md) | [OOBE](microsoft-windows-shell-setup-oobe.md) | **UnattendEnableRetailDemo**

## Applies To


Windows 10 for desktop editions (Home, Pro, Enterprise, and Education)

For a list of the Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md).

 

 






