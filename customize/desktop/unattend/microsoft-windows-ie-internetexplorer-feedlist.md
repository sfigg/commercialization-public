---
title: FeedList
description: FeedList
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d04df7d4-84f8-4882-b6e8-a669a902accb
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# FeedList


`FeedList` is a container for [FeedItem](microsoft-windows-ie-internetexplorer-feedlist-feeditem.md) settings.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[FeedItem](microsoft-windows-ie-internetexplorer-feedlist-feeditem.md)</p></td>
<td><p>Specifies a Web feed to be received on the computer.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


specialize

## Parent Hierarchy


[Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md) | **FeedList**

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md).

## XML Example


The following XML output shows how to set `FeedList`.

```
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


[Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md)

 

 







