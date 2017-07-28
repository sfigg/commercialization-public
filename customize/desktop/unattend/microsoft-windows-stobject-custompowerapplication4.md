---
title: CustomPowerApplication4
description: CustomPowerApplication4
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 89057eb3-67a4-403f-8744-175eef412399
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# CustomPowerApplication4


`CustomPowerApplication4` specifies the fourth Battery Meter customized context menu item.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Application](microsoft-windows-stobject-custompowerapplication4-application.md)</p></td>
<td><p>Specifies the name and the path of the application to run</p></td>
</tr>
<tr class="even">
<td><p>[IconID](microsoft-windows-stobject-custompowerapplication4-iconid.md)</p></td>
<td><p>Specifies the optional icon resource ID.</p></td>
</tr>
<tr class="odd">
<td><p>[ItemName](microsoft-windows-stobject-custompowerapplication4-itemname.md)</p></td>
<td><p>Specifies the display text of the application.</p></td>
</tr>
<tr class="even">
<td><p>[Parameters](microsoft-windows-stobject-custompowerapplication4-parameters.md)</p></td>
<td><p>Specifies the optional parameters to use when running the application.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


generalize

specialize

## Parent Hierarchy


[Microsoft-Windows-stobject](microsoft-windows-stobject.md) | **CustomPowerApplication4**

## Applies To


For the list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-stobject](microsoft-windows-stobject.md).

## XML Example


The following XML output shows how to configure `CustomPowerApplication4`.

```
<CustomPowerApplication4>
   <Application>C:\Program Files\CustomPower\Application.exe</Application> 
   <IconID>@%ProgramFiles%\Microsoft Shared\Resource.dll,-200</IconID> 
   <ItemName>%ProgramFiles%\Microsoft Shared\Resource.dll,-100</ItemName> 
   <Parameters>-param</Parameters> 
</CustomPowerApplication4>
```

## Related topics


[Microsoft-Windows-stobject](microsoft-windows-stobject.md)

 

 







