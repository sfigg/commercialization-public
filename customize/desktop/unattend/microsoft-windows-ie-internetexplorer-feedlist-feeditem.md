---
title: FeedItem
description: FeedItem
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2e055876-3e09-4dbd-9682-e8660f489d91
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# FeedItem


`FeedItem` specifies a Web feed to be received on the computer.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[FeedKey](microsoft-windows-ie-internetexplorer-feedlist-feeditem-feedkey.md)</p></td>
<td><p>Specifies a unique string for a <code>FeedItem</code>.</p></td>
</tr>
<tr class="even">
<td><p>[FeedTitle](microsoft-windows-ie-internetexplorer-feedlistfeed-item-feedtitle.md)</p></td>
<td><p>Specifies the title of a <code>FeedItem</code>.</p></td>
</tr>
<tr class="odd">
<td><p>[FeedURL](microsoft-windows-ie-internetexplorer-feedlistfeed-item-feedurl.md)</p></td>
<td><p>Specifies the URL of a <code>FeedItem</code>.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


specialize

## Parent Hierarchy


[Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md) | [FeedList](microsoft-windows-ie-internetexplorer-feedlist.md) | **FeedItem**

## Applies To


For the list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md).

## XML Example


The following XML output shows how to set a [FeedList](microsoft-windows-ie-internetexplorer-feedlist.md).

``` syntax
<FeedList>
   <FeedItem wcm:action="add">
      <FeedKey>Feed1</FeedKey>
      <FeedTitle>My Feed 1</FeedTitle>
      <FeedURL>http://www.fabrikam.com/rss1</FeedURL>
   </FeedItem>
   <FeedItem wcm:action="add">
      <FeedKey>Feed2</FeedKey>
      <FeedTitle>My Feed 2</FeedTitle>
      <FeedURL>http://www.fabrikam.com/rss2</FeedURL>
   </FeedItem>
</FeedList>
```

## Related topics


[FeedList](microsoft-windows-ie-internetexplorer-feedlist.md)

 

 







