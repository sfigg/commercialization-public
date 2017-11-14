---
title: FirewallGroups
description: FirewallGroups
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 359cb5d9-7711-4f40-a22f-62eb99ee70ce
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# FirewallGroups

`FirewallGroups` specifies Windows Firewall groups.

## Child Elements

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[FirewallGroup](networking-mpssvc-svcfirewallgroups-firewallgroup.md)</p></td>
<td><p>Specifies a Windows Firewall group.</p></td>
</tr>
</tbody>
</table>

## Parent Hierarchy

[Networking-MPSSVC-Svc](networking-mpssvc-svc.md) | **FirewallGroups**

## Valid Passes

specialize

## Applies To

For a list of the supported Windows editions and architectures that this component supports, see [Networking-MPSSVC-Svc](networking-mpssvc-svc.md).

## XML Example

The following XML output shows how to set Windows Firewall groups.

```XML
<FirewallGroups>
      <FirewallGroup wcm:action="add" wcm:keyValue="RemoteDesktop">
      <Active>true</Active>
      <Group>@FirewallAPI.dll,-28752</Group>
      <Profile>all</Profile>
   </FirewallGroup>
</FirewallGroups>
```

> [!Note]
> The `Group` value must be the Group ID associated with the firewall group you want to reference (for example, the `Remote Desktop` group corresponds to the ID `@FirewallAPI.dll,-28752`). The ID, as opposed to the group's display name, is required in order to facilitate multilingual Unattend installations. Group IDs can be obtained using Network Security commands in PowerShell. See the child topic on the [Group](networking-mpssvc-svcfirewallgroups-firewallgroup-group.md) parameter for more detailed instructions.

## Related topics

[Networking-MPSSVC-Svc](networking-mpssvc-svc.md)