---
title: Credentials
description: Credentials
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b2a48f43-e841-4b17-ae68-17da016c30b6
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Credentials


`Credentials` specifies the domain, the user name, and the password used to join a domain during Windows Setup.

**Note**  
Use either [Provisioning](microsoft-windows-unattendedjoin-identification-provisioning.md) or Credentials to join an account to the domain. The settings in Provisioning will be used to join the account to the domain, if values are entered for both the Provisioning and Credentials settings.

 

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Domain](microsoft-windows-unattendedjoin-identification-credentials-domain.md)</p></td>
<td><p>Specifies the domain of the account used when joining a domain.</p></td>
</tr>
<tr class="even">
<td><p>[Password](microsoft-windows-unattendedjoin-identification-credentials-password.md)</p></td>
<td><p>Specifies the password of the user account used for authentication when joining a domain.</p></td>
</tr>
<tr class="odd">
<td><p>[Username](microsoft-windows-unattendedjoin-identification-credentials-username.md)</p></td>
<td><p>Specifies the user account used for authentication when joining a domain.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


specialize

## Parent Hierarchy


[Microsoft-Windows-UnattendedJoin](microsoft-windows-unattendedjoin.md) | [Identification](microsoft-windows-unattendedjoin-identification.md) | **Credentials**

## Applies To


For the list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-UnattendedJoin](microsoft-windows-unattendedjoin.md).

## XML Example


The following XML output shows how to set the identification settings.

``` syntax
<Identification>
   <Credentials>
      <Domain>fabrikam.com</Domain>
      <Password>MyPassword</Password>
      <Username>MyUserName</Username>
   </Credentials>
   <JoinDomain>fabrikam.com</JoinDomain>
   <MachinePassword>ComputerPassword</MachinePassword>
</Identification>
```

## Related topics


[Identification](microsoft-windows-unattendedjoin-identification.md)

 

 







