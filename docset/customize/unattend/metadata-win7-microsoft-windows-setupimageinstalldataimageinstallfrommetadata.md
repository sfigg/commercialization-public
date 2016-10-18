---
title: MetaData
description: MetaData
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 26f0fe3b-3303-4c3d-b5e6-d3a938e61c03
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: msdn
---

# MetaData


`MetaData` specifies a data image in a Windows® image (.wim) file.

Use the MetaData\\[Key](key-win7-microsoft-windows-setupimageinstalldataimageinstallfrommetadatakey.md) and MetaData\\[Value](value-win7-microsoft-windows-setupimageinstalldataimageinstallfrommetadatavalue.md) settings together to select an image based on the index, the name, or the description of the data image.

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
<td><p>[Key](key-win7-microsoft-windows-setupimageinstalldataimageinstallfrommetadatakey.md)</p></td>
<td><p>Required. Specifies whether the image index, name, or description is used to specify the metadata for an image in a .wim file.</p></td>
</tr>
<tr class="even">
<td><p>[Value](value-win7-microsoft-windows-setupimageinstalldataimageinstallfrommetadatavalue.md)</p></td>
<td><p>Required. Specifies the value of the <code>Key</code> element for the data image.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


windowsPE

## Parent Hierarchy


[Microsoft-Windows-Setup](microsoft-windows-setup-win7-microsoft-windows-setup.md) | [ImageInstall](imageinstall-win7-microsoft-windows-setupimageinstall.md) | [DataImage](dataimage-win7-microsoft-windows-setupimageinstalldataimage.md) | [InstallFrom](installfrom-win7-microsoft-windows-setupimageinstalldataimageinstallfrom.md) | **MetaData**

## Applies To


For a list of the Windows editions and architectures that this component supports, see [Microsoft-Windows-Setup](microsoft-windows-setup-win7-microsoft-windows-setup.md).

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


[InstallFrom](installfrom-win7-microsoft-windows-setupimageinstalldataimageinstallfrom.md)

[Key](key-win7-microsoft-windows-setupimageinstalldataimageinstallfrommetadatakey.md)

[Value](value-win7-microsoft-windows-setupimageinstalldataimageinstallfrommetadatavalue.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_unattend\p_unattend%5D:%20MetaData%20%20RELEASE:%20%2810/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





