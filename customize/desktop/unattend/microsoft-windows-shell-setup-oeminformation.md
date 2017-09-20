---
title: OEMInformation
description: OEMInformation
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8fd731ac-32b3-42b5-a3a0-36e6d567617d
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# OEMInformation


`OEMInformation` specifies OEM information. This information includes the OEM’s name, telephone support numbers, URL, and other support details.

In Windows 10, the OS disables the help components that shipped in Windows 8 and Windows 8.1 including the Help and Support Windows desktop application (HelpPane.exe). HelpPane.exe will continue to exist in the box, but calls to its interfaces will result in one of two outcomes:

-   If the user is offline, the OS launches the Getting Started app.
-   If the user is online, the OS opens a browser instance and redirects the browser to an online topic.

This change affects context-sensitive (or F1) help and accessing help from the menus for apps shipped with Windows including the shell.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="even">
<td><p>[SupportProvider](microsoft-windows-shell-setup-oeminformation-supportprovider.md)</p></td>
<td><p>Name of OEM support app or website. If not provided, the default Manufacturer name (from msinfo32.exe) will be used.</p></td>
</tr>
<tr class="odd">
<td><p>[SupportAppURL](microsoft-windows-shell-setup-oeminformation-supportappurl.md)</p></td>
<td><p>URI for the OEM support app. Required, unless `SupportURL` is present, in which case it is optional. If both are supplied, `SupportAppURL` is used.<br/>
> [!TIP]
> Add a parameter with a unique value to identify traffic coming from the Get Help app.</p></td>
</tr>
<tr class="even">
<td><p>[SupportURL](microsoft-windows-shell-setup-oeminformation-supporturl.md)</p></td>
<td><p>Specifies the URL of the support website for an OEM. Required, unless `SupportAppURL` is present, in which case it is optional. If both are supplied, `SupportAppURL` is used.</p></td>
</tr>
<tr class="odd">
<td><p>[Manufacturer](microsoft-windows-shell-setup-oeminformation-manufacturer.md)</p></td>
<td><p>**Deprecated in Windows 10, version 1709**. The Manufacturer name displayed in the Get Help app is now based on your System Manufacturer value defined in System Information (msinfo32.exe), unless you provide a `SupportProvider` parameter as part of your `OEMInformation`. When `SupportProvider` is provided, it will override the System Manufacturer name. This enables you to differentiate the name of your support app or website from the name of your brand if desired (i.e. "Contact Contoso Support" vs "Contact Contoso"). For this release, if `SupportProvider` is not present but the deprecated value `Manufacturer` is, it will still be used to support upgrade scenarios. </p></td>
</tr>
<tr class="even">
<td><p>[Model](microsoft-windows-shell-setup-oeminformation-model.md)</p></td>
<td><p>**Deprecated in Windows 10, version 1709**. The Model name displayed in the Get Help app is now based on your System Product Name value, as defined in System Information (msinfo32.exe). </p></td>
</tr>
<tr class="odd">
<td><p>[HelpCustomized](microsoft-windows-shell-setup-oeminformation-helpcustomized.md)</p></td>
<td><p>**Deprecated in Windows 10, version 1709**. To customize the Get Help app, define `SupportURL` or `SupportAppURL` as part of your `OEMInformation`.</p></td>
</tr>
<tr class="even">
<td><p>[Logo](microsoft-windows-shell-setup-oeminformation-logo.md)</p></td>
<td><p>**Deprecated in Windows 10, version 1709**. No logo is used in the Get Help app.</p></td>
</tr>
<tr class="odd">
<td><p>[SupportHours](microsoft-windows-shell-setup-oeminformation-supporthours.md)</p></td>
<td><p>**Deprecated in Windows 10, version 1709**. Support hours are not shown in the Get Help app.</p></td>
</tr>
<tr class="even">
<td><p>[SupportPhone](microsoft-windows-shell-setup-oeminformation-supportphone.md)</p></td>
<td><p>**Deprecated in Windows 10, version 1709**. Support phone number is not shown in the Get Help app.</p></td>
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


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md) | **OEMInformation**

## Applies To


For a list of the Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md).

## XML Example


The following example shows how to set OEM information.

```
<OEMInformation>
   <HelpCustomized>true</HelpCustomized>
   <Manufacturer>OEM name</Manufacturer>
   <Model>model name</Model>
   <Logo>C:\Windows\OEM\Logo.bmp</Logo>
   <SupportAppURL>contoso-contact-support</SupportAppURL>
   <SupportHours>hours</SupportHours>
   <SupportPhone>123-456-7890</SupportPhone>
   <SupportURL>http://www.fabrikam.com/support</SupportURL>
</OEMInformation>
```

## Related topics


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md)

[Microsoft-Windows-HelpAndSupport](microsoft-windows-helpandsupport.md)

 

 







