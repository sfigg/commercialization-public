---
title: Update packages in an .FFU image file
description: Update packages in an .FFU image file
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 39d965d5-880d-407f-9e16-ea6a1a8f42d0
ms.author: themar
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Update packages in an .FFU image file


You can use ImageApp.exe to add a new or updated package to an existing .FFU image file for production, health and test images.

ImageApp has the following important limitations:

-   ImageApp should only be used for adding packages to production, test and health images. Do not use ImageApp to modify retail images, as it may negatively impact update reliability and the security of the device. ImageApp cannot be used to change the partition layout of an existing image. If a different partition layout is needed, the image will need to be rebuilt. For more information, see [Building a device image using ImgGen.cmd](building-a-phone-image-using-imggencmd.md).
-   ImageApp cannot be used to remove packages from an image.
-   To prepare a device platform to use compressed partitions with CompactOS, you'll need a PC with the Windows 10 version of DISM. If your technician PC is running a previous version of Windows, you can get this by installing the Windows Assessment and Deployment Kit (ADK) for Windows 10, or by copying and installing the DISM driver. This process is the same as the one used to install DISM on Windows PE. To learn more, see [Install Windows 10 using a previous version of Windows PE: To add DISM into your Windows PE image](../desktop/copy-dism-to-another-computer.md).

When updating an existing package, be sure to increment the version number. For more information, see [Update requirements](https://msdn.microsoft.com/windows/hardware/commercialize/service/mobile/update-requirements). When adding a package that does not already exist in the image, any version number can be used.

Specify the packages to be added in an input XML file similar to the one shown here.

```
<?xml version="1.0" encoding="utf-8"?>
<UpdateOSInput xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
      xmlns:xsd="http://www.w3.org/2001/XMLSchema" 
      xmlns="http://schemas.microsoft.com/embedded/2004/10/ImageUpdate">
   <Description>Add Debugger On package</Description>
   <PackageFiles>
      <PackageFile>C:\Program Files\Windows Kits\10\Packages\Microsoft.BCD.DebuggerOn.spkg</PackageFile>
   </PackageFiles>
</UpdateOSInput>
```

For example, if the `updateInput.xml` file is in the C:\\temp folder, use this command to add the specified packages to the existing `flash.ffu` image file.

```
ImageApp flash.ffu /UpdateInputXML:C:\temp\updateInput.xml
```

## Command-line syntax for ImageApp.exe


```
ImageApp.exe <imageFile.ffu> </UpdateInputXML:updateInputfile.xml> 
```

The following table describes the command-line parameters for ImageApp.exe.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><em>imageFile</em>.ffu</p></td>
<td><p>The name of the FFU file to be updated.</p></td>
</tr>
<tr class="even">
<td><p>/UpdateInputXML:<em>updateInputfile</em>.xml</p></td>
<td><p>The name of the XML file that identifies the package to be added to the image. If this file is not in the current directory, you must include the path to the file.</p></td>
</tr>
</tbody>
</table>

 

## Troubleshooting


**"STATUS\_FILE\_IS\_A\_DIRECTORY"**: This error message appears when building an image with CompactOS from a PC that doesn't have the Windows 10 version of DISM. You can get this by installing the Windows ADK for Windows 10, or by just installing the DISM driver from another PC with the Windows ADK for Windows 10 installed. To learn more, see [Install Windows 10 using a previous version of Windows PE](../desktop/copy-dism-to-another-computer.md).

## Related topics


[Building an image using ImgGen.cmd](building-a-phone-image-using-imggencmd.md)

 

 







