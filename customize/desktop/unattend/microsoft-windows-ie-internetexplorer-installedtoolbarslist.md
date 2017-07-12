---
title: InstalledToolbarsList
description: InstalledToolbarsList
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a3be6507-af60-4987-8b74-5e8de3e7e990
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# InstalledToolbarsList


`InstalledToolbarsList` contains settings for configuring Internet Explorer toolbars.

Toolbars are plug-in modules used to add functionality to Internet Explorer.

`InstalledToolbarsList` can contain one or more [AddonGuidItem](microsoft-windows-ie-internetexplorer-installedtoolbarslist-addonguiditem.md) settings each of which represents a single toolbar.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[AddonGuidItem](microsoft-windows-ie-internetexplorer-installedtoolbarslist-addonguiditem.md)</p></td>
<td><p>Specifies settings for a toolbar.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


specialize

## Parent Hierarchy


[Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md) | **InstalledToolbarsList**

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md).

## XML Example


The following XML output shows how to set two Internet Explorer toolbars.

``` syntax
<InstalledToolbarsList>
  <AddonGuidItem>
    <AddonGuid>{a1b1c123d1e1f4a5a6a7aa8a9a0a}</AddonGuid>
  </AddonGuidItem>
  <AddonGuidItem>
    <AddonGuid>{b1c123d1e1f4a5a6a7aa8a9a0a33}</AddonGuid>
  </AddonGuidItem>
</InstalledToolbarsList>
```

## Related topics


[Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md)

[InstalledBHOList](microsoft-windows-ie-internetexplorer-installedbholist.md)

[InstalledBrowserExtensions](microsoft-windows-ie-internetexplorer-installedbrowserextensions.md)

[PreApprovedAddons](microsoft-windows-ie-internetexplorer-preapprovedaddons.md)

 

 







