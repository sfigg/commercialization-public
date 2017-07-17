---
title: NameServerList
description: NameServerList
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f5655447-81a1-48ea-8ac6-18ac6f9e7b5d
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# NameServerList


`NameServerList` is a container for IP addresses.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[IpAddress](microsoft-windows-netbt-interfaces-interface-nameserverlist-ipaddress.md)</p></td>
<td><p>Specifies an IP address.</p></td>
</tr>
</tbody>
</table>

 

## Parent Hierarchy


[microsoft-windows-netbt-](microsoft-windows-netbt.md) | [Interfaces](microsoft-windows-netbt-interfaces.md) | [Interface](microsoft-windows-netbt-interfaces-interface.md) | **NameServerList**

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [microsoft-windows-netbt-](microsoft-windows-netbt.md).

## XML Example


The following XML output shows how to configure microsoft-windows-netbt-.

```
<Interfaces>
   <Interface wcm:action="add">
      <NameServerList>
         <IpAddress wcm:action="add" wcm:keyValue="IpAddress1">123.45.67.89</IpAddress>
         <IpAddress wcm:action="add" wcm:keyValue="IpAddress2">56.78.90.123</IpAddress>
       </NameServerList>
       <NetbiosOptions>2</NetbiosOptions>
       <Identifier>Local Area Connection</Identifier>
   </Interface>
</Interfaces>
```

## Related topics


[Interface](microsoft-windows-netbt-interfaces-interface.md)

 

 







