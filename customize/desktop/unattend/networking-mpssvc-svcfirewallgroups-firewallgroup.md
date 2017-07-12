---
title: FirewallGroup
description: FirewallGroup
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8a7d88a9-354f-4ec9-8f13-919de9297b1c
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# FirewallGroup


`FirewallGroup` specifies a Windows Firewall group.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Active](networking-mpssvc-svcfirewallgroups-firewallgroup-active.md)</p></td>
<td><p>Specifies whether a Windows Firewall group is active.</p></td>
</tr>
<tr class="even">
<td><p>[Group](networking-mpssvc-svcfirewallgroups-firewallgroup-group.md)</p></td>
<td><p>Specifies a Windows Firewall group name</p></td>
</tr>
<tr class="odd">
<td><p>[Key](networking-mpssvc-svcfirewallgroups-firewallgroup-key.md)</p></td>
<td><p>Specifies a unique name that you can use to identify the Firewall group.</p></td>
</tr>
<tr class="even">
<td><p>[Profile](networking-mpssvc-svcfirewallgroups-firewallgroup-profile.md)</p></td>
<td><p>Specifies a Windows Firewall group profile.</p></td>
</tr>
</tbody>
</table>

 

## Parent Hierarchy


[Networking-MPSSVC-Svc](networking-mpssvc-svc.md) | [FirewallGroups](networking-mpssvc-svcfirewallgroups.md) | **FirewallGroup**

## Valid Passes


specialize

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [Networking-MPSSVC-Svc](networking-mpssvc-svc.md).

## XML Example


The following XML output shows how to set Windows Firewall groups.

``` syntax
<FirewallGroups>
      <FirewallGroup wcm:action="add" wcm:keyValue="RemoteDesktop">
      <Active>true</Active> 
      <Group>Remote Desktop</Group> 
      <Profile>all</Profile> 
   </FirewallGroup>
</FirewallGroups>
```

## Related topics


[FirewallGroups](networking-mpssvc-svcfirewallgroups.md)

 

 







