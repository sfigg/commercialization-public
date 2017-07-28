---
title: Scope
description: Scope
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: beac7cab-43ea-41c3-8af0-6d1a75f1dc74
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Scope


`Scope` specifies a search provider.

## Child Elements


<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Setting name</th>
<th>Description</th>
<th>Applies to which versions of Windows Internet Explorer</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[FaviconURL](microsoft-windows-ie-internetexplorer-searchscopes-scope-faviconurl.md)</p></td>
<td><p>Specifies the path to an icon for a specific Search Scope item.</p></td>
<td><p>Internet Explorer 8 through Internet Explorer 11</p></td>
</tr>
<tr class="even">
<td><p>[PreviewURL](microsoft-windows-ie-internetexplorer-searchscopes-scope-previewurl.md)</p></td>
<td><p>Specifies the URL where previews are shown in the <strong>Accelerator</strong> window.</p></td>
<td><p>Internet Explorer 8 through Internet Explorer 11</p></td>
</tr>
<tr class="odd">
<td><p>[ScopeDefault](microsoft-windows-ie-internetexplorer-searchscopes-scope-scopedefault.md)</p></td>
<td><p>Specifies whether the Search Scope item is the default search provider.</p></td>
<td><p>Internet Explorer 7 through Internet Explorer 11</p></td>
</tr>
<tr class="even">
<td><p>[ScopeDisplayName](microsoft-windows-ie-internetexplorer-searchscopes-scope-scopedisplayname.md)</p></td>
<td><p>Specifies the display name for the search provider.</p></td>
<td><p>Internet Explorer 7 through Internet Explorer 11</p></td>
</tr>
<tr class="odd">
<td><p>[ScopeKey](microsoft-windows-ie-internetexplorer-searchscopes-scope-scopekey.md)</p></td>
<td><p>Specifies the unique string for the search provider.</p></td>
<td><p>Internet Explorer 7 through Internet Explorer 11</p></td>
</tr>
<tr class="even">
<td><p>[ScopeUrl](microsoft-windows-ie-internetexplorer-searchscopes-scope-scopeurl.md)</p></td>
<td><p>Specifies the URL for the search provider.</p></td>
<td><p>Internet Explorer 7 through Internet Explorer 11</p></td>
</tr>
<tr class="odd">
<td><p>[ShowSearchSuggestions](microsoft-windows-ie-internetexplorer-searchscopes-scope-showsearchsuggestions.md)</p></td>
<td><p>Specifies whether Search Suggestions are shown.</p></td>
<td><p>Internet Explorer 8 through Internet Explorer 11</p></td>
</tr>
<tr class="even">
<td><p>[SuggestionsURL](microsoft-windows-ie-internetexplorer-searchscopes-scope-suggestionsurl.md)</p></td>
<td><p>Specifies suggestions that appear to the user during a search, by using a search that is based on XML.</p></td>
<td><p>Internet Explorer 8 through Internet Explorer 11</p></td>
</tr>
<tr class="odd">
<td><p>[SuggestionsURL_JSON](microsoft-windows-ie-internetexplorer-searchscopes-scope-suggestionsurl-json.md)</p></td>
<td><p>Specifies suggestions that appear to the user during a search, by using a search that is based on JavaScript Object Notation (JSON).</p></td>
<td><p>Internet Explorer 8 through Internet Explorer 11</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


specialize

## Parent Hierarchy


[Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md) | [SearchScopes](microsoft-windows-ie-internetexplorer-searchscopes.md) | **Scope**

## Applies To


For a list of the Windows editions and architectures that this component supports, see [Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md).

## XML Example


The following example shows how to set search providers.

```
<SearchScopes>
   <Scope wcm:action="add">
      <ScopeDefault>true</ScopeDefault>
      <ScopeDisplayName>MyFirstSearchProvider</ScopeDisplayName>
      <ScopeKey>SearchProvider1</ScopeKey>
      <ScopeUrl>http://www.contoso.com/search?q={searchTerms}</ScopeUrl>
   </Scope>
   <Scope wcm:action="add">
      <ScopeDisplayName>MySecondSearchProvider</ScopeDisplayName>
      <ScopeKey>SearchProvider2</ScopeKey>
      <ScopeUrl>http://search.fabrikam.com/results.aspx?q=&quot;{searchTerms}&quot;</ScopeUrl>
   </Scope>
</SearchScopes>
```

## Related topics


[SearchScopes](microsoft-windows-ie-internetexplorer-searchscopes.md)

 

 







