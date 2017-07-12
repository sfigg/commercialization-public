---
title: FavoriteItem
description: FavoriteItem
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b6c2ba28-2bd6-4ab0-9f16-68d025631ed5
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# FavoriteItem


`FavoriteItem` specifies the settings for the icon that appears to the user, which sites must appear offline, the name that appears in the Favorites folder, and the associated Uniform Resource Locator (URL).

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[FavIconFile](microsoft-windows-ie-internetexplorer-favoriteslist-favoriteitem-faviconfile.md)</p></td>
<td><p>Specifies the icon to associate with the <code>FavoriteItem</code> in the Favorites folder.</p></td>
</tr>
<tr class="even">
<td><p>[FavID](microsoft-windows-ie-internetexplorer-favoriteslist-favoriteitem-favid.md)</p></td>
<td><p>Specifies a unique key to associate with a <code>FavoriteItem</code>.</p></td>
</tr>
<tr class="odd">
<td><p>[FavOffLine](microsoft-windows-ie-internetexplorer-favoriteslist-favoriteitem-favoffline.md)</p></td>
<td><p>Specifies whether to make the <code>FavoriteItem</code> available for offline browsing.</p></td>
</tr>
<tr class="even">
<td><p>[FavTitle](microsoft-windows-ie-internetexplorer-favoriteslist-favoriteitem-favtitle.md)</p></td>
<td><p>Specifies a friendly name for the site appearing as a <code>FavoriteItem</code> in the Favorites folder.</p></td>
</tr>
<tr class="odd">
<td><p>[FavURL](microsoft-windows-ie-internetexplorer-favoriteslist-favoriteitem-favurl.md)</p></td>
<td><p>Specifies a fully qualified path to the URL of each <code>FavoriteItem</code>.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


specialize

## Parent Hierarchy


[Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md) | [FavoritesList](microsoft-windows-ie-internetexplorer-favoriteslist.md) | **FavoriteItem**

## Applies To


For the list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md).

## XML Example


The following XML output specifies how to configure favorites.

``` syntax
<FavoritesList>
   <FavoriteItem wcm:action="add">
      <FavIconFile>C:\Windows\favlink1.ico</FavIconFile>
      <FavID>Favorite1</FavID>
      <FavOffLine>true</FavOffLine>
      <FavTitle>My Favorite</FavTitle>
      <FavURL>http://www.fabrikam.com/myfav1</FavURL>
   </FavoriteItem>
  <FavoriteItem wcm:action="add">
      <FavIconFile> C:\Windows\favlink2.ico </FavIconFile>
      <FavID>Favorite2</FavID>
      <FavOffLine>true</FavOffLine>
      <FavTitle>Favorite 2</FavTitle>
      <FavURL>http://www.fabrikam.com/myfav2</FavURL>
   </FavoriteItem>
</FavoritesList>
```

## Related topics


[FavoritesList](microsoft-windows-ie-internetexplorer-favoriteslist.md)

 

 







