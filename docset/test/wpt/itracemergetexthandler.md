---
title: ITraceMergeTextHandler
description: ITraceMergeTextHandler
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0827802d-a62a-4420-8bb9-83f8af650669
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# ITraceMergeTextHandler


Obtains the text and other metadata that was added by the user.

## Syntax


``` syntax
{
    [propget, id(1), helpstring("Count")] HRESULT Count([out, retval] ULONG* cText);
    [id(2), helpstring("GetText")] HRESULT GetText([in] ULONG iText, [out] BSTR* pbstrText);
    [id(3), helpstring("WaitForText")] HRESULT WaitForText([in] ULONG Milliseconds);
    [id(4), helpstring("GetFileName")] HRESULT GetFileName([out] BSTR* pbstrFileName);
    [id(5), helpstring("GetNGenPdbsPath")] HRESULT GetNGenPdbsPath([out] VARIANT_BOOL* pfEnable, [out] BSTR* pbstrNGenPdbsCachePath, [out] BSTR* pbstrNGenPdbsTargetPath);
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
<td><p><strong>propget</strong></p></td>
<td><p>Returns the value of the specified property.</p></td>
</tr>
<tr class="even">
<td><p>[GetText](gettext.md)</p></td>
<td><p>Obtains the string from the specified file.</p></td>
</tr>
<tr class="odd">
<td><p>[WaitForText](waitfortext.md)</p></td>
<td><p>Waits until the user adds the appropriate text strings and calls.</p></td>
</tr>
<tr class="even">
<td><p>[GetFileName](getfilename.md)</p></td>
<td><p>Obtains the file name.</p></td>
</tr>
<tr class="odd">
<td><p>[GetNGenPdbsPath](getngenpdbspath.md)</p></td>
<td><p>Obtains the path to NGEN PDBs.</p></td>
</tr>
</tbody>
</table>

 

## Properties


The following table describes the properties that this interface provides.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Property</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Count</strong></p></td>
<td><p>Indicates the number of text entries added by the user.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Interfaces](interfaces-wprcontrol.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20ITraceMergeTextHandler%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





