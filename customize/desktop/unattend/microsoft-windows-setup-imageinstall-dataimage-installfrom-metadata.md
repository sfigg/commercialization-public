---
title: MetaData
description: MetaData
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 26f0fe3b-3303-4c3d-b5e6-d3a938e61c03
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# MetaData


`MetaData` specifies a data image in a Windows image (.wim) file.

Use the MetaData\\[Key](microsoft-windows-setup-imageinstall-dataimage-installfrom-metadata-key.md) and MetaData\\[Value](microsoft-windows-setup-imageinstall-dataimage-installfrom-metadata-value.md) settings together to select an image based on the index, the name, or the description of the data image.

## To determine what images are available to be installed


Use the `DISM /Get-WimInfo` command to determine which images and editions are included on your data image (.wim) file, such as in the following example:

``` syntax
DISM /Get-WimInfo /WimFile:N:\Drivers\FNBDrivers.wim
```

Information about the available images will be displayed; for example:

``` syntax
Deployment Image Servicing and Management tool
Version: 6.1.7108.0
 
Details for image : N:\Drivers\FNBDrivers.wim
 
Index : 1
Name : FNB1Drivers
Description : FabriKam Model FNB1 Drivers
Size : 1,234,567 bytes
 
Index : 2
Name : FNB2Drivers
Description : FabriKam Model FNB2 Drivers
Size : 2,234,567 bytes
 
Index : 3
Name : FNB3Drivers
Description : FabriKam Model FNB3 Drivers
Size : 3,234,567 bytes
```

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Key](microsoft-windows-setup-imageinstall-dataimage-installfrom-metadata-key.md)</p></td>
<td><p>Required. Specifies whether the image index, name, or description is used to specify the metadata for an image in a .wim file.</p></td>
</tr>
<tr class="even">
<td><p>[Value](microsoft-windows-setup-imageinstall-dataimage-installfrom-metadata-value.md)</p></td>
<td><p>Required. Specifies the value of the <code>Key</code> element for the data image.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


windowsPE

## Parent Hierarchy


[microsoft-windows-setup-](microsoft-windows-setup.md) | [ImageInstall](microsoft-windows-setup-imageinstall.md) | [DataImage](microsoft-windows-setup-imageinstall-dataimage.md) | [InstallFrom](microsoft-windows-setup-imageinstall-dataimage-installfrom.md) | **MetaData**

## Applies To


For a list of the Windows editions and architectures that this component supports, see [microsoft-windows-setup-](microsoft-windows-setup.md).

## XML Examples


The following XML output shows how to configure the `DataImage` setting to install a specific data image from a custom .wim file located on a network share using the image index value.

``` syntax
<ImageInstall>
    <DataImage>
        <InstallFrom>
            <Credentials>
                <Domain>FabrikamDomain</Domain>
                <Password>MyPassword</Password>
                <Username>MyUsername</Username>
            </Credentials>
            <Path>\\networkshare\share\Drivers\FNBDrivers.wim </Path>
            <MetaData wcm:action="add">
                <Key>/IMAGE/INDEX</Key>
                <Value>1</Value>
            </MetaData>
        </InstallFrom>
        <InstallTo>
            <DiskID>0</DiskID>
            <PartitionID>3</PartitionID>
        </InstallTo>
        <WillShowUI>OnError</WillShowUI>
    </DataImage>
</ImageInstall>
```

The following XML output shows how to configure the `MetaData` setting to install a specific data image using the image name.

``` syntax
<ImageInstall>
    <DataImage>
        <InstallFrom>
            <Credentials>
                <Domain>FabrikamDomain</Domain>
                <Password>MyPassword</Password>
                <Username>MyUsername</Username>
            </Credentials>
            <Path>\\networkshare\share\Drivers\FNBDrivers.wim </Path>
            <MetaData wcm:action="add">
                <Key>/IMAGE/NAME</Key>
                <Value>FNB2Drivers</Value>
            </MetaData>
        </InstallFrom>
        <InstallTo>
            <DiskID>0</DiskID>
            <PartitionID>3</PartitionID>
        </InstallTo>
        <WillShowUI>OnError</WillShowUI>
    </DataImage>
</ImageInstall>
```

The following XML output shows how to configure the `MetaData` setting to install a specific data image from a custom .wim file located on a network share using the image description.

``` syntax
<ImageInstall>
    <OSImage>
        <InstallFrom>
            <Credentials>
                <Domain>FabrikamDomain</Domain>
                <Password>MyPassword</Password>
                <Username>MyUsername</Username>
            </Credentials>
            <Path>\\networkshare\share\Drivers\FNBDrivers.wim </Path>
            <MetaData wcm:action="add">
                <Key>/IMAGE/DESCRIPTION</Key>
                <Value>FabriKam Model FNB3 Drivers</Value>
            </MetaData>
        </InstallFrom>
        <InstallTo>
            <DiskID>0</DiskID>
            <PartitionID>3</PartitionID>
        </InstallTo>
        <WillShowUI>OnError</WillShowUI>
        <InstallToAvailablePartition>false</InstallToAvailablePartition>
    </OSImage>
</ImageInstall>
```

## Related topics


[InstallFrom](microsoft-windows-setup-imageinstall-dataimage-installfrom.md)

[Key](microsoft-windows-setup-imageinstall-dataimage-installfrom-metadata-key.md)

[Value](microsoft-windows-setup-imageinstall-dataimage-installfrom-metadata-value.md)

 

 







