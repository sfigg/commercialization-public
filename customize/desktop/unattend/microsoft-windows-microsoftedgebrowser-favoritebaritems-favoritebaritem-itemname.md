---
title: ItemName
description: ItemName
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

# ItemName

`ItemName` specifies the name of the [FavoriteBarItem](microsoft-windows-microsoftedgebrowser-favoritebaritems-favoritebaritem.md).

## Values

| Value                   | Description                                                                           |
|:------------------------|:--------------------------------------------------------------------------------------|
| _ItemName_ | Specifies the name of your [FavoriteBarItem](microsoft-windows-microsoftedgebrowser-favoritebaritems-favoritebaritem.md), based on your license terms, in the Favorites folder. _ItemName_ must appear only once for each `FavoriteItem`. |


## Valid Configuration Passes

specialize

## Parent Hierarchy

[Microsoft-Windows-MicrosoftEdgeBrowser](microsoft-windows-microsoftedgebrowser.md) | [FavoriteBarItems](microsoft-windows-microsoftedgebrowser-favoritebaritems.md) | [FavoriteBarItem](microsoft-windows-microsoftedgebrowser-favoritebaritems-favoritebaritem.md) | **ItemName**

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
