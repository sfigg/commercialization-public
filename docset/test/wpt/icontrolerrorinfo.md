---
title: IControlErrorInfo
description: IControlErrorInfo
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 47dd2be1-9217-4045-b530-c8b022c3c794
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# IControlErrorInfo


Provides functions that obtain information about errors that occur when the control manager performs an operation. The error indicates the type of object on which the error occurred: profile, collector, or provider. This interface can be nested to provide a hierarchy of error information. The interface derives from the COM [IErrorInfo](http://go.microsoft.com/fwlink/p/?linkid=217161) interface, which provides functions that access detailed contextual error information.

## Syntax


``` syntax
{
  typedef enum
  {
    ObjectType_Unknown,
    ObjectType_Profile,
    ObjectType_Collector,
    ObjectType_Provider
  } CObjectType;
  [id(1), helpstring("GetObjectType")] HRESULT GetObjectType
    ([out, retval] CObjectType* pObjectType);
  [id(2), helpstring("GetHResult")] HRESULT GetHResult
    ([out, retval] HRESULT* pHResult);
  [id(3), helpstring("GetInnerErrorInfo")] HRESULT GetInnerErrorInfo
    ([out, retval] IUnknown** ppVal);
};
```

## Functions


The following table describes the functions of this interface.

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
<td><p>[GetObjectType](getobjecttype.md)</p></td>
<td><p>Returns the type that produced the error.</p></td>
</tr>
<tr class="even">
<td><p>[GetHResult](gethresult.md)</p></td>
<td><p>Returns an HRESULT value that indicates the error code.</p></td>
</tr>
<tr class="odd">
<td><p>[GetInnerErrorInfo](getinnererrorinfo.md)</p></td>
<td><p>Returns additional information about the error.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Interfaces](interfaces-wprcontrol.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20IControlErrorInfo%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





