---
title: Login
description: Login
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4a27e828-5209-4fcb-9be4-e832a2806ee7
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Login


`Login` specifies the credentials used for Windows Deployment Services login and in what circumstances the user interface (UI) is displayed for login.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Credentials](microsoft-windows-setup-windowsdeploymentservices-login-credentials.md)</p></td>
<td><p>Specifies the credentials for Windows Deployment Services login.</p></td>
</tr>
<tr class="even">
<td><p>[WillShowUI](microsoft-windows-setupwindowsdeploymentservices-login-willshowui.md)</p></td>
<td><p>Specifies in what circumstances the UI is displayed for Windows Deployment Services login.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


windowsPE

## Parent Hierarchy


[microsoft-windows-setup-](microsoft-windows-setup.md) | [WindowsDeploymentServices](microsoft-windows-setup-windowsdeploymentservices.md) | **Login**

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [microsoft-windows-setup-](microsoft-windows-setup.md).

## XML Example


The following XML output shows a complete Windows Deployment Services deployment.

``` syntax
<WindowsDeploymentServices>
   <Login>
      <WillShowUI>OnError</WillShowUI>
      <Credentials>
         <Username>Administrator</Username>
         <Domain>MY-DOMAIN-NAME</Domain>
         <Password>********</Password>
      </Credentials>
   </Login>
  <ImageSelection>
      <WillShowUI>OnError</WillShowUI>
      <InstallImage>
         <ImageName>MY_IMAGE_NAME</ImageName>
         <ImageGroup>My IMAGE GROUP</ImageGroup>
      </InstallImage>
      <InstallTo>
         <DiskID>0</DiskID>
         <PartitionID>1</PartitionID>
      </InstallTo>
   </ImageSelection>
</WindowsDeploymentServices>
<DiskConfiguration>
   <WillShowUI>OnError</WillShowUI>
   <Disk>
      <DiskID>0</DiskID>
      <WillWipeDisk>false</WillWipeDisk>
      <ModifyPartitions>
         <ModifyPartition>
            <Order>1</Order>
            <PartitionID>3</PartitionID>
            <Letter>C</Letter>
            <Label>TestOS</Label>
            <Format>NTFS</Format>
            <Active>true</Active>
            <Extend>false</Extend>
         </ModifyPartition>
      </ModifyPartitions>
   </Disk>
</DiskConfiguration>
```

## Related topics


[WindowsDeploymentServices](microsoft-windows-setup-windowsdeploymentservices.md)

 

 







