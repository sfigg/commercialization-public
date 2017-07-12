---
title: DynamicUpdate
description: DynamicUpdate
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 25dd9e6b-db95-46a6-bac2-62b2efdcfcf4
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# DynamicUpdate


`DynamicUpdate` specifies whether to enable Dynamic Updates during Windows Setup. Dynamic Updates search for new Windows Setup files, including drivers and other files, to be used to install the Windows operating system.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Enable](microsoft-windows-setup-dynamicupdate-enable.md)</p></td>
<td><p>Specifies whether to enable dynamic updates for installation.</p></td>
</tr>
<tr class="even">
<td><p>[WillShowUI](microsoft-windows-setup-dynamicupdate-willshowui.md)</p></td>
<td><p>Specifies in what circumstances to show the user interface (UI) for dynamic updates.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


windowsPE

## Parent Hierarchy


[microsoft-windows-setup-](microsoft-windows-setup.md) | **DynamicUpdate**

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [microsoft-windows-setup-](microsoft-windows-setup.md).

## XML Example


The following XML output shows the value for the `DynamicUpdate` setting.

``` syntax
<DynamicUpdate>
   <Enable>true</Enable>
   <WillShowUI>Never</WillShowUI>
</DynamicUpdate>
```

## Related topics


[microsoft-windows-setup-](microsoft-windows-setup.md)

[Dynamic Update and Resulting Internet Communication in Windows 7 and Windows Server 2008 R2](http://go.microsoft.com/fwlink/?LinkId=189355)

 

 







