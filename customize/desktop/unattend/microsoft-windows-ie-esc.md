---
title: Microsoft-Windows-IE-ESC
description: Microsoft-Windows-IE-ESC
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 76a4d013-7847-47ae-9b5a-e2cf435acd49
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Microsoft-Windows-IE-ESC


The Microsoft-Windows-IE-ESC component specifies details about Internet Explorer Enhanced Security Configuration (ESC). When Internet Explorer ESC is enabled, it reduces the exposure of your server to potential security attacks from Web pages that do not belong to the Local Intranet zone or the Trusted Sites zone.

You can specify:

-   For whom ESC is enabled: administrators only; all users, both administrators and all users; or neither.

-   Local intranet sites and Internet sites whose content can be trusted by administrators and users for whom ESC is enabled. For more information, see [LocalIntranetSites](microsoft-windows-ie-internetexplorer-localintranetsites.md) and [TrustedSites](microsoft-windows-ie-internetexplorer-trustedsites.md).

## In This Section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[IEHardenAdmin](microsoft-windows-ie-esc-iehardenadmin.md)</p></td>
<td><p>Specifies whether ESC is enabled for all administrators on the computer.</p></td>
</tr>
<tr class="even">
<td><p>[IEHardenUser](microsoft-windows-ie-esc-iehardenuser.md)</p></td>
<td><p>Specifies whether ESC is enabled for all users on the computer.</p></td>
</tr>
</tbody>
</table>

 

## Applies To


To determine whether a component applies to the image you’re building, load your image into Windows SIM and search for the component or setting name. For information on how to view components and settings, see [Configure Components and Settings in an Answer File](https://msdn.microsoft.com/library/windows/hardware/dn915078).

## Related topics


[LocalIntranetSites](microsoft-windows-ie-internetexplorer-localintranetsites.md)

[TrustedSites](microsoft-windows-ie-internetexplorer-trustedsites.md)

[Components](components-b-unattend.md)

 

 







