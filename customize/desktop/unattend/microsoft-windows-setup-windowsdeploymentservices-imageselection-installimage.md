---
title: InstallImage
description: InstallImage
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9b6c8795-e16d-45ee-aa9c-a0e0fa430e90
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# InstallImage


`InstallImage` identifies the image to be installed and its Windows Deployment Services group.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Filename](microsoft-windows-setup-windowsdeploymentservices-imageselection-installimage-filename.md)</p></td>
<td><p>Specifies the file name of the image to be installed.</p></td>
</tr>
<tr class="even">
<td><p>[ImageGroup](microsoft-windows-setup-windowsdeploymentservices-imageselection-installimage-imagegroup.md)</p></td>
<td><p>Specifies the image group of the image to be installed.</p></td>
</tr>
<tr class="odd">
<td><p>[ImageName](microsoft-windows-setup-windowsdeploymentservices-imageselection-installimage-imagename.md)</p></td>
<td><p>Specifies the name of the image to be installed.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


windowsPE

## Parent Hierarchy


[microsoft-windows-setup-](microsoft-windows-setup.md) | [WindowsDeploymentServices](microsoft-windows-setup-windowsdeploymentservices.md) | [ImageSelection](microsoft-windows-setup-windowsdeploymentservices-imageselection.md) | **InstallImage**

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


[ImageSelection](microsoft-windows-setup-windowsdeploymentservices-imageselection.md)

 

 







