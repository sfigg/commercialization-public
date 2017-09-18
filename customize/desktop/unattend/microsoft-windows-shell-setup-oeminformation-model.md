---
title: Model
description: Model
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4690d6bb-f3e1-4d84-a425-da4cfa82c0f6
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Model


`Model` specifies the name of the computer model.

## Values


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><em>Model_name</em></p></td>
<td><p>Specifies the name of the computer model. <em>Model_name</em> is a string with a maximum length of 256 characters.</p></td>
</tr>
</tbody>
</table>

 

This string type supports empty elements.

## Valid Configuration Passes


auditUser

generalize

offlineServicing

oobeSystem

specialize

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md) | [OEMInformation](microsoft-windows-shell-setup-oeminformation.md) | **Model**

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md).

## XML Example


The following XML output shows how to set OEM information.

```
<OEMInformation>
   <HelpCustomized>false</HelpCustomized>
   <Manufacturer>OEM name</Manufacturer>
   <Model>model name</Model>
   <SupportHours>hours</SupportHours>
   <SupportPhone>123-456-7890</SupportPhone>
   <SupportURL>http://www.contoso.com</SupportURL>
</OEMInformation>
```

## Related topics


[OEMInformation](microsoft-windows-shell-setup-oeminformation.md)

 

 







