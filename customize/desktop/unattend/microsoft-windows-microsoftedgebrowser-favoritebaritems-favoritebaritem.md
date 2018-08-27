---
title: FavoriteBarItem
description: FavoriteBarItem
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

# FavoriteBarItem

`FavoriteBarItem` contains the settings used to add predefined Favorite items to the Favorite bar.

A Favorite can include web content such as links or feeds.

To add a predefined Favorite bar item in Windows System Image Manager, add the **FavoriteBarItems** component to your answer file. Next, right-click **FavoriteBarItems**, and select **Insert New FavoriteBarItem**.

## Values

| Value                   | Description                                                                           |
|:------------------------|:--------------------------------------------------------------------------------------|
| [ItemFavIconFile](microsoft-windows-microsoftedgebrowser-favoritebaritems-favoritebaritem-itemfaviconfile.md) | Specifies an icon to associate with the Favorite (example: C:\Windows\favlink1.ico).  |
| [ItemKey](microsoft-windows-microsoftedgebrowser-favoritebaritems-favoritebaritem-itemkey.md)    | Specifies a unique key for the Favorite (example: Favorite1).  |
| [ItemName](microsoft-windows-microsoftedgebrowser-favoritebaritems-favoritebaritem-itemname.md)  | Specifies a name that appears in the Favorite bar (example: Bing News).  |
| [ItemUrl](microsoft-windows-microsoftedgebrowser-favoritebaritems-favoritebaritem-itemurl.md)    | Specifies a path to the Favorite (http://... or https://...). |

## Valid Configuration Passes

specialize

## Parent Hierarchy

[Microsoft-Windows-MicrosoftEdgeBrowser](microsoft-windows-microsoftedgebrowser.md) | [FavoriteBarItems](microsoft-windows-microsoftedgebrowser-favoritebaritems.md) | **FavoriteBarItem**

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
      <ItemIconFile> C:\Windows\favlink2.ico </FavIconFile>
      <ItemKey>Favorite2</FavID>
      <ItemName>Bing Maps</FavTitle>
      <ItemURL>https://www.bing.com/maps</FavURL>
   </FavoriteItem>
</FavoritesList>
```

## Related Topics

[FavoriteBarItems](microsoft-windows-microsoftedgebrowser-favoritebaritems.md)
