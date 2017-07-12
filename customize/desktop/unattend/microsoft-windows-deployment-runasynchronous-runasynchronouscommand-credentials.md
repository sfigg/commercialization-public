---
title: Credentials
description: Credentials
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1a426bee-9333-414c-825e-731aab59eacc
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Credentials


`Credentials` specifies the credentials to use when accessing the [Path](microsoft-windows-deployment-runasynchronous-runasynchronouscommand-path.md).

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Domain](microsoft-windows-deployment-runasynchronous-runasynchronouscommand-credentials-domain.md)</p></td>
<td><p>Specifies the domain of the account to use for authentication.</p></td>
</tr>
<tr class="even">
<td><p>[Password](microsoft-windows-deployment-runasynchronous-runasynchronouscommand-credentials-password.md)</p></td>
<td><p>Specifies the password of the account to use for authentication.</p></td>
</tr>
<tr class="odd">
<td><p>[Username](microsoft-windows-deployment-runasynchronous-runasynchronouscommand-credentials-username.md)</p></td>
<td><p>Specifies the user name of the account to use for authentication.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


auditUser

specialize

## Parent Hierarchy


[Microsoft-Windows-Deployment](microsoft-windows-deployment.md) | [RunAsynchronous](microsoft-windows-deployment-runasynchronous.md) | [RunAsynchronousCommand](microsoft-windows-deployment-runasynchronous-runasynchronouscommand.md) | **Credentials**

## Applies To


For the list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-Deployment](microsoft-windows-deployment.md).

## XML Example


The following XML output shows how to set asynchronous commands.

``` syntax
<RunAsynchronous>
   <RunAsynchronousCommand wcm:action="add">
      <Credentials>
         <Domain>MyDomain</Domain>
         <Password>MyPassword</Password>
         <Username>MyUsername</Username>
      </Credentials>
      <Description>AsynchCommand1</Description>
      <Order>1</Order>
      <Path>\\network\server\share\filename</Path>
   </RunAsynchronousCommand>
   <RunAsynchronousCommand wcm:action="add">
      <Credentials>
         <Domain>MyDomain</Domain>
         <Password>MyPassword</Password>
         <Username>MyUsername</Username>
      </Credentials>
      <Description>AsynchCommand2</Description>
      <Order>2</Order>
      <Path>\\network\server\share\filename</Path>
   </RunAsynchronousCommand>
</RunAsynchronous>
```

## Related topics


[RunAsynchronousCommand](microsoft-windows-deployment-runasynchronous-runasynchronouscommand.md)

 

 







