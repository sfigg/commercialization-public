---
title: CEIPEnabled
description: CEIPEnabled
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4f57233c-4856-473f-ab6e-7a6506b6a59b
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# CEIPEnabled


`CEIPEnabled` indicates whether the Windows Customer Experience Improvement Program (CEIP) is enabled.

If the Microsoft-Windows-SQMAPI component is enabled, it collects and sends data to Microsoft about Windows usage. Participation in this program is voluntary, and the results are recorded to implement improvements for future releases.

This setting has no effect on Server Core installations of Windows Server 2008, Windows Server 2008 R2, and Windows Server 2012.

## Values


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>0</strong></p></td>
<td><p>Specifies that Windows CEIP is chosen during OOBE. If the user decides to skip OOBE during installation, CEIP will be opted out. The user receives no further notifications.</p>
<p>This is the default value.</p></td>
</tr>
<tr class="even">
<td><p><strong>1</strong></p></td>
<td><p>Specifies that Windows CEIP collects and sends anonymous data to Microsoft to help improve Windows.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


specialize

## Parent Hierarchy


[Microsoft-Windows-SQMAPI](microsoft-windows-sqmapi.md) | **CEIPEnabled**

## Applies To


For the list of the Windows editions and architectures that this component supports, see [Microsoft-Windows-SQMAPI](microsoft-windows-sqmapi.md).

## XML Example


The following XML output disables Windows CEIP.

```
<CEIPEnabled>0</CEIPEnabled>
```

## Related topics


[Microsoft-Windows-SQMAPI](microsoft-windows-sqmapi.md)

 

 







