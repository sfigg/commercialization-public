---
title: AsynchronousCommand
description: AsynchronousCommand
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e49f1b29-9e65-42fa-95c2-50b35c9e2b94
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# AsynchronousCommand


`AsynchronousCommand` specifies a single command to run the first time that a user logs onto the computer.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[CommandLine](microsoft-windows-shell-setup-logoncommands-asynchronouscommand-commandline.md)</p></td>
<td><p>Specifies the path to the asynchronous command to be run.</p></td>
</tr>
<tr class="even">
<td><p>[Description](microsoft-windows-shell-setup-logoncommands-asynchronouscommand-description.md)</p></td>
<td><p>Specifies a brief description of the asynchronous command to be run.</p></td>
</tr>
<tr class="odd">
<td><p>[Order](microsoft-windows-shell-setup-logoncommands-asynchronouscommand-order.md)</p></td>
<td><p>Specifies a unique value for each command.</p>
<div class="alert">
<strong>Important</strong>  
<p>The computer does not wait for one command to finish before it starts the next one.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td><p>[RequiresUserInput](microsoft-windows-shell-setup-logoncommands-asynchronouscommand-requiresuserinput.md)</p></td>
<td><p>This setting is not used.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


oobeSystem

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md) | [LogonCommands](microsoft-windows-shell-setup-logoncommands.md) | **AsynchronousCommand**

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md).

## XML Example


The following XML output shows how to set logon commands.

``` syntax
<LogonCommands>
   <AsynchronousCommand wcm:action="add">
      <CommandLine>c:\asynccommands\command1.exe</CommandLine>
      <Description>Description_of_command1</Description>
      <Order>1</Order>
   </AsynchronousCommand>
   <AsynchronousCommand wcm:action="add">
      <CommandLine>c:\asynccommands\command2.exe</CommandLine>
      <Description>Description_of_command2</Description>
      <Order>2</Order>
   </AsynchronousCommand>
</LogonCommands>
```

## Related topics


[LogonCommands](microsoft-windows-shell-setup-logoncommands.md)

[SynchronousCommand](microsoft-windows-shell-setup-firstlogoncommands-synchronouscommand.md)

 

 







