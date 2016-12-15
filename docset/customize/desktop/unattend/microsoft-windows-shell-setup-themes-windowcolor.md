---
title: WindowColor
description: WindowColor
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 46f3fb90-ca6d-4ded-a54c-76fe2c95f43f
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: msdn
---

# WindowColor


'WindowColor' specifies the accent color used throughout Windows in places like start tiles, calendar fly-out, and Common Controls.

## Values


-   In the next major update to Windows 10, there are no predefined colors.`Color 1`, `Color 2`, `Color 3`, `Color 4`, `Color 5`, `Color 6`, `Color 7`, `Color 8`, `Color 9`, `Color 10`, `Color 11`, `Color 12`, `Color 13`, `Color 14`, and `Color 15` are deprecated and have effect if set. Due to the large number of surface that are impacted by the color choice, avoid using colors that are too dark or too bright when setting 'WindowColor'. 
There are two options for setting 'WindowColor' in unattend.xml.

    If you choose `Automatic`, Windows chooses a color that’s harmonious with the palette of the desktop wallpaper.

    Here are samples of the color choices mapped to the corresponding color number in the color name (for example `Color 1` is represented by the number 1 below).

    ![window colors for windows 10](images/win10-windowcolor.png)

-   In Windows 8 and Windows Server 2012, `WindowColor` specifies the color of the window borders and taskbar.

    Predefined colors are `Automatic`, `Color 1`, `Color 2`, `Color 3`, `Color 4`, `Color 5`, `Color 6`, `Color 7`, `Color 8`, `Color 9`, `Color 10`, `Color 11`, `Color 12`, `Color 13`, `Color 14`, and `Color 15`.

    The default value is `Automatic`, meaning a color that is harmonious with the color palette of the desktop wallpaper will be chosen.

    Here are samples of the color choices mapped to the corresponding number.

    ![predefined colors are mapped to specific numbers](unattend-windowcolor-presetcolorsnumbered.jpg)


## Valid Configuration Passes


specialize

auditSystem

auditUser

oobeSystem

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md) | [Themes](microsoft-windows-shell-setup-themes.md) | **WindowColor**

## Applies To


For a list of the Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md).

## XML Examples


The following XML output shows how to set the default color theme to complement the background color.

``` syntax
            <Themes>
                <ThemeName>Test</ThemeName>
                <WindowColor>Automatic</WindowColor>
                <DesktopBackground>C:\Windows\Web\Screen\img104.jpg</DesktopBackground>
            </Themes>
```

## Related topics


[Themes](microsoft-windows-shell-setup-themes.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_unattend\p_unattend%5D:%20WindowColor%20%20RELEASE:%20%2810/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





