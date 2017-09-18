---
title: AddonGuidItem
description: AddonGuidItem
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2a2f577e-7b4d-400c-8dbf-24a93f2312f8
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# AddonGuidItem


`AddonGuidItem` contains settings for configuring an Internet Explorer add-on module, which add functionality to Internet Explorer.

`AddonGuidItem` contains settings for a single add-on module.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[AddonGuid](microsoft-windows-ie-internetexplorer-preapprovedaddons-addonguiditem-addonguid.md)</p></td>
<td><p>Specifies a GUID for an add-on module.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


specialize

## Parent Hierarchy


[Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md) | [PreApprovedAddons](microsoft-windows-ie-internetexplorer-preapprovedaddons.md) | **AddonGuidItem**

## Applies To


For the list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md).

## XML Example


The following XML output shows how to set two Internet Explorer add-on modules.

```
<PreApprovedAddons>
  <AddonGuidItem>
    <AddonGuid>{a1b1c123d1e1f4a5a6a7aa8a9a0a}</AddonGuid>
  </AddonGuidItem>
  <AddonGuidItem>
    <AddonGuid>{b1c123d1e1f4a5a6a7aa8a9a0a33}</AddonGuid>
  </AddonGuidItem>
</PreApprovedAddons>
```

## Related topics


[Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md)

 

 







