---
title: Interface
description: Interface
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 67491f8a-22bf-47be-882a-5e7d52d85b92
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Interface


`Interface` specifies settings for a particular interface.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Identifier](microsoft-windows-netbt-interfaces-interface-identifier.md)</p></td>
<td><p>Specifies the interface to apply to other settings in <code>Interface</code>.</p></td>
</tr>
<tr class="even">
<td><p>[NameServerList](microsoft-windows-netbt-interfaces-interface-nameserverlist.md)</p></td>
<td><p>Specifies the list of name servers.</p></td>
</tr>
<tr class="odd">
<td><p>[NetbiosOptions](microsoft-windows-netbt-interfaces-interface-netbiosoptions.md)</p></td>
<td><p>Specifies security settings for the NetBIOS service.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


specialize

## Parent Hierarchy


[microsoft-windows-netbt-](microsoft-windows-netbt.md) | [Interfaces](microsoft-windows-netbt-interfaces.md) | **Interface**

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [microsoft-windows-netbt-](microsoft-windows-netbt.md).

## XML Example


The following XML output shows how to configure microsoft-windows-netbt-.

``` syntax
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


[Interfaces](microsoft-windows-netbt-interfaces.md)

 

 







