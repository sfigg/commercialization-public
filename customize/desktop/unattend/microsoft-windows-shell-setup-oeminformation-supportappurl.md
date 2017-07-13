---
title: SupportAppURL
description: SupportAppURL specifies the OEM-built support app that will be launched instead of the web URL.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: DB690B4B-4FCC-4074-97D7-C339BB8C24D3
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# SupportAppURL


`SupportAppURL` specifies the OEM-built support app that will be launched instead of the web URL.

## Values


Set the value to your app's protocol handler, which is the value that's registered in your app's manifest file.

For example, in the following app manifest file snippet, the **Protocol Name** is **contoso-contact-support** so this will be the value that will be used for `SupportAppURL`:

```
      <Extensions>
        <uap:Extension Category="windows.protocol">
          <uap:Protocol Name="contoso-contact-support">
            <uap:DisplayName>contoso-resource:appDisplayName</uap:DisplayName>
          </uap:Protocol>
        </uap:Extension>
      </Extensions>
```

## Valid Passes


auditUser

generalize

offlineServicing

oobeSystem

specialize

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md) | [OEMInformation](microsoft-windows-shell-setup-oeminformation.md) | **SupportAppURL**

## Applies To


For the list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md).

## XML Example


The following XML output shows how to set OEM information.

```
<OEMInformation>
   <HelpCustomized>true</HelpCustomized>
   <Manufacturer>OEM name</Manufacturer>
   <Model>model name</Model>
   <Logo>C:\Windows\OEM\Logo.bmp</Logo>
   <SupportAppURL>contoso-contact-support</SupportAppURL>
   <SupportHours>Monday to Friday, 9:00 A.M. to 5:00 P.M. Pacific Standard Time</SupportHours>
   <SupportPhone>425-555-0190</SupportPhone>
   <SupportURL>http://www.contoso.com</SupportURL>
</OEMInformation>
```

## Related topics


[OEMInformation](microsoft-windows-shell-setup-oeminformation.md)

 

 







