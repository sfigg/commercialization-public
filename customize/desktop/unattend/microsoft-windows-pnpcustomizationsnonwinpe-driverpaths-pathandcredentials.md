---
title: PathAndCredentials
description: PathAndCredentials
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4c871867-2d71-4f1d-a167-6488e2d74b1d
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# PathAndCredentials


`PathAndCredentials` is a list item type and specifies the local or Universal Naming Convention (UNC) path to an additional location for out-of-box device drivers and the credentials (optional) used to access that path.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Credentials](microsoft-windows-pnpcustomizationsnonwinpe-driverpaths-pathandcredentials-credentials.md)</p></td>
<td><p>Specifies the credentials (optional) used to access the path specified by the [Path](microsoft-windows-pnpcustomizationsnonwinpe-driverpaths-pathandcredentials-path.md).</p></td>
</tr>
<tr class="even">
<td><p>[Key](microsoft-windows-pnpcustomizationsnonwinpe-driverpaths-pathandcredentials-key.md)</p></td>
<td><p>Specifies a unique string identifier for the driver path.</p></td>
</tr>
<tr class="odd">
<td><p>[Path](microsoft-windows-pnpcustomizationsnonwinpe-driverpaths-pathandcredentials-path.md)</p></td>
<td><p>Specifies a local or UNC path that contains additional out-of-box device drivers that you copy to the Windows installation.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


auditSystem

offlineServicing

## Parent Hierarchy


[Microsoft-Windows-PnpCustomizationsNonWinPE](microsoft-windows-pnpcustomizationsnonwinpe.md) | [DriverPaths](microsoft-windows-pnpcustomizationsnonwinpe-driverpaths.md) | **PathAndCredentials**

## Applies To


For the list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-PnpCustomizationsNonWinPE](microsoft-windows-pnpcustomizationsnonwinpe.md).

## XML Example


The following XML output specifies the UNC paths to two additional locations for device drivers and the credentials used to access those paths.

```
<DriverPaths>
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


[Microsoft-Windows-PnpCustomizationsNonWinPE](microsoft-windows-pnpcustomizationsnonwinpe.md)

 

 







