---
title: Microsoft-Windows-Embedded-BootExp
description: You can use the settings in Microsoft-Windows-Embedded-BootExp to suppress OS elements that appear when the device starts or resumes, or you can suppress the crash screen when the OS encounters an error that it cannot recover from.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 97A8CEC7-2F28-4D76-9BE3-DEBEE85E027C
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Microsoft-Windows-Embedded-BootExp


You can use the settings in `Microsoft-Windows-Embedded-BootExp` to suppress OS elements that appear when the device starts or resumes, or you can suppress the crash screen when the OS encounters an error that it cannot recover from.

Unbranded boot can also be configured at runtime.

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
<td><p>[DisableBootMenu](microsoft-windows-embedded-bootexp-disablebootmenu.md)</p></td>
<td><p>Disables the F8 and F10 keys during startup to prevent access to the <strong>Advanced Startup Options</strong> menu.</p></td>
</tr>
<tr class="even">
<td><p>[DisplayDisabled](microsoft-windows-embedded-bootexp-displaydisabled.md)</p></td>
<td><p>Configures the device to display a blank screen when the OS encounters an error that it cannot recover from.</p></td>
</tr>
<tr class="odd">
<td><p>[HideAllBootUI](microsoft-windows-embedded-bootexp-hideallbootui.md)</p></td>
<td><p>Suppresses all Windows UI elements (logo, status indicator, and status message) during startup.</p></td>
</tr>
<tr class="even">
<td><p>[HideBootLogo](microsoft-windows-embedded-bootexp-hidebootlogo.md)</p></td>
<td><p>Suppresses the default Windows logo that displays during the OS loading phase.</p></td>
</tr>
<tr class="odd">
<td><p>[HideBootStatusIndicator](microsoft-windows-embedded-bootexp-hidebootstatusindicator.md)</p></td>
<td><p>Suppresses the status indicator that displays during the OS loading phase.</p></td>
</tr>
<tr class="even">
<td><p>[HideBootStatusMessage](microsoft-windows-embedded-bootexp-hidebootstatusmessage.md)</p></td>
<td><p>Suppresses the startup status text that displays during the OS loading phase.</p></td>
</tr>
</tbody>
</table>

 

## Applies to


To determine whether a component applies to the image you’re building, load your image into Windows SIM and search for the component or setting name. For information on how to view components and settings, see [Configure Components and Settings in an Answer File](https://msdn.microsoft.com/library/windows/hardware/dn915078).

 

 






