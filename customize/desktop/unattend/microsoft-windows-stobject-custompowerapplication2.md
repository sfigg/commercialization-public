---
title: CustomPowerApplication2
description: CustomPowerApplication2
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 88677e57-8acd-46df-9560-467e376b6652
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# CustomPowerApplication2


`CustomPowerApplication2` specifies the second Battery Meter customized context menu item.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Application](microsoft-windows-stobject-custompowerapplication2-application.md)</p></td>
<td><p>Specifies the name and the path of the application to run.</p></td>
</tr>
<tr class="even">
<td><p>[IconID](microsoft-windows-stobject-custompowerapplication2-iconid.md)</p></td>
<td><p>Specifies the optional icon resource ID.</p></td>
</tr>
<tr class="odd">
<td><p>[ItemName](microsoft-windows-stobject-custompowerapplication2-itemname.md)</p></td>
<td><p>Specifies the display text of the application.</p></td>
</tr>
<tr class="even">
<td><p>[Parameters](microsoft-windows-stobject-custompowerapplication2-parameters.md)</p></td>
<td><p>Specifies the optional parameters to use when running the application.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


generalize

specialize

## Parent Hierarchy


[Microsoft-Windows-stobject](microsoft-windows-stobject.md) | **CustomPowerApplication2**

## Applies To


For the list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-stobject](microsoft-windows-stobject.md).

## XML Example


The following XML output specifies how to configure `CustomPowerApplication2`.

``` syntax
<CustomPowerApplication2>
   <Application>C:\Program Files\CustomPower\Application.exe</Application> 
   <IconID>@%ProgramFiles%\Microsoft Shared\Resource.dll,-200</IconID> 
   <ItemName>%ProgramFiles%\Microsoft Shared\Resource.dll,-100</ItemName> 
   <Parameters>-param</Parameters> 
</CustomPowerApplication2>
```

## Related topics


[Microsoft-Windows-stobject](microsoft-windows-stobject.md)

 

 







