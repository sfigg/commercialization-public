---
title: RFC1156Agent
description: RFC1156Agent
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 00bc1efc-6efa-4044-8dd6-fe4e20933dc7
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# RFC1156Agent


`RFC1156` specifies the contact name, the physical location, and the SNMP services for the computer.

You can use this setting in core installations of Windows Server 2008, Windows Server 2008 R2, and Windows Server 2012, by enabling **SNMP-SC** in the Windows Foundation package.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Term</th>
<th>Definition</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[sysContact](microsoft-windows-snmp-agent-service-rfc1156agentsyscontact.md)</p></td>
<td><p>Specifies the contact name for this managed node, as well as information about how to contact this person.</p></td>
</tr>
<tr class="even">
<td><p>[sysLocation](microsoft-windows-snmp-agent-service-rfc1156agentsyslocation.md)</p></td>
<td><p>Specifies the physical location of the computer.</p></td>
</tr>
<tr class="odd">
<td><p>[sysServices](microsoft-windows-snmp-agent-service-rfc1156agentsysservices.md)</p></td>
<td><p>Specifies any combination of up to five Simple Network Management Protocol (SNMP) services.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


generalize

specialize

## Parent Hierarchy


[Microsoft-Windows-SNMP-Agent-Service](microsoft-windows-snmp-agent-service.md) | **RFC1156Agent**

## Applies To


For the list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-SNMP-Agent-Service](microsoft-windows-snmp-agent-service.md).

## XML Example


The following XML output shows how to set SNMP.

``` syntax
<PermittedManagers>
   <A1>networkhost</A1>
</PermittedManagers>
<RFC1156Agent>
   <sysContact>MyContact</sysContact>
   <sysLocation>MyLocation</sysLocation>
   <sysServices>65</sysServices>
</RFC1156Agent>
<TrapConfiguration>
   <TrapConfigurationItems wcm:action="add">
      <Community_Name>Private</Community_Name>
      <Traps>ComputerName</Traps>
   </TrapConfigurationItems>
   <TrapConfigurationItems wcm:action="add">
      <Community_Name>Public</Community_Name>
      <Traps>207.46.197.32</Traps>
   </TrapConfigurationItems>
</TrapConfiguration>
<ValidCommunities>
   <ValidCommunity wcm:action="add" wcm:keyValue="Community1">2</ValidCommunity>
   <ValidCommunity wcm:action="add" wcm:keyValue="Community2">4</ValidCommunity>
</ValidCommunities>
```

## Related topics


[Microsoft-Windows-SNMP-Agent-Service](microsoft-windows-snmp-agent-service.md)

 

 







