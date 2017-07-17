---
title: OfflineLocalAccounts
description: OfflineLocalAccounts specifies offline local accounts to be created during installation.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 72A51941-7077-4646-BB6C-3CE075C36824
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# OfflineLocalAccounts


`OfflineLocalAccounts` specifies offline local accounts to be created during installation.

You can use the **sysprep/generalize** command in conjunction with `OfflineLocalAccounts` to change account information. See the B[Best Practices for Authoring Answer Files](https://msdn.microsoft.com/library/windows/hardware/dn915073) topic for details.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[LocalAccount](microsoft-windows-shell-setup-offlineuseraccounts-offlinelocalaccounts-localaccount.md)</p></td>
<td><p>Specifies a local account to be created during installation.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


offlineServicing

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md)| [OfflineUserAccounts](microsoft-windows-shell-setup-offlineuseraccounts.md) | **OfflineLocalAccounts**

## Applies To


Windows 10 for desktop editions (Home, Pro, Enterprise, and Education)

Windows Server 2016

For a list of the Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md).

 

 






