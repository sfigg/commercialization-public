---
title: SetupUILanguage
description: SetupUILanguage
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d7108163-4dd2-49a0-bf93-68d3faf2e922
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# SetupUILanguage


`SetupUILanguage` defines the language to use in Windows Setup and Windows Deployment Services.

For the list of supported languages, locales, and identifiers, see [Supported Language Packs and Default Settings](http://go.microsoft.com/fwlink/p/?linkid=200317).

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[UILanguage](microsoft-windows-international-core-winpe-setupuilanguage-uilanguage.md)</p></td>
<td><p>Specifies the language of the user interface (UI) to use during Windows Setup or Windows Deployment Services.</p></td>
</tr>
<tr class="even">
<td><p>[WillShowUI](microsoft-windows-international-core-winpe-setupuilanguage-willshowui.md)</p></td>
<td><p>This setting is deprecated and should not be used.</p></td>
</tr>
</tbody>
</table>

 

## Parent Hierarchy


[microsoft-windows-international-core-winpe--](microsoft-windows-international-core-winpe.md) | **SetupUILanguage**

## Valid Configuration Passes


windowsPE

## Applies To


For the list of the Windows editions and architectures that this component supports, see [microsoft-windows-international-core-winpe--](microsoft-windows-international-core-winpe.md).

## XML Example


The following example shows how to configure the Windows Setup UI language to display French (France).

``` syntax
   <SetupUILanguage>
       <UILanguage>fr-FR</UILanguage>
   </SetupUILanguage>
```

## Related topics


[microsoft-windows-international-core-winpe--](microsoft-windows-international-core-winpe.md)

[Microsoft-Windows-International-Core](microsoft-windows-international-core.md)

 

 







