---
title: Customizations for desktop devices
description: Customizations for desktop devices allow you to change the UI and other settings for a desktop image.
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Customizations for desktop devices
You have the following options to customize your image. Depending on which options you’d like to use, you’ll employ the associated method or choice of methods to apply the customization. 
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Feature</th>
<th>Unattend</th>
<th>Modification file</th>
</tr>
</thead>
<tbody>
<!--<tr>
<td><p>Start menu</p></td>
<td><p>subset</p></td>
<td><p>LayoutModification.xml</p></td>
</tr>-->
<tr>
<td><p>Taskbar</p></td>
<td><p>subset</p></td>
<td><p>TaskbarLayoutModification.xml</p></td>
</tr>
<tr>
<td><p>Colors</p></td>
<td><p>yes</p></td>
<td><p>n/a</p></td>
</tr>
<tr>
<td><p>Dark mode</p></td>
<td><p>yes</p></td>
<td><p>n/a</p></td>
</tr>
<!--<tr>
<td><p>Pen and Windows Ink Workspace</p></td>
<td><p>subset</p></td>
<td><p>InkWorkspaceModification.xml</p></td>
</tr>-->
</tbody>
</table>

## In this section
These are some common ways to customize your desktop device. You will also find the tecnical reference for Unattend and WSIM. 

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

<tr class="even">
<td><p>[Customize the taskbar](customize-the-taskbar.md)</p></td>
<td><p>You can pin up to three additional apps to the taskbar by adding a taskbar layout modification file, for example, TaskbarLayoutModification.xml. You can specify different taskbar configurations based on SKU, device locale, or region.</p></td>
</tr>
<tr class="odd">
<td><p>[Set dark mode](set-dark-mode.md)</p></td>
<td><p>This personalization setting for end users allows them to express preference whether to see applications which support the setting in a dark or light mode.
Many Microsoft first party applications apply the setting and it is easy for you to support the functionality in your UWP applications as well.</p></td>
</tr>
<tr class="even">
<td><p>[Customize the Country and Operator Settings Asset](customize-cosa.md)</p></td>
<td><p>When a SIM is inserted in a COSA-enabled Windows-based device, the provisioning framework attempts to establish a cellular connection by searching for the matching profile and APN in COSA.</p></td>
</tr>
<tr class="even">
<td><p>[Windows SIM Technical Reference](wsim/windows-system-image-manager-technical-reference.md)</p></td>
<td><p>Settings reference for Windows System Image Manager.</p></td>
</tr>
<tr class="odd">
<td><p>[Unattended Windows Setup Reference](unattend/index.md)</p></td>
<td><p>Settings reference for Unattend.</p></td>
</tr>
</tbody>
</table>

 

 

 

