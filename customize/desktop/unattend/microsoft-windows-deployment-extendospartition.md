---
title: ExtendOSPartition
description: ExtendOSPartition
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 40b1e3fa-b695-40ed-8da1-75283d0c1c57
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# ExtendOSPartition


`ExtendOSPartition` specifies whether to extend the partition on which you are installing Windows. This setting is required for scenarios in which a customer has installed the Windows image by using a sector-based imaging solution and now plans on extending the partition.

These settings are valid only for NTFS file-system partitions.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Extend](microsoft-windows-deployment-extendospartition-extend.md)</p></td>
<td><p>Specifies whether to extend the partition to fill the entire hard disk.</p></td>
</tr>
<tr class="even">
<td><p>[Size](microsoft-windows-deployment-extendospartition-size.md)</p></td>
<td><p>Specifies the size of the extension in megabytes. If the total value of the current size of the partition plus this setting exceeds the available space, then the partition is not extended.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
If both of these are set, an error is logged, and installation is terminated.

 

## Valid Passes


auditSystem

generalize

oobeSystem

specialize

## Parent Hierarchy


[Microsoft-Windows-Deployment](microsoft-windows-deployment.md) | **ExtendOSPartition**

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-Deployment](microsoft-windows-deployment.md).

## XML Example


The following XML output shows a deployment with no asynchronous or synchronous commands.

```
<AuditComputerName>
   <MustReboot>true</MustReboot>
   <Name>MyComputer</Name>
</AuditComputerName>
<ExtendOSPartition>
   <Extend>true</Extend>
</ExtendOSPartition>
<Reseal>
   <ForceShutdownNow>true</ForceShutdownNow>
   <Mode>Audit</Mode>
</Reseal>
```

## Related topics


[Microsoft-Windows-Deployment](microsoft-windows-deployment.md)

 

 







