---
title: ITraceMergeProperties
description: ITraceMergeProperties
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6afd2bab-ef90-4182-9757-45d62b4be952
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# ITraceMergeProperties


Enables the client to specify how multiple event trace log (ETL) files should be merged, using XML. It provides functions that load properties, in XML format, either from a file or from a string.

## Syntax


``` syntax
{
  [id(1), helpstring("LoadFromFile")] HRESULT LoadFromFile([in] BSTR bstrTraceMergeName, [in] BSTR bstrFileName);
  [id(2), helpstring("LoadFromString")] HRESULT LoadFromString([in] BSTR bstrTraceMerge);
  [id(3), helpstring("IsEqual")] HRESULT IsEqual([in] ITraceMergeProperties* pTraceMergeProperties);
};
```

## Functions


The following table describes functions that this interface provides.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Function</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[IsEqual](isequal-itracemergeproperties.md)</p></td>
<td><p>Loads the properties from the specified file.</p></td>
</tr>
<tr class="even">
<td><p>[LoadFromString](loadfromstring-itracemergeproperties.md)</p></td>
<td><p>Loads the properties from the specified string.</p></td>
</tr>
<tr class="odd">
<td><p>[IsEqual](isequal-itracemergeproperties.md)</p></td>
<td><p>Compares two <strong>ITraceMergeProperties</strong> objects.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Interfaces](interfaces-wprcontrol.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20ITraceMergeProperties%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





