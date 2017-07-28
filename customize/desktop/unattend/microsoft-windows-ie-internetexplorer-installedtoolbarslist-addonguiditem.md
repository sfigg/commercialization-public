---
title: AddonGuidItem
description: AddonGuidItem
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e9e13520-c8ef-4fe4-91d4-99275097a9c6
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# AddonGuidItem


`AddonGuidItem` contains settings for configuring an Internet Explorer toolbar.

Toolbars are plug-in modules used to add functionality to Internet Explorer.

`AddonGuidItem` contains settings for a single toolbar.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[AddonGuid](microsoft-windows-ie-internetexplorer-installedtoolbarslist-addonguiditem-addonguid.md)</p></td>
<td><p>Specifies a GUID for a toolbar.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


specialize

## Parent Hierarchy


[Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md) | [InstalledToolbarsList](microsoft-windows-ie-internetexplorer-installedtoolbarslist.md) | **AddonGuidItem**

## Applies To


For the list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md).

## XML Example


The following XML output shows how to set two Internet Explorer toolbars.

```
<InstalledBrowserExtensions>
  <AddonGuidItem>
    <AddonGuid>{a1b1c123d1e1f4a5a6a7aa8a9a0a}</AddonGuid>
  </AddonGuidItem>
  <AddonGuidItem>
    <AddonGuid>{b1c123d1e1f4a5a6a7aa8a9a0a33}</AddonGuid>
  </AddonGuidItem>
</InstalledBrowserExtensions>
```

## Related topics


[Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md)

 

 







