---
title: UpgradeData
description: UpgradeData
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9dd51e38-f4dd-4ce4-ad6c-fb89604e778a
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# UpgradeData


`UpgradeData` specifies whether the installation type is an upgrade of an existing operating system. This setting also specifies in what circumstances the user interface (UI) is displayed.

Windows Setup does not support using any other unattended Setup settings during upgrades. When you upgrade from an earlier version of Windows, you must create an answer file that includes only the Windows-Setup\\`UpgradeData` settings. Then, you must use either the Windows product DVD or the System Preparation (Sysprep) tool to upgrade Windows.

For a sample answer file, see the [XML Example](#xmlexample) section.

**Caution**  
If you use an installation image that was originally installed by using an Unattend.xml file, and you execute the **Repair in-place upgrade (overwrite installation)** option, the upgrade installation may quit. You may not be able to restart the installation. For more information, see [Knowledge Base Article ID 2425962](http://go.microsoft.com/fwlink/?LinkId=209802).

 

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Upgrade](microsoft-windows-setup-upgradedata-upgrade.md)</p></td>
<td><p>Specifies whether the installation is an upgrade of an existing operating system.</p></td>
</tr>
<tr class="even">
<td><p>[WillShowUI](microsoft-windows-setup-upgradedata-willshowui.md)WillShowUI</p></td>
<td><p>Specifies in what circumstances the UI is displayed.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


windowsPE

## Parent Hierarchy


[microsoft-windows-setup-](microsoft-windows-setup.md) | **UpgradeData**

## Applies To


For a list of the Windows editions and architectures that this component supports, see [microsoft-windows-setup-](microsoft-windows-setup.md).

## <a href="" id="xmlexample"></a>XML Example


The following XML output shows how to set an upgrade installation to run in guaranteed quiet mode.

```
<UpgradeData>
   <Upgrade>true</Upgrade>
   <WillShowUI>Never</WillShowUI>
</UpgradeData>
```

## Related topics


[microsoft-windows-setup-](microsoft-windows-setup.md)

 

 







