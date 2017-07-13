---
title: OfflineIdentification
description: OfflineIdentification
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1D630A37-BC16-4CD6-98CA-7DECE0BEE85E
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# OfflineIdentification


`OfflineIdentification` specifies the account information used to join a domain during Windows Setup.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Provisioning](microsoft-windows-unattendedjoin-offlineidentfication-provisioning.md)</p></td>
<td><p>Specifies the account information used to join a domain during Windows Setup.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


offlineServicing

## Parent Hierarchy


[Microsoft-Windows-UnattendedJoin](microsoft-windows-unattendedjoin.md) | **OfflineIdentification**

## Applies To

For a list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-UnattendedJoin](microsoft-windows-unattendedjoin.md).

## XML Example


The following XML output shows how to set the identification settings.

```
<OfflineIdentification>
  <Provisioning>
    <AccountData>BASE64-ENCODED-BLOB</AccountData>
  </Provisioning>
</OfflineIdentification>
```

## Related topics


[Microsoft-Windows-UnattendedJoin](microsoft-windows-unattendedjoin.md)

 

 







