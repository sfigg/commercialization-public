---
title: RunAsynchronousCommand
description: RunAsynchronousCommand
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 36251bed-ee50-4d2e-ab3a-93c064fdb3f3
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# RunAsynchronousCommand


`RunAsynchronousCommand` specifies a single command to run during the windowsPE configuration pass.

To run services or commands that can start at the same time, use asynchronous commands. To run commands that need to finish before other commands can start, use [RunSynchronousCommand](microsoft-windows-setup-runsynchronous-runsynchronouscommand.md) instead.

All `RunAsynchronous` commands run in the system context.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Credentials](microsoft-windows-setup-runasynchronous-runasynchronouscommand-credentials.md)</p></td>
<td><p>Specifies the credentials used to access the command if the command is on a network share.</p></td>
</tr>
<tr class="even">
<td><p>[Description](microsoft-windows-setup-runasynchronous-runasynchronouscommand-description.md)</p></td>
<td><p>Specifies a description of the command to execute.</p></td>
</tr>
<tr class="odd">
<td><p>[Order](microsoft-windows-setup-runasynchronous-runasynchronouscommand-order.md)</p></td>
<td><p>Specifies a unique value for each command.</p>
<div class="alert">
<strong>Important</strong>  
<p>The computer does not wait for one command to finish before it starts the next command.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td><p>[Path](microsoft-windows-setup-runasynchronous-runasynchronouscommand-path.md)</p></td>
<td><p>Specifies the path to the command to execute.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


windowsPE

## Parent Hierarchy


[microsoft-windows-setup-](microsoft-windows-setup.md) | [RunAsynchronous](microsoft-windows-setup-runasynchronous.md) | **RunAsynchronousCommand**

## Applies To


For the list of the supported Windows editions and architectures that this component supports, see [microsoft-windows-setup-](microsoft-windows-setup.md).

## XML Example


The following XML output shows how to configure asynchronous commands.

```
<RunAsynchronous>
   <RunAsynchronousCommand>
      <Order>1</Order>
      <Path>\\MyNetworkShare\MyApplication.exe</Path>
      <Description>DescriptionOfMyApplication</Description>
      <Credentials>
         <Domain>FabrikamDomain</Domain>
         <UserName>MyUserName</UserName>
         <Password>MyPassword</Password>
      </Credentials>
   </RunAsynchronousCommand>
   <RunAsynchronousCommand>
      <Order>2</Order>
      <Path>C:\AnotherApplication.exe</Path>
      <Description>DescriptionOfMyApplication</Description>
   </RunAsynchronousCommand>
</RunAsynchronous>
```

## Related topics


[RunAsynchronous](microsoft-windows-setup-runasynchronous.md)

 

 







