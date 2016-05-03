---
title: GetNGenPdbsPath
description: GetNGenPdbsPath
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b3abddcc-b83f-4cfc-9e9a-64ec96465b21
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# GetNGenPdbsPath


Returns the path for both cache and destination NGEN PDB files for managed code.

## Syntax


``` syntax
HRESULT GetNGenPdbsPath
  ([out] VARIANT_BOOL* pfEnable,
  [out] BSTR* pbstrNGenPdbsCachePath,
  [out] BSTR* pbstrNGenPdbsTargetPath)
;
```

## Parameters


<a href="" id="pfenable"></a>*pfEnable*  
\[out\] A Boolean that indicates whether NGEN PDBs are enabled.

<a href="" id="pbstrngenpdbscachepath"></a>*pbstrNGenPdbsCachePath*  
\[out\] A pointer to the source path.

<a href="" id="pbstrngenpdbstargetpath"></a>*pbstrNGenPdbsTargetPath*  
\[out\] A pointer to the destination path.

## Return Value


The following table describes possible return values. Failure return values are implementation-specific.

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
<td><p>Indicates success.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[ITraceMergeTextHandler](itracemergetexthandler.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20GetNGenPdbsPath%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





