---
title: WindowsDeploymentServices
description: WindowsDeploymentServices
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 31e8e886-f042-44df-9a66-d945c453d320
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# WindowsDeploymentServices


`WindowsDeploymentServices` is a container for settings for Windows Deployment Services, the updated and redesigned version of Remote Installation Services (RIS). You can use it to set up new computers through a network-based, unattended installation.

These settings are specific to Windows Deployment Services installations and are necessary for fully automating installations with the Windows Deployment Services client.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[ImageSelection](microsoft-windows-setup-windowsdeploymentservices-imageselection.md)</p></td>
<td><p>Specifies the image name and the group, as well as any language pack to install, the location to install it to, and whether the user interface (UI) is displayed.</p></td>
</tr>
<tr class="even">
<td><p>[Login](microsoft-windows-setup-windowsdeploymentservices-login.md)</p></td>
<td><p>Specifies credentials for logging on to Windows Deployment Services.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


windowsPE

## Parent Hierarchy


[microsoft-windows-setup-](microsoft-windows-setup.md) | **WindowsDeploymentServices**

## Applies To


For the list of the Windows editions and architectures that this component supports, see [microsoft-windows-setup-](microsoft-windows-setup.md).

## XML Example


The following XML output shows a complete Windows Deployment Services deployment.

```
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


[microsoft-windows-setup-](microsoft-windows-setup.md)

 

 







