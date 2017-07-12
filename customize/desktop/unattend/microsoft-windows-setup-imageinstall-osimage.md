---
title: OSImage
description: OSImage
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4450e367-9f46-4f5e-92bd-ba7ceb08df7e
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# OSImage


`OSImage` specifies the path and the destination of a Windows image (.wim) file that contains the image to install.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>

<tr class="even">
<td><p>[InstallFrom](microsoft-windows-setup-imageinstall-osimage-installfrom.md)</p></td>
<td><p>Specifies the path of the .wim file.</p></td>
</tr>
<tr class="odd">
<td><p>[InstallTo](microsoft-windows-setup-imageinstall-osimage-installto.md)</p></td>
<td><p>Specifies the disk and the partition to install the image to.</p></td>
</tr>
<tr class="even">
<td><p>[InstallToAvailablePartition](microsoft-windows-setup-imageinstall-osimage-installto-availablepartition.md)</p></td>
<td><p>Specifies whether to install to the first available bootable partition on a computer that does not already have an installation of Windows.</p></td>
</tr>
<tr class="odd">
<td><p>[WillShowUI](microsoft-windows-setup-imageinstall-osimage-willshowui.md)</p></td>
<td><p>Specifies in what circumstances to show the user interface (UI).</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


windowsPE

## Parent Hierarchy


[microsoft-windows-setup-](microsoft-windows-setup.md) | [ImageInstall](microsoft-windows-setup-imageinstall.md) | **OSImage**

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [microsoft-windows-setup-](microsoft-windows-setup.md).

## XML Example


The following XML output shows how to set the `ImageInstall` setting to install both an operating system image and a data image.

``` syntax
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


[ImageInstall](microsoft-windows-setup-imageinstall.md)

 

 







