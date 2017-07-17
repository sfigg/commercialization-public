---
title: FavoritesList
description: FavoritesList
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9f25d69b-8ed8-4d4d-9a04-547cfe6b8fcf
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# FavoritesList


`FavoritesList` contains all the settings used to create a shortcut in the Favorites folder.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[FavoriteItem](microsoft-windows-ie-internetexplorer-favoriteslist-favoriteitem.md)</p></td>
<td><p>Specifies the settings for the icon that appears to the user, which sites must appear offline, the name that appears in the Favorites folder, and the associated Uniform Resource Locator (URL).</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


specialize

## Parent Hierarchy


[Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md) | **FavoritesList**

## Applies To


For the list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md).

## XML Example


The following XML output specifies how to configure favorites.

```
<FavoritesList>
   <FavoriteItem wcm:action="add">
      <FavIconFile>C:\Windows\favlink1.ico</FavIconFile>
      <FavID>Favorite1</FavID>
      <FavOffLine>true</FavOffLine>
      <FavTitle>My Favorite</FavTitle>
      <FavURL>http://www.fabrikam.com/myfav1</FavURL>
   </FavoriteItem>
  <FavoriteItem wcm:action="add">
      <FavIconFile>C:\Windows\favlink2.ico</FavIconFile>
      <FavID>Favorite2</FavID>
      <FavOffLine>true</FavOffLine>
      <FavTitle>Favorite 2</FavTitle>
      <FavURL>http://www.fabrikam.com/myfav2</FavURL>
   </FavoriteItem>
</FavoritesList>
```

## Related topics


[Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md)

 

 







