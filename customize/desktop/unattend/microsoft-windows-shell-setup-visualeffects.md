---
title: VisualEffects
description: VisualEffects
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1bea22d2-6279-4d0f-8019-f8885cbdec72
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# VisualEffects


`VisualEffects` specifies additional display settings.

This setting has no effect on Server Core installations.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[FontSmoothing](microsoft-windows-shell-setup-visualeffects-fontsmoothing.md)</p></td>
<td><p>Specifies whether font smoothing is enabled, and which type of font smoothing is enabled.</p></td>
</tr>
<tr class="even">
<td><p>[SystemDefaultBackgroundColor](microsoft-windows-shell-setup-visualeffects-systemdefaultbackgroundcolor.md)</p></td>
<td><p>Specifies the system default Windows background color scheme appearing on first boot, and on LogonUI if no user is selected.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


oobeSystem

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md) | **VisualEffects**

## Applies To


For the list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md).

## XML Example


The following XML output shows **ClearType** enabled for font smoothing.

``` syntax
<VisualEffects>
   <FontSmoothing>ClearType</FontSmoothing>
</VisualEffects>
```

## Related topics


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md)

 

 







