---
title: Microsoft-Windows-RemoteAssistance-Exe
description: Microsoft-Windows-RemoteAssistance-Exe
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d0fac731-479c-4ef6-8b4c-e4f72c2087d0
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Microsoft-Windows-RemoteAssistance-Exe


The Microsoft-Windows-RemoteAssistance-Exe component enables a user with a computer problem to receive assistance from another person who is located elsewhere. The helper can be a friend or a support professional. In the corporate environment, the helper is usually an employee receiving help from the corporate IT helpdesk. In the home environment, the user is often receiving help from a friend or a family member who is a power user and is remotely located.

To enable remote assistance, you must configure the Windows Firewall. Use the [FirstLogonCommands](microsoft-windows-shell-setup-firstlogoncommands.md) setting to create a command that configures Windows Firewall. Use `Netsh` to enable Remote Assistance. For example,

**netsh advfirewall firewall set rule group="Remote Assistance" new enable=yes**

## In This Section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[CreateEncryptedOnlyTickets](microsoft-windows-remoteassistance-exe-createencryptedonlytickets.md)</p></td>
<td><p>Specifies whether only encrypted tickets are created.</p></td>
</tr>
<tr class="even">
<td><p>[fAllowToGetHelp](microsoft-windows-remoteassistance-exe-fallowtogethelp.md)</p></td>
<td><p>Specifies that a user can request help from a friend or a support professional.</p></td>
</tr>
<tr class="odd">
<td><p>[fAllowFullControl](microsoft-windows-remoteassistance-exe-fallowfullcontrol.md)</p></td>
<td><p>Specifies that a friend or a support professional can take control of the computer of the person requesting assistance.</p></td>
</tr>
<tr class="even">
<td><p>[MaxTicketExpiry](microsoft-windows-remoteassistance-exe-maxticketexpiry.md)</p></td>
<td><p>Specifies the maximum amount of time that a ticket can live.</p></td>
</tr>
<tr class="odd">
<td><p>[MaxTicketExpiryUnits](microsoft-windows-remoteassistance-exe-maxticketexpiryunits.md)</p></td>
<td><p>Specifies the units for the maximum amount of time that a ticket can live.</p></td>
</tr>
</tbody>
</table>

 

## Applies To


To determine whether a component applies to the image you’re building, load your image into Windows SIM and search for the component or setting name. For information on how to view components and settings, see [Configure Components and Settings in an Answer File](https://msdn.microsoft.com/library/windows/hardware/dn915078).

## Related topics


[Components](components-b-unattend.md)

 

 







