---
title: Clone
description: Clone
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 057b095c-c244-434e-bf0f-09fb54089390
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Clone


Creates a clone enumerator.

## Syntax


``` syntax
HRESULT Clone
  ([out] IEnumProfile** ppEnum)
;
```

## Parameters


<a href="" id="ppenum"></a>*ppEnum*  
\[out\] Returns a pointer to the location of the clone enumerator.

## Return Value


The following table describes possible return values.

## Exceptions


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Return Value</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>S_OK</p></td>
<td><p>The function successfully created the clone enumerator.</p></td>
</tr>
<tr class="even">
<td><p>E_OUTOFMEMORY</p></td>
<td><p>Indicates insufficient memory to complete the operation.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[IEnumProfile](ienumprofile.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Clone%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





