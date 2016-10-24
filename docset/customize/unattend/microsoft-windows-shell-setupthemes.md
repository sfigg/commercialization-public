---
title: Themes
description: Themes
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2e12464c-73c5-4b99-9506-d5edb166e839
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: msdn
---

# Themes


The `Themes` setting includes settings to customize elements of the Windows® visual style, including the window glass color, desktop background, and screen saver.

To customize the Windows default theme, you must include the settings: [DesktopBackground](microsoft-windows-shell-setupthemesdesktopbackground.md) and [ThemeName](microsoft-windows-shell-setupthemesthemename.md). You may also optionally include the settings: [BrandIcon](microsoft-windows-shell-setupthemesbrandicon.md), [ScreenSaver](microsoft-windows-shell-setupthemesscreensaver.md), and [WindowColor](microsoft-windows-shell-setupthemeswindowcolor.md).

To use the Windows Classic theme as the default theme instead, set [DefaultThemesOff](defaultthemesoff--win7-microsoft-windows-shell-setupthemesdefaultthemesoff.md) to **true**.

To create additional custom theme files, use the **Personalization** item within Control Panel, or see the MSDN topic: [Creating and Installing Theme Files](http://go.microsoft.com/fwlink/?LinkId=141343).

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[BrandIcon](microsoft-windows-shell-setupthemesbrandicon.md)</p></td>
<td><p>Specifies the path to a graphic file that is incorporated in the theme preview in the <strong>Personalization</strong> item in Control Panel.</p></td>
</tr>
<tr class="even">
<td><p>[CustomDefaultThemeFile](microsoft-windows-shell-setupthemescustomdefaultthemefile.md)</p></td>
<td><p>This setting is deprecated.</p>
<div class="alert">
<strong>Note</strong>  
<p>While you can add themes to a Windows 7 or Windows 8 installation by using a .theme file, .theme files can no longer be used as the default theme.</p>
<p>To define a default theme, use the settings: [BrandIcon](microsoft-windows-shell-setupthemesbrandicon.md), [DesktopBackground](microsoft-windows-shell-setupthemesdesktopbackground.md), [ScreenSaver](microsoft-windows-shell-setupthemesscreensaver.md), [ThemeName](microsoft-windows-shell-setupthemesthemename.md), and [WindowColor](microsoft-windows-shell-setupthemeswindowcolor.md).</p>
<p></p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td><p>[DefaultThemesOff](defaultthemesoff--win7-microsoft-windows-shell-setupthemesdefaultthemesoff.md)</p></td>
<td><p>This setting is deprecated in Windows 8.Specifies whether to use the Windows Classic theme instead of the default theme.</p></td>
</tr>
<tr class="even">
<td><p>[DesktopBackground](microsoft-windows-shell-setupthemesdesktopbackground.md)</p></td>
<td><p>Specifies the path to a graphic file that is used for the desktop background.</p></td>
</tr>
<tr class="odd">
<td><p>[ScreenSaver](microsoft-windows-shell-setupthemesscreensaver.md)</p></td>
<td><p>Specifies the path to a screen-saver file.</p>
<div class="alert">
<strong>Note</strong>  
<p>We do not recommend setting this value. Instead, we recommend using automatic power plans to dim the screen. This can help reduce system power consumption. For more information on power plans, see the [Battery Life Technical Reference](http://go.microsoft.com/fwlink/?LinkId=206664) in the Windows® Assessment and Deployment Kit (Windows ADK) Technical Reference.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td><p>[ThemeName](microsoft-windows-shell-setupthemesthemename.md)</p></td>
<td><p>Specifies the name of the custom default theme.</p></td>
</tr>
<tr class="odd">
<td><p>[WindowColor](microsoft-windows-shell-setupthemeswindowcolor.md)</p></td>
<td><p>Specifies the color of the Windows border and taskbar.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


auditSystem

auditUser

oobeSystem

specialize

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup-win7-microsoft-windows-shell-setup.md) | **Themes**

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup-win7-microsoft-windows-shell-setup.md).

## XML Example


The following XML output shows how to set a customized theme.

``` syntax
<Themes>
   <ThemeName>Fabrikam Theme</ThemeName>
   <DefaultThemesOff>false</DefaultThemesOff>
   <DesktopBackground>%WINDIR%\web\wallpaper\fabrikam.jpg</DesktopBackground>
   <BrandIcon>%programfiles%\Fabrikam\fabrikam-logo.png</BrandIcon>
   <ScreenSaver>Bubbles.scr</ScreenSaver>
   <WindowColor>Color 11</WindowColor>
</Themes>
```

## Related topics


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup-win7-microsoft-windows-shell-setup.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_unattend\p_unattend%5D:%20Themes%20%20RELEASE:%20%2810/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





