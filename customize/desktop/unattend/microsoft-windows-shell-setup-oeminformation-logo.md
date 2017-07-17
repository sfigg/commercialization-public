---
title: Logo
description: Logo
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a2c55d15-94f5-4b43-a3b9-e3c5453ebf41
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Logo


In Windows 10, version 1607, the Logo setting is deprecated.

`Logo` specifies the path to the .bmp file of the manufacturer's logo. This logo appears in the **Performance Information and Tools** Control Panel, but is not used in the **Settings** app. In the **Settings** app, no logo displays.

## Values


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><em>Path_to_logo</em></p></td>
<td><p>Specifies the path to the manufacturer's logo. The logo must be located on the destination computer, and it must be a .bmp file. <em>Path_to_logo</em> is a string that has a maximum length of 259 characters.</p>
<div class="alert">
<strong>Note</strong>  
<p>The logo must be in 32-bit color. Logos that are larger than 120x120 pixels are scaled to 120x120.</p>
<p></p>
</div>
<div>
 
</div></td>
</tr>
</tbody>
</table>

 

This string type supports empty elements.

## Valid Configuration Passes


auditUser

generalize

offlineServicing

oobeSystem

specialize

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md) | [OEMInformation](microsoft-windows-shell-setup-oeminformation.md) | **Logo**

## Applies To


For a list of the Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md).

## Related topics


[OEMInformation](microsoft-windows-shell-setup-oeminformation.md)

 

 







