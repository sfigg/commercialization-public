---
title: DesktopBackground
description: DesktopBackground
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c589e1cf-bdb0-4acc-a35b-6a9097537a01
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# DesktopBackground


`DesktopBackground` specifies the path to a graphic file that is used for the desktop background.

The image will be cropped to fit the size of your display, while preserving the aspect ratio of the image. 

Select an image which will look good when cropped to the common aspect ratios for your computer. In most cases, we recommend that you use a 1920x1200 image with the focal point of the image near the center.

The graphic must be a .png, .jpg, or .bmp image.

**Note**  In Windows 10, if you use this setting, you’ll also need to set ThemeName. If you set these two settings (ThemeName and DesktopBackground), Windows will create the theme for you. 

 

## Values


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><em>Path_to_background_image_file</em></p></td>
<td><p>Specifies the path to the graphic file. <em>Path_to_background_image_file</em> is a string with a maximum length of 259 characters.</p></td>
</tr>
</tbody>
</table>

 

This string type supports empty elements.

## Valid Configuration Passes


specialize

auditSystem

auditUser

oobeSystem

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md) | [Themes](microsoft-windows-shell-setup-themes.md) | **DesktopBackground**

## Applies To


For a list of the Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md).

## XML Example


The following XML output shows how to assign a background to a customized theme.

```
<Themes>
   <ThemeName>Fabrikam Theme</ThemeName>
   <DesktopBackground>%WINDIR%\web\wallpaper\fabrikam.jpg</DesktopBackground>
</Themes>
```

## Related topics


[Themes](microsoft-windows-shell-setup-themes.md)

 

 







