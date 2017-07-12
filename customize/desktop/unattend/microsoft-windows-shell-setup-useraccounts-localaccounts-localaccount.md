---
title: LocalAccount
description: LocalAccount
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9da15e6d-5dd2-44fe-a423-3f433f0c7512
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# LocalAccount


`LocalAccount` specifies the details of a local account to be created during installation.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Description](microsoft-windows-shell-setup-useraccounts-localaccounts-localaccount-description.md)</p></td>
<td><p>Specifies a <code>LocalAccount</code>.</p></td>
</tr>
<tr class="even">
<td><p>[DisplayName](microsoft-windows-shell-setup-useraccounts-localaccounts-localaccount-displayname.md)</p></td>
<td><p>Specifies the display name for a <code>LocalAccount</code>.</p></td>
</tr>
<tr class="odd">
<td><p>[Group](microsoft-windows-shell-setup-useraccounts-localaccounts-localaccount-group.md)</p></td>
<td><p>Specifies the name of existing local security groups to which a <code>LocalAccount</code> will be added.</p></td>
</tr>
<tr class="even">
<td><p>[Name](microsoft-windows-shell-setup-useraccounts-localaccounts-localaccount-name.md)</p></td>
<td><p>Specifies the user name for a <code>LocalAccount</code>.</p></td>
</tr>
<tr class="odd">
<td><p>[Password](microsoft-windows-shell-setup-useraccounts-localaccounts-localaccount-password.md)</p></td>
<td><p>Specifies the password for a <code>LocalAccount</code> and whether the password is hidden in the unattended installation answer file.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


auditSystem

oobeSystem

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md)| [UserAccounts](microsoft-windows-shell-setup-useraccounts.md) | [LocalAccounts](microsoft-windows-shell-setup-useraccounts-localaccounts.md) | **LocalAccount**

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md).

## XML Example


The following XML output shows how to set [UserAccounts](microsoft-windows-shell-setup-useraccounts.md).

``` syntax
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


[LocalAccounts](microsoft-windows-shell-setup-useraccounts-localaccounts.md)

 

 







