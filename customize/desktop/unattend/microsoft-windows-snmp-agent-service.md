---
title: Microsoft-Windows-SNMP-Agent-Service
description: Microsoft-Windows-SNMP-Agent-Service
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a0c7d7e4-9d13-4889-b411-95c1910bab54
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Microsoft-Windows-SNMP-Agent-Service


The Microsoft-Windows-SNMP-Agent-Service component enables the computer to process Simple Network Management Protocol (SNMP) requests. The service receives the SNMP requests from the network, decodes them, and then dispatches them to the appropriate SNMP Extension agent.

The service is also responsible for sending traps on behalf of SNMP Extension agents, and forwarding trap messages to the appropriate configured management systems.

If the service is stopped, then the computer cannot process SNMP requests. If this service is disabled, then any services that explicitly depend on it fail to start.

You can use this setting in core installations of Windows Server 2008, Windows Server 2008 R2, and Windows Server 2012, by enabling **SNMP-SC** in the Windows Foundation package.

For more information, see [Simple Network Management Protocol](http://go.microsoft.com/fwlink/?LinkId=139843).

## In This Section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Term</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[EnableAuthenticationTraps](microsoft-windows-snmp-agent-service-enableauthenticationtraps.md)</p></td>
<td><p>Specifies whether to send an authentication trap when an unauthorized community or host requests information.</p></td>
</tr>
<tr class="even">
<td><p>[PermittedManagers](microsoft-windows-snmp-agent-service-permittedmanagers.md)</p></td>
<td><p>Specifies whether the computer accepts SNMP requests from any host or from only a set of hosts. If no permitted managers are specified, then the SNMP service accepts packets from any host.</p></td>
</tr>
<tr class="odd">
<td><p>[RFC1156Agent](microsoft-windows-snmp-agent-service-rfc1156agent.md)</p></td>
<td><p>Specifies details about the computer.</p></td>
</tr>
<tr class="even">
<td><p>[TrapConfiguration](microsoft-windows-snmp-agent-service-trapconfiguration.md)</p></td>
<td><p>Specifies details about the trap configurations used by the computer.</p></td>
</tr>
<tr class="odd">
<td><p>[ValidCommunities](microsoft-windows-snmp-agent-service-validcommunities.md)</p></td>
<td><p>Specifies the community names from which the computer running the SNMP service can handle requests for a management application, such as GET, SET, GETNEXT, and GETBULK.</p></td>
</tr>
</tbody>
</table>

 

## Applies To


To determine whether a component applies to the image you’re building, load your image into Windows SIM and search for the component or setting name. For information on how to view components and settings, see [Configure Components and Settings in an Answer File](https://msdn.microsoft.com/library/windows/hardware/dn915078).

## Related topics


[Components](components-b-unattend.md)

 

 







