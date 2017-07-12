---
title: DriverPaths
description: DriverPaths
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9fc40cc0-1858-4526-9cbb-f580eb080d86
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# DriverPaths


`DriverPaths` specifies one or more paths that contain out-of-box drivers. These out-of-box drivers are copied to the Windows image during the **windowsPE** configuration pass. `DriverPaths` is a container for one or more [PathAndCredentials](microsoft-windows-pnpcustomizationswinpe-driverpaths-pathandcredentials.md) list items.

By using this setting, you can add boot-critical and non boot–critical drivers to your Windows image before it is installed.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[PathAndCredentials](microsoft-windows-pnpcustomizationswinpe-driverpaths-pathandcredentials.md)</p></td>
<td><p>Specifies a local or Universal Naming Convention (UNC) path to the out-of-box drivers and, optionally, the [Credentials](microsoft-windows-pnpcustomizationswinpe-driverpaths-pathandcredentials-credentials.md) used to access them.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


windowsPE

## Parent Hierarchy


[microsoft-windows-pnpcustomizationswinpe-](microsoft-windows-pnpcustomizationswinpe.md) | **DriverPaths**

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [microsoft-windows-pnpcustomizationswinpe-](microsoft-windows-pnpcustomizationswinpe.md).

## XML Example


The following XML output specifies the UNC paths to additional locations for device drivers and the credentials used to access those paths.

``` syntax
<DriverPaths>
<!-- First PathAndCredentials list item -->
   <PathAndCredentials wcm:action="add" wcm:keyValue="1">
      <Path>\\myFirstDriverPath\DriversFolder</Path>
      <Credentials>
         <Domain>MyDomain</Domain>
         <Username>MyUsername</Username>
         <Password>MyPassword</Password>
      </Credentials>
   </PathAndCredentials>
<!-- Second PathAndCredentials list item -->
   <PathAndCredentials wcm:action="add" wcm:keyValue="2">
      <Path>C:\Drivers</Path>
      <Credentials>
         <Domain>MyComputerName</Domain>
         <Username>MyUsername</Username>
         <Password>MyPassword</Password>
      </Credentials>
   </PathAndCredentials>
</DriverPaths>
```

## Related topics


[microsoft-windows-pnpcustomizationswinpe-](microsoft-windows-pnpcustomizationswinpe.md)

 

 







