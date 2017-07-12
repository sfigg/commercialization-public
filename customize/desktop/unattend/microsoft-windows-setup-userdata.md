---
title: UserData
description: UserData
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 24c2c860-ac2e-47c4-9a67-0d1dd3a3b364
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# UserData


`UserData` specifies user settings.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[AcceptEula](microsoft-windows-setup-userdata-accepteula.md)</p></td>
<td><p>Specifies whether to automatically accept the Microsoft Software License Terms.</p></td>
</tr>
<tr class="even">
<td><p>[FullName](microsoft-windows-setup-userdata-fullname.md)</p></td>
<td><p>Specifies the name of the end user.</p></td>
</tr>
<tr class="odd">
<td><p>[Organization](microsoft-windows-setup-userdata-organization.md)</p></td>
<td><p>Specifies the name of the organization that owns the computer.</p></td>
</tr>
<tr class="even">
<td><p>[ProductKey](microsoft-windows-setup-userdata-productkey.md)</p></td>
<td><p>Specifies the product key to use, which determines the edition of Windows to install.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


windowsPE

## Parent Hierarchy


[microsoft-windows-setup-](microsoft-windows-setup.md) | **UserData**

## Applies To


For the list of the supported Windows editions and architectures that this component supports, see [microsoft-windows-setup-](microsoft-windows-setup.md).

## XML Example


The following XML output shows how to set user data.

``` syntax
<UserData>
   <AcceptEula>true</AcceptEula>
   <FullName>EndUserName</FullName>
   <Organization>Fabrikam</Organization>
   <ProductKey>
      <Key>12345-12345-12345-12345-12345</Key>
      <WillShowUI>Never</WillShowUI>
   </ProductKey>
</UserData>
```

## Related topics


[microsoft-windows-setup-](microsoft-windows-setup.md)

 

 







