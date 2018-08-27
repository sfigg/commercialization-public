---
title: ItemFavIconFile
description: ItemFavIconFile
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

# ItemFavIconFile

`ItemFavIconFile` specifies the icon to associate with the [FavoriteBarItem](microsoft-windows-microsoftedgebrowser-favoritebaritems-favoritebaritem.md) in the Favorites bar.

## Values

| Value                   | Description                                                |
|:------------------------|:--------------------------------------------------------------------------------------|
| _PathAndFileName_ | Specifies the location and the name of the icon to associate with the [FavoriteBarItem](microsoft-windows-microsoftedgebrowser-favoritebaritems-favoritebaritem.md) on the Favorites bar, for example, C:\Windows\favlink2.ico. _PathAndFileName_ is a string. |

## Valid Configuration Passes

specialize

## Parent Hierarchy

[Microsoft-Windows-MicrosoftEdgeBrowser](microsoft-windows-microsoftedgebrowser.md) | [FavoriteBarItems](microsoft-windows-microsoftedgebrowser-favoritebaritems.md) | [FavoriteBarItem](microsoft-windows-microsoftedgebrowser-favoritebaritems-favoritebaritem.md) | **ItemFavIconFile**

## Applies To

To determine whether a component applies to the image you’re building, load your image into Windows SIM and search for the component or setting name. For information on how to view components and settings, see [Configure Components and Settings in an Answer File](https://docs.microsoft.com/en-us/windows-hardware/customize/desktop/wsim/configure-components-and-settings-in-an-answer-file).

## XML Example

```XML
<FavoriteBarItems>
   <FavoriteBarItem wcm:action="add">
      <ItemFavIconFile>C:\Windows\favlink1.ico</FavIconFile>
      <ItemKey>Favorite1</FavID>
      <ItemName>Bing News</FavTitle>
      <ItemUrl>https://bing.com/news</FavURL>
   </FavoriteItem>
  <FavoriteBarItem wcm:action="add">
      <ItemIconFile>C:\Windows\favlink2.ico</FavIconFile>
      <ItemKey>Favorite2</FavID>
      <ItemName>Bing Maps</FavTitle>
      <ItemURL>https://www.bing.com/maps</FavURL>
   </FavoriteBarItem>
</FavoriteBarItems>
```

## Related Topics

[FavoriteBarItem](microsoft-windows-microsoftedgebrowser-favoritebaritems-favoritebaritem.md)
