---
title: IEnumProfile
description: IEnumProfile
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a7f512d4-13dd-44be-881b-2b705deb973a
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# IEnumProfile


Provides a standard COM enumeration method for enumerating a collection of [IProfile](iprofile.md) interfaces.

## Syntax


``` syntax
{
  [id(1), helpstring("Next")] HRESULT Next
    ([in] ULONG celt,
    [out, size_is(celt), length_is(*pCeltFetched)] IProfile** prgVar,
    [out] ULONG* pCeltFetched);
  [id(2), helpstring("Skip")] HRESULT Skip
    ([in] ULONG celt);
  [id(3), helpstring("Reset")] HRESULT Reset();
  [id(4), helpstring("Clone")] HRESULT Clone
    ([out] IEnumProfile** ppEnum);
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
<th>Method</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[Next](next-ienumprofile.md)</p></td>
<td><p>Returns an array that contains the specified number of elements.</p></td>
</tr>
<tr class="even">
<td><p>[Skip](skip-ienumprofile.md)</p></td>
<td><p>Indicates the number of elements to skip.</p></td>
</tr>
<tr class="odd">
<td><p>[Reset](reset-ienumprofile.md)</p></td>
<td><p>Resets the enumeration.</p></td>
</tr>
<tr class="even">
<td><p>[Clone](clone-ienumprofile.md)</p></td>
<td><p>Creates a clone enumerator.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Interfaces](interfaces-wprcontrol.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20IEnumProfile%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





