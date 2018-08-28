---
title: FavoriteBarItems
description: FavoriteBarItems
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

[Microsoft-Windows-MicrosoftEdgeBrowser](microsoft-windows-microsoftedgebrowser.md)
