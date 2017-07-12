---
title: UWPAppsUseLightTheme
description: UWPAppsUseLightTheme
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: B4EC2C24-6C05-446D-8440-5E376B78918B
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# UWPAppsUseLightTheme


`UWPAppsUseLightTheme` specifies whether the dark mode is applied.

## Values


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>true</strong></p></td>
<td><p>Specifies that the classic Windows color mode is used. This is the default value.</p></td>
</tr>
<tr class="even">
<td><p><strong>false</strong></p></td>
<td><p>Specifies that the dark color mode is used.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


specialize

auditSystem

auditUser

oobeSystem

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md) | [Themes](microsoft-windows-shell-setup-themes.md) | **UWPAppsUseLightTheme**

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md).

## XML Example


The following XML output shows how to set a customized theme.

``` syntax
In Windows 10, build 1607, a setting has been added for light/dark mode toggle. 
    <settings pass=”oobeSystem”> 
        <Themes> 
            <ThemeName>MyOLEDTheme</ThemeName> 
            <DefaultThemesOff>false</DefaultThemesOff> 
            <DesktopBackground>c:\windows\OLEDFriendlyImage.jpg </DesktopBackground> 
            <WindowColor>Lime</WindowColor> 
            <UWPAppsUseLightTheme>false</UWPAppsUseLightTheme> 
        </Themes> 
    </settings> 
```

## Related topics


[Themes](microsoft-windows-shell-setup-themes.md)

 

 







