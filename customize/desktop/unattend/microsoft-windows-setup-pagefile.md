---
title: PageFile
description: PageFile
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a9d773c1-dd21-4b38-83a0-ecd65c9b1529
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# PageFile


`PageFile` specifies the location and the size of the Windows PE operating system page file to create. This setting applies only to the Windows PE page file, and not to the page file of the Windows installation.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Path](microsoft-windows-setup-pagefile-path.md)</p></td>
<td><p>Specifies the path of the page file to create.</p></td>
</tr>
<tr class="even">
<td><p>[Size](microsoft-windows-setup-pagefile-size.md)</p></td>
<td><p>Specifies the size of the page file to create.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


windowsPE

## Parent Hierarchy


[microsoft-windows-setup-](microsoft-windows-setup.md) | **PageFile**

## Applies To


For the list of the supported Windows editions and architectures that this component supports, see [microsoft-windows-setup-](microsoft-windows-setup.md).

## XML Example


The following XML output shows how to create a page file.

```
<PageFile>
   <Path>%WINDIR%\MyPagefile.sys</Path>
   <Size>512</Size>
</PageFile>
```

## Related topics


[microsoft-windows-setup-](microsoft-windows-setup.md)

 

 







