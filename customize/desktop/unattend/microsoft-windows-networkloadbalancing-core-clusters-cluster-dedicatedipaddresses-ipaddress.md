---
title: IpAddress
description: IpAddress
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e844f577-a3b6-4295-8fab-1965c77718c0
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# IpAddress


`IpAddress` specifies details about a host's unique IP address that is used for network traffic not associated with the cluster. At least one `IpAddress` setting must be specified.

## Child Element


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Key](microsoft-windows-networkloadbalancing-core-clusters-cluster-dedicatedipaddresses-ipaddress-key.md)</p></td>
<td><p>Specifies the name of the host's unique IP address.</p>
<div class="alert">
<strong>Note</strong>  
<p>This XML attribute does not appear in the <strong>Properties</strong> pane of Windows System Image Manager (Windows SIM) until you add <code>IpAddress</code> to the answer file.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td><p>[IpAddress](microsoft-windows-networkloadbalancing-core-clusters-cluster-dedicatedipaddresses-ipaddress-ipaddress.md)</p></td>
<td><p>Specifies the host's unique IP address.</p></td>
</tr>
<tr class="odd">
<td><p>[NetworkMask](microsoft-windows-networkloadbalancing-core-clusters-cluster-dedicatedipaddresses-ipaddress-networkmask.md)</p></td>
<td><p>Specifies the network mask for the host's unique IP address.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


specialize

## Parent Hierarchy


[microsoft-windows-networkloadbalancing-core-](microsoft-windows-networkloadbalancing-core.md) | [Clusters](microsoft-windows-networkloadbalancing-core-clusters.md) | [Cluster](microsoft-windows-networkloadbalancing-core-clusters-cluster.md) | [DedicatedIpAddresses](microsoft-windows-networkloadbalancing-core-clusters-cluster-dedicatedipaddresses.md) | **IpAddress**

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [microsoft-windows-networkloadbalancing-core-](microsoft-windows-networkloadbalancing-core.md).

## XML Example


The following XML output specifies a host's unique IP address.

``` syntax
<IpAddress wcm:keyValue="Ip1>
   <IpAddress>10.192.45.1</IpAddress>
   <NetworkMask>255.255.255.0</NetworkMask>
</IpAddress>
```

## Related topics


[DedicatedIpAddresses](microsoft-windows-networkloadbalancing-core-clusters-cluster-dedicatedipaddresses.md)

 

 







