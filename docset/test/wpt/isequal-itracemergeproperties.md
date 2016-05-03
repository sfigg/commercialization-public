---
title: IsEqual
description: IsEqual
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ad2c2023-6748-4fc3-b2c4-02bf92637dc0
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# IsEqual


Compares two [ITraceMergeProperties](itracemergeproperties.md) objects.

## Syntax


``` syntax
HRESULT IsEqual
  ([in] ITraceMergeProperties* pTraceMergeProperties)
;
```

## Parameters


<a href="" id="ptracemergeproperties"></a>*pTraceMergeProperties*  
\[in\] A pointer to an **ITraceMergeProperties** object to be compared.

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
<td><p>The objects have same trace merge properties.</p></td>
</tr>
<tr class="even">
<td><p>S_FALSE</p></td>
<td><p>The objects do not have the same trace merge properties.</p></td>
</tr>
<tr class="odd">
<td><p>E_INVALIDARG</p></td>
<td><p>One or more arguments are invalid. Use [IParsingErrorInfo](iparsingerrorinfo.md) to obtain detailed error information.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[ITraceMergeProperties](itracemergeproperties.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20IsEqual%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





