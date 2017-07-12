---
title: LogonCount
description: LogonCount
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: da3e5987-4834-4bca-a543-8987724eae88
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# LogonCount


`LogonCount` specifies the number of times that you can log on to the computer by using `AutoLogon`. This value decrements each time you log on to the computer. You must restart the computer to reset the value of `LogonCount`. `LogonCount` must be specified if [AutoLogon](microsoft-windows-shell-setup-autologon.md) is used.

After the specified number of automated logon actions has occurred, you must manually log onto the computer.

If the built-in administrator account is used, the account is still active. For more information about the built-in administrator account, see the [How to Enable and Disable the Built-in Administrator Account](http://go.microsoft.com/fwlink/?LinkId=206616) topic in the Windows Assessment and Deployment Kit (Windows ADK) Technical Reference.

## Values


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><em>Logon_count</em></p></td>
<td><p>Specifies the number of times you can log on to the computer by using <code>AutoLogon</code>. <em>Logon_count</em> is an integer.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


auditSystem

oobeSystem

specialize

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md) | [AutoLogon](microsoft-windows-shell-setup-autologon.md) | **LogonCount**

## Applies To


For a list of the Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md). This setting is not configured in a Nano Server image.

## XML Example


The following XML output shows how to set `AutoLogon` so that you can log onto the computer twice using the built-in administrator account.

``` syntax
<AutoLogon>
   <Password>
      <Value>MyPassword</Value>
      <PlainText>true</PlainText>
   </Password>
   <Enabled>true</Enabled>
   <LogonCount>2</LogonCount>
   <Username>Administrator</Username>
</AutoLogon>
```

## Related topics


[AutoLogon](microsoft-windows-shell-setup-autologon.md)

 

 







