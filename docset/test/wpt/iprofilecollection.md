---
title: IProfileCollection
description: IProfileCollection
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 74833b03-86f0-4909-b497-f409365d4ea7
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# IProfileCollection


Represents a collection of profiles that the library runs as a unit. The interface provides functions that enable the client to add a profile to the collection, compare a profile to one already in the collection, of remove one or all profiles from the collection.

## Syntax


``` syntax
{
    [id(1), helpstring("Add")] HRESULT Add([in] IProfile* pProfile, [in] VARIANT_BOOL fMerge);
    [id(2), helpstring("Remove")] HRESULT Remove([in] IProfile* pProfile);
    [id(3), helpstring("Clear")] HRESULT Clear();
    [id(4), helpstring("IsEqual")] HRESULT IsEqual([in] IProfileCollection* pProfileCollection);    [id(5), helpstring("LoadIntoXML")] HRESULT LoadIntoXML([out] BSTR* pbstrResults);
};
```

## Functions


The following table describes the functions that this interface provides.

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
<td><p>[Add](add.md)</p></td>
<td><p>Adds a profile to the collection.</p></td>
</tr>
<tr class="even">
<td><p>[Remove](remove.md)</p></td>
<td><p>Removes a profile from the collection.</p></td>
</tr>
<tr class="odd">
<td><p>[Clear](clear.md)</p></td>
<td><p>Clears all profiles from the collection.</p></td>
</tr>
<tr class="even">
<td><p>[IsEqual](isequal-iprofilecollection.md)</p></td>
<td><p>Compares two <strong>IProfileCollection</strong> objects to see whether they have matching profile properties.</p></td>
</tr>
<tr class="odd">
<td><p>[LoadIntoXML](loadintoxml.md)</p></td>
<td><p></p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Interfaces](interfaces-wprcontrol.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20IProfileCollection%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





