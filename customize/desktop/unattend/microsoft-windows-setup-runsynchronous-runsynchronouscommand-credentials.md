---
title: Credentials
description: Credentials
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 941c68bd-08e1-46ea-8036-2dd1d4d865b1
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Credentials


`Credentials` specifies the credentials used when accessing an application over a network. `Credentials` is used to authenticate access to a location specified by [Path](microsoft-windows-setup-runsynchronous-runsynchronouscommand-path.md).

All [RunSynchronous](microsoft-windows-setup-runsynchronous.md) commands run in the system context.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Domain](microsoft-windows-setup-runsynchronous-runsynchronouscommand-credentials-domain.md)</p></td>
<td><p>Specifies the domain of the account used for authentication.</p></td>
</tr>
<tr class="even">
<td><p>[Password](microsoft-windows-setup-runsynchronous-runsynchronouscommand-credentials-password.md)</p></td>
<td><p>Specifies the password of the account used for authentication.</p></td>
</tr>
<tr class="odd">
<td><p>[UserName](microsoft-windows-setup-runsynchronous-runsynchronouscommand-credentials-username.md)</p></td>
<td><p>Specifies the user name of the account used for authentication.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


windowsPE

## Parent Hierarchy


[microsoft-windows-setup-](microsoft-windows-setup.md) | [RunSynchronous](microsoft-windows-setup-runsynchronous.md) | [RunSynchronousCommand](microsoft-windows-setup-runsynchronous-runsynchronouscommand.md) | **Credentials**

## Applies To


For the list of the supported Windows editions and architectures that this component supports, see [microsoft-windows-setup-](microsoft-windows-setup.md).

## XML Example


The following XML output shows how to set synchronous commands.

``` syntax
<RunSynchronous>
   <!-- First synchronous command to execute -->
   <RunSynchronousCommand>
      <Order>1</Order>
      <Path>\\MyNetworkShare\MyApplication.exe</Path>
      <Description>DescriptionOfMyApplication</Description>
      <Credentials>
         <Domain>FabrikamDomain</Domain>
         <UserName>MyUserName</UserName>
         <Password>MyPassword</Password>
      </Credentials>
   </RunSynchronousCommand>
<!-- Second synchronous command to execute -->
   <RunSynchronousCommand>
      <Order>2</Order>
      <Path>C:\AnotherApplication.exe</Path>
      <Description>DescriptionOfMyApplication</Description>
   </RunSynchronousCommand>
</RunSynchronous>
```

## Related topics


[RunSynchronousCommand](microsoft-windows-setup-runsynchronous-runsynchronouscommand.md)

 

 







