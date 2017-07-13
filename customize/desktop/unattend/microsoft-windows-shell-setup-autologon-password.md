---
title: Password
description: Password
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8475b6c1-7297-43d3-a900-bc560c4165e1
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Password


`Password` specifies the password for the [Username](microsoft-windows-shell-setup-autologon-username.md) account used for autologon to the [Domain](microsoft-windows-shell-setup-autologon-domain.md), and whether the password is made more security-enhanced in the unattended installation answer file.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[PlainText](microsoft-windows-shell-setup-autologon-password-plaintext.md)</p></td>
<td><p>Specifies whether the autologon password [Value](microsoft-windows-shell-setup-autologon-password-value.md) is hidden in the answer file.</p></td>
</tr>
<tr class="even">
<td><p>[Value](microsoft-windows-shell-setup-autologon-password-value.md)</p></td>
<td><p>Specifies the autologon password.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


auditSystem

oobeSystem

specialize

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md) | [AutoLogon](microsoft-windows-shell-setup-autologon.md) | **Password**

## Applies To


For the list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md). This setting is not configured in a Nano Server image.

## XML Example


The following XML output shows how to set autologon.

```
<AutoLogon>
   <Password>
      <Value>MyPassword</Value> 
      <PlainText>true</PlainText>
   </Password>
   <Domain>FabrikamDomain</Domain>
   <Enabled>true</Enabled> 
   <LogonCount>2</LogonCount> 
   <Username>MyUserName</Username> 
</AutoLogon>
```

## Related topics


[AutoLogon](microsoft-windows-shell-setup-autologon.md)

 

 







