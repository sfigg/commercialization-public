---
title: Microsoft-Windows-Embedded-EmbeddedLogon
description: You can use custom logon to suppress UI elements that relate to the Welcome screen and shutdown screen.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: F4A7FB96-C9FE-4463-B877-150F0F31D259
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Microsoft-Windows-Embedded-EmbeddedLogon


You can use custom logon to suppress UI elements that relate to the Welcome screen and shutdown screen. For example, you can suppress all elements of the Welcome screen UI and provide a custom logon UI. You can also suppress the blocked shutdown resolver (BSDR) screen and automatically end applications while the OS waits for apps to close before a shutdown.

Custom logon settings do not modify the credential behavior of Winlogon, so you can use any credential provider that is compatible with the OS to provide a custom sign-in experience for your device.

You cannot change the configuration of custom logon during runtime.

## Child elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[AnimationDisabled](microsoft-windows-embedded-embeddedlogon-animationdisabled.md)</p></td>
<td><p>Disables the Welcome screen transition animation for custom logon</p></td>
</tr>
<tr class="even">
<td><p>[BrandingNeutral](microsoft-windows-embedded-embeddedlogon-brandingneutral.md)</p></td>
<td><p>Specifies which UI elements display on the Welcome screen.</p></td>
</tr>
<tr class="odd">
<td><p>[HideAutoLogonUI](microsoft-windows-embedded-embeddedlogon-hideautologonui.md)</p></td>
<td><p>Hides the Welcome screen when automatic sign-in is enabled.</p></td>
</tr>
<tr class="even">
<td><p>[NoLockScreen](microsoft-windows-embedded-embeddedlogon-nolockscreen.md)</p></td>
<td><p>Disables the lock screen functionality and UI elements.</p></td>
</tr>
<tr class="odd">
<td><p>[UIVerbosityLevel](microsoft-windows-embedded-embeddedlogon-uiverbositylevel.md)</p></td>
<td><p>Disables the Windows status messages during device startup, sign-in, and shut down.</p></td>
</tr>
</tbody>
</table>

 

## Applies to


To determine whether a component applies to the image you’re building, load your image into Windows SIM and search for the component or setting name. For information on how to view components and settings, see [Configure Components and Settings in an Answer File](https://msdn.microsoft.com/library/windows/hardware/dn915078).

 

 






