---
title: ItemKey
description: 
MSHAttr:
-'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: kenpacq
author: kenpacq
ms.date: 07/09/2018
ms.topic: article
ms.prod: windows - hardware
ms.technology: windows - oem
---

# ItemKey

`ItemKey` specifies a unique key to associate with a [FavoriteItem](microsoft-windows-microsoftedgebrowser-favoritebaritems-favoritebaritem.md).

## Values

| Value                   | Description                                                                           |
|:------------------------|:--------------------------------------------------------------------------------------|
| Specifies a unique string value (key) to represent the `FavoriteItem` in the unattended installation answer file. `ItemKey` must be unique for each [FavoritesList](microsoft-windows-microsoftedgebrowser-favoritebaritems-favoritebaritem.md). _ItemKey_ is a string. |


## Valid Configuration Passes

specialize

## Parent Hierarchy

[Microsoft-Windows-MicrosoftEdgeBrowser-FavoriteBarItems-FavoriteBarItem](microsoft-windows-microsoftedgebrowser-favoritebaritems-favoritebaritem.md) | **ItemKey**

## Applies To

To determine whether a component applies to the image you’re building, load your image into Windows SIM and search for the component or setting name. For information on how to view components and settings, see [Configure Components and Settings in an Answer File](https://docs.microsoft.com/en-us/windows-hardware/customize/desktop/wsim/configure-components-and-settings-in-an-answer-file).

## XML Example

```XML
<FavoriteBarItems>
   <FavoriteBarItem wcm:action="add">
      <ItemIconFile>C:\Windows\favlink1.ico</FavIconFile>
      <ItemKey>Favorite1</FavID>
      <ItemName>My Favorite</FavTitle>
      <ItemUrl>http://www.fabrikam.com/myfav1</FavURL>
   </FavoriteItem>
  <FavoriteBarItem wcm:action="add">
      <ItemIconFile> C:\Windows\favlink2.ico </FavIconFile>
      <ItemKey>Favorite2</FavID>
      <ItemName>Favorite 2</FavTitle>
      <ItemURL>http://www.fabrikam.com/myfav2</FavURL>
   </FavoriteItem>
</FavoritesList>
```

## Related Topics

[Microsoft-Windows-MicrosoftEdgeBrowser-FavoriteBarItems-FavoriteBarItem](microsoft-windows-microsoftedgebrowser-favoritebaritems-favoritebaritem.md)
