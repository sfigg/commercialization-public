---
title: VirtualIpAddresses
description: VirtualIpAddresses
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e4ce9771-cd29-4cd0-8b3c-9b0e77b8096b
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# VirtualIpAddresses


`VirtualIpAddresses` specifies the cluster virtual IP addresses. This is a required setting.

**Note**  
To enable this Network Load Balancing setting, the NetworkLoadBalancingFullServer package must be enabled in the Windows image you are installing. To do this, use Windows System Image Manager to add the Microsoft-Windows-Foundation-Package to your answer file, and then configure the NetworkLoadBalancingFullServer package to enable it. For more information about adding and configuring packages, see the [Windows Assessment and Deployment (Windows ADK) Technical Reference](http://go.microsoft.com/fwlink/?LinkId=206587).

 

## Child Element


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[IpAddress](microsoft-windows-networkloadbalancing-core-clusters-cluster-virtualipaddresses-ipaddress.md)</p></td>
<td><p>Specifies details about the cluster virtual IP addresses.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


specialize

## Parent Hierarchy


[microsoft-windows-networkloadbalancing-core-](microsoft-windows-networkloadbalancing-core.md) | [Clusters](microsoft-windows-networkloadbalancing-core-clusters.md) | [Cluster](microsoft-windows-networkloadbalancing-core-clusters-cluster.md) | **VirtualIPAddresses**

## Applies To


For the list of the supported Windows editions and architectures that this component supports, see [microsoft-windows-networkloadbalancing-core-](microsoft-windows-networkloadbalancing-core.md).

## XML Example


The following XML output specifies details about the cluster's virtual IP addresses.

```
<VirtualIpAddresses>
   <IpAddress wcm:keyValue="Ip1">
      <IpAddress>10.192.45.1</IpAddress>
      <NetworkMask>255.255.255.0</NetworkMask>
   </IpAddress>
   <IpAddress wcm:keyValue="Ip2">
      <IpAddress>fe80::204:23ff:feb9:1111</IpAddress>
   </IpAddress>
</VirtualIpAddresses>
```

## Related topics


[Cluster](microsoft-windows-networkloadbalancing-core-clusters-cluster.md)

 

 







