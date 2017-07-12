---
title: Description
description: Description
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 70d09011-ca9b-4783-82ce-f01fec604d5b
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Description


The `Description` setting specifies customized text to display under the icon title by the **Online Support** icon in the **Additional Information** control panel located in the **Troubleshooting** control panel.

## Values


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><em>DescriptionID</em></p></td>
<td><p>Specifies the description of the <strong>Online Support</strong> icon. <em>DescriptionID</em> is represented as <em>@dllname,-resourceID</em>, where <em>dllname</em> must include a full path to the resource DLL.</p>
<p>For information about creating localized versions of a DLL for each setting, see the MSDN topic: [Using the MUI with Applications](http://go.microsoft.com/fwlink/?LinkId=140252).</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


offlineServicing

generalize

specialize

## Parent Hierarchy


[Microsoft-Windows-DiagCpl](microsoft-windows-diagcpl.md) | **Description**

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-DiagCpl](microsoft-windows-diagcpl.md).

## XML Example


The following XML output shows how to configure the **Online Support** icon to point to the Fabrikam Troubleshooting application.

``` syntax
  <Title>@%SystemRoot%\System32\DiagCpl.dll,-82</Title>
  <Description>@%SystemRoot%\System32\DiagCpl.dll,-83</Description>
  <Icon>@%SystemRoot%\System32\imageres.dll,-179</Icon>
  <Link>http://www.fabrikam.com/support</Link>
```

## Related topics


[Microsoft-Windows-DiagCpl](microsoft-windows-diagcpl.md)

 

 







