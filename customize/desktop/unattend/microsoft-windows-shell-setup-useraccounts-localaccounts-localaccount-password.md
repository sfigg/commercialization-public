---
title: Password
description: Password
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9885fe7e-d135-465c-8233-0ca6b663ca16
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Password


`Password` specifies the password for a [LocalAccount](microsoft-windows-shell-setup-useraccounts-localaccounts-localaccount.md) to be created during installation and whether the password is hidden in the unattended installation answer file.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[PlainText](microsoft-windows-shell-setup-useraccounts-localaccounts-localaccount-password-plaintext.md)</p></td>
<td><p>Specifies whether the [LocalAccount](microsoft-windows-shell-setup-useraccounts-localaccounts-localaccount.md) password is hidden in the answer file.</p></td>
</tr>
<tr class="even">
<td><p>[Value](microsoft-windows-shell-setup-useraccounts-localaccounts-localaccount-password-value.md)</p></td>
<td><p>Specifies the [LocalAccount](microsoft-windows-shell-setup-useraccounts-localaccounts-localaccount.md) password.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


auditSystem

oobeSystem

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md) | [UserAccounts](microsoft-windows-shell-setup-useraccounts.md) | [LocalAccounts](microsoft-windows-shell-setup-useraccounts-localaccounts.md) | [LocalAccount](microsoft-windows-shell-setup-useraccounts-localaccounts-localaccount.md) | **Password**

## Applies To


For the list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md).

## XML Example


The following XML output shows how to set [UserAccounts](microsoft-windows-shell-setup-useraccounts.md).

```
<UserAccounts>
   <LocalAccounts>
      <LocalAccount wcm:action="add">
         <Password>
            <Value>cAB3AFAAYQBzAHMAdwBvAHIAZAA</Value>
            <PlainText>false</PlainText>
         </Password>
         <Description>Test account</Description>
         <DisplayName>Admin/Power User Account</DisplayName>
         <Group>Administrators;Power Users</Group>
         <Name>Test1</Name>
      </LocalAccount>
      <LocalAccount wcm:action="add">
         <Password>
            <Value>cABhAHMAcwB3AG8AcgBkAFAAYQBzAHMAdwBvAHIAZAA=</Value>
            <PlainText>false</PlainText>
         </Password>
         <Description>For testing</Description>
         <DisplayName>Admin Account</DisplayName>
         <Group>Administrators</Group>
         <Name>Test2</Name>
      </LocalAccount>
   </LocalAccounts>
</UserAccounts>
```

## Related topics


[LocalAccount](microsoft-windows-shell-setup-useraccounts-localaccounts-localaccount.md)

 

 







