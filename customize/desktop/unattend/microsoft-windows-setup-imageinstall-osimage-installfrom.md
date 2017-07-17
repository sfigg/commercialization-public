---
title: InstallFrom
description: InstallFrom
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b448ca50-b973-4c8e-98aa-e354df58ba0a
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# InstallFrom


`InstallFrom` specifies the Windows image (.wim) file that contains the image to install and the credentials used to access the file.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Credentials](microsoft-windows-setup-imageinstall-osimage-installfrom-credentials.md)</p></td>
<td><p>Specifies the credentials used to access the .wim file.</p></td>
</tr>
<tr class="even">
<td><p>[MetaData](microsoft-windows-setup-imageinstall-osimage-installfrom-metadata.md)</p></td>
<td><p>Specifies a unique Windows image in the .wim file to install.</p></td>
</tr>
<tr class="odd">
<td><p>[Path](microsoft-windows-setup-imageinstall-osimage-installfrom-path.md)</p></td>
<td><p>Specifies the path to the .wim file.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


windowsPE

## Parent Hierarchy


[microsoft-windows-setup-](microsoft-windows-setup.md) | [ImageInstall](microsoft-windows-setup-imageinstall.md) | [OSImage](microsoft-windows-setup-imageinstall-osimage.md) | **InstallFrom**

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [microsoft-windows-setup-](microsoft-windows-setup.md).

## XML Example


The following XML output shows how to set the `ImageInstall` setting to install both an operating system image and a data image.

```
<ImageInstall>
    <OSImage>
        <InstallFrom>
            <Credentials>
                <Domain>FabrikamDomain</Domain>
                <Password>MyPassword</Password>
                <Username>MyUsername</Username>
            </Credentials>
            <Path>\\networkshare\share\install.wim</Path>
            <MetaData wcm:action="add">
                <Key>/IMAGE/NAME</Key>
                <Value>FabrikamCustomOSImage</Value>
            </MetaData>
        </InstallFrom>
        <InstallTo>
            <DiskID>0</DiskID>
            <PartitionID>1</PartitionID>
        </InstallTo>
        <WillShowUI>OnError</WillShowUI>
        <InstallToAvailablePartition>false</InstallToAvailablePartition>
    </OSImage>
    <DataImage wcm:action="add">
        <InstallTo>
            <DiskID>0</DiskID>
            <PartitionID>2</PartitionID>
        </InstallTo>
        <InstallFrom>
            <Credentials>
                <Domain>FabrikamDomain</Domain>
                <Password>MyPassword</Password>
                <Username>MyUsername</Username>
            </Credentials>
            <Path>\\networkshare\share\data.wim</Path>
            <MetaData wcm:action="add">
                <Key>/IMAGE/NAME</Key>
                <Value>FabrikamData</Value>
            </MetaData>
        </InstallFrom>
        <Order>1</Order>
    </DataImage>
</ImageInstall>
```

## Related topics


[OSImage](microsoft-windows-setup-imageinstall-osimage.md)

 

 







