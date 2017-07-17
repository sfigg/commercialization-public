---
title: FontSmoothing
description: FontSmoothing
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 841603b8-abd8-48a3-8445-9ee27da1b254
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# FontSmoothing


`FontSmoothing` specifies whether font smoothing is enabled, and which type.

This setting has no effect on Server Core installations.

## Values


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Standard</strong></p></td>
<td><p>Specifies that the computer chooses the setting, based on a performance test.</p></td>
</tr>
<tr class="even">
<td><p><strong>On</strong></p></td>
<td><p>Specifies that font smoothing is turned on.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Off</strong></p></td>
<td><p>Specifies that font smoothing is turned off.</p></td>
</tr>
<tr class="even">
<td><p><strong>ClearType</strong></p></td>
<td><p>Specifies that Clear Type is used for font smoothing.</p></td>
</tr>
</tbody>
</table>

 

This string type supports empty elements.

## Valid Passes


oobeSystem

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md) | [VisualEffects](microsoft-windows-shell-setup-visualeffects.md) | **FontSmoothing**

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md).

## XML Example


The following XML output shows **ClearType** enabled for font smoothing.

```
<VisualEffects>
   <FontSmoothing>ClearType</FontSmoothing>
</VisualEffects>
```

## Related topics


[VisualEffects](microsoft-windows-shell-setup-visualeffects.md)

 

 







