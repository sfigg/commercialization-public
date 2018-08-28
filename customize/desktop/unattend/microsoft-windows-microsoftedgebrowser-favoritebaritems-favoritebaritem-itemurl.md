---
title: ItemUrl
description: ItemUrl
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: kenpacq
author: kpacquer
ms.date: 07/09/2018
ms.topic: article
ms.prod: windows - hardware
ms.technology: windows - oem
---

# ItemUrl

`ItemURL` specifies a Uniform Resource Locator (URL) to associate with a [FavoriteBarItem](microsoft-windows-microsoftedgebrowser-favoritebaritems-favoritebaritem.md).

## Values

| Value                   | Description                                                                           |
|:------------------------|:--------------------------------------------------------------------------------------|
| _Url_ | Specifies the fully qualified path that begins with a **http://** or **https://** prefix to the URL of each [FavoriteBarItem](microsoft-windows-microsoftedgebrowser-favoritebaritems-favoritebaritem.md). _Url_ is a string. |



## Valid Configuration Passes

specialize

## Parent Hierarchy

[Microsoft-Windows-MicrosoftEdgeBrowser](microsoft-windows-microsoftedgebrowser.md) | [FavoriteBarItems](microsoft-windows-microsoftedgebrowser-favoritebaritems.md) | [FavoriteBarItem](microsoft-windows-microsoftedgebrowser-favoritebaritems-favoritebaritem.md) | **ItemUrl**

## Applies To

To determine whether a component applies to the image you’re building, load your image into Windows SIM and search for the component or setting name. For information on how to view components and settings, see [Configure Components and Settings in an Answer File](https://docs.microsoft.com/en-us/windows-hardware/customize/desktop/wsim/configure-components-and-settings-in-an-answer-file).

## XML Example

```XML
<FavoriteBarItems>
    <FavoriteBarItem wcm:action="add">
        <ItemFavIconFile>C:\Windows\favlink1.ico</ItemFavIconFile>
        <ItemKey>Favorite1</ItemKey>
        <ItemName>Bing News</ItemName>
        <ItemUrl>https://bing.com/news</ItemUrl>
    </FavoriteBarItem>
    <FavoriteBarItem wcm:action="add">
        <ItemFavIconFile>C:\Windows\favlink2.ico</ItemFavIconFile>
        <ItemKey>Favorite2</ItemKey>
        <ItemName>Bing Maps</ItemName>
        <ItemUrl>https://www.bing.com/maps</ItemUrl>
    </FavoriteBarItem>
</FavoriteBarItems>
```

## Related Topics

[FavoriteBarItem](microsoft-windows-microsoftedgebrowser-favoritebaritems-favoritebaritem.md)
