---
title: HelpCustomized
description: HelpCustomized
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4494d414-b276-4bee-9c98-b358f9e26df2
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# HelpCustomized


`HelpCustomized` specifies whether the Original Equipment Manufacturer (OEM) customizes Help. The outcome depends on the operating system:

-   In Windows 8, when you set this value to `true` and set values in Microsoft-Windows-HelpAndSupport\\[HelpAndSupport](microsoft-windows-helpandsupport-helpandsupport.md), you customize the **Windows Help and Support** page.

    For information about how to add customized Help files, see [Author and Add Custom Help and Support Content](http://go.microsoft.com/fwlink/?LinkId=237145).

-   In Windows 7 and Windows Vista, when you set this value to **true**, Control Panel shows a link to customized Help. Otherwise, it shows the support information that [SupportHours](microsoft-windows-shell-setup-oeminformation-supporthours.md), [SupportPhone](microsoft-windows-shell-setup-oeminformation-supportphone.md), and [SupportURL](microsoft-windows-shell-setup-oeminformation-supporturl.md) specify.

    All information (including [Manufacturer](microsoft-windows-shell-setup-oeminformation-manufacturer.md) and [Model](microsoft-windows-shell-setup-oeminformation-model.md)) should be in the customized Help file. This information doesn't appear in the **System** item in Control Panel.

## Values


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>true</strong></p></td>
<td><p>Specifies that Help is customized.</p></td>
</tr>
<tr class="even">
<td><p><strong>false</strong></p></td>
<td><p>Specifies that Help isn't customized. This is the default value.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


auditUser

generalize

offlineServicing

oobeSystem

specialize

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md) | [OEMInformation](microsoft-windows-shell-setup-oeminformation.md) | **HelpCustomized**

## Applies To


For a list of the Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md).

## XML Example


This XML shows how to specify that Help is customized:

```
<OEMInformation>
   <HelpCustomized>true</HelpCustomized>
   <Manufacturer><OEM name></Manufacturer>
   <Model><model name></Model>
   <SupportHours><hours></SupportHours>
   <SupportPhone>425-555-0190</SupportPhone>
   <SupportURL>http://www.contoso.com</SupportURL>
</OEMInformation>
```

## Related topics


[OEMInformation](microsoft-windows-shell-setup-oeminformation.md)

[HelpAndSupport](microsoft-windows-helpandsupport-helpandsupport.md)

[Author and Add Custom Help and Support Content](http://go.microsoft.com/fwlink/?LinkId=237145)

 

 







