---
title: IParsingErrorInfo
description: IParsingErrorInfo
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: bdec574b-3863-499f-8bf3-fe89d4400d29
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# IParsingErrorInfo


Provides functions that identify where the validation of an XML file failed. The interface derives from the COM [IErrorInfo](http://go.microsoft.com/fwlink/p/?linkid=217161) interface, which provides functions that access detailed contextual error information.

## Syntax


``` syntax
{
  [id(1), helpstring("GetColumnNumber")] HRESULT GetColumnNumber
    ([out, retval] ULONG* pColumnNumber);
  [id(2), helpstring("GetLineNumber")] HRESULT GetLineNumber
    ([out, retval] ULONG* pLineNumber);
  [id(3), helpstring("GetElementType")] HRESULT GetElementType
    ([out, retval] BSTR* pbstrElementType);
  [id(4), helpstring("GetElementId")] HRESULT GetElementId
    ([out, retval] BSTR* pbstrElementId);
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
<td><p>[GetColumnNumber](getcolumnnumber.md)</p></td>
<td><p>Returns the column number of the validation error.</p></td>
</tr>
<tr class="even">
<td><p>[GetLineNumber](getlinenumber.md)</p></td>
<td><p>Returns the line number of the validation error.</p></td>
</tr>
<tr class="odd">
<td><p>[GetElementType](getelementtype.md)</p></td>
<td><p>Returns the element type at which the validation error occurred.</p></td>
</tr>
<tr class="even">
<td><p>[GetElementId](getelementid.md)</p></td>
<td><p>Returns the element identifier at which the validation error occurred.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Interfaces](interfaces-wprcontrol.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20IParsingErrorInfo%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





