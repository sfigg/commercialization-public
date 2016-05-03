---
title: GetObjectType
description: GetObjectType
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5df5ef07-aad9-4bbe-a293-05dd18c4b319
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# GetObjectType


Returns the type of the object that caused the error.

## Syntax


``` syntax
HRESULT GetObjectType
  ([out, retval] CObjectType* pObjectType)
;
```

## Parameters


<a href="" id="pobjecttype"></a>*pObjectType*  
\[out\] Pointer to the **CObjectType** field that indicates the element that caused the error.

## Return Value


The following table describes possible return values.

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
<td><p>The function successfully returned the object type.</p></td>
</tr>
<tr class="even">
<td><p>E_POINTER</p></td>
<td><p>Invalid pointer.</p></td>
</tr>
</tbody>
</table>

 

## Remarks


The object type can be any of the following values:

-   Unknown

-   Profile

-   Collector

-   Provider

## Related topics


[IControlErrorInfo](icontrolerrorinfo.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20GetObjectType%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





