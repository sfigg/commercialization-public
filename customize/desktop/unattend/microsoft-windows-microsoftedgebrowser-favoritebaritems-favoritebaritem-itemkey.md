---
title: ItemKey
description: ItemKey
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

# ItemKey

`ItemKey` specifies a unique key to associate with a [FavoriteBarItem](microsoft-windows-microsoftedgebrowser-favoritebaritems-favoritebaritem.md).

## Values

| Value                   | Description                                                |
|:------------------------|:--------------------------------------------------------------------------------------|
| _ItemKey_ | Specifies a unique string value (key) to represent the `FavoriteItem` in the unattended installation answer file. `ItemKey` must be unique for each [FavoriteBarItem](microsoft-windows-microsoftedgebrowser-favoritebaritems-favoritebaritem.md). _ItemKey_ is a string. |


## Valid Configuration Passes

specialize

## Parent Hierarchy

[Microsoft-Windows-MicrosoftEdgeBrowser](microsoft-windows-microsoftedgebrowser.md) | [FavoriteBarItems](microsoft-windows-microsoftedgebrowser-favoritebaritems.md) | [FavoriteBarItem](microsoft-windows-microsoftedgebrowser-favoritebaritems-favoritebaritem.md) | **ItemKey**

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
   </FavoriteBarItem>
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
