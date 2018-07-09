---
title: FavoriteBarItems
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

# FavoriteBarItems

`FavoriteBarItems` contains the settings used to add predefined Favorite items to the Favorite bar.

A Favorite can include web content such as links or feeds.

To add a predefined Favorite bar item in Windows System Image Manager, add the **FavoriteBarItems** component to your answer file. Next, right-click **FavoriteBarItems**, and select **Insert New FavoriteBarItem**.

## Values

| Value                   | Description                                                                           |
|:------------------------|:--------------------------------------------------------------------------------------|
| [FavoriteBarItem](microsoft-windows-microsoftedgebrowser-favoritebaritems-favoritebaritem.md)    | Specifies settings for each Favorite bar item.     |

## Valid Configuration Passes

specialize

## Parent Hierarchy

[Microsoft-Windows-MicrosoftEdgeBrowser](microsoft-windows-microsoftedgebrowser.md) | **FavoriteBarItems**

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

[Microsoft-Windows-MicrosoftEdgeBrowser](microsoft-windows-microsoftedgebrowser.md)
