---
title: Interfaces
description: Interfaces
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d597b8c9-aa4e-4ac0-9b89-64ead90d4ae5
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Interfaces


`Interfaces` serves as a container for groups of [Interface](microsoft-windows-netbt-interfaces-interface.md)-specific settings.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Interface](microsoft-windows-netbt-interfaces-interface.md)</p></td>
<td><p>Contains all settings for a single network interface.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


specialize

## Parent Hierarchy


[microsoft-windows-netbt-](microsoft-windows-netbt.md) | **Interfaces**

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [microsoft-windows-netbt-](microsoft-windows-netbt.md).

## XML Example


The following XML output shows how to configure [microsoft-windows-netbt-](microsoft-windows-netbt.md).

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


[microsoft-windows-netbt-](microsoft-windows-netbt.md)

 

 







