---
title: Query
description: Query
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 676f0ed9-641c-49ea-882f-0607e387f8d0
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Query


Queries the properties of the session and providers in all profiles.

## Syntax


``` syntax
HRESULT Query
  ([out] BSTR* pbstrResults,
  [in] VARIANT_BOOL fValidateRuntimeState)
;
```

## Parameters


<a href="" id="pbstrresults"></a>*pbstrResults*  
\[out\] A string in XML format that contains session and provider properties of all the profiles started by the WPRC library.

<a href="" id="fvalidateruntimestate"></a>*fValidateRuntimeState*  
\[in\] A Boolean that indicates whether the library should determine whether the recording is running.

## Return Value


The following table describes the possible values.

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
<td><p>The function successfully returned the properties.</p></td>
</tr>
<tr class="even">
<td><p>E_POINTER</p></td>
<td><p>The pointer is invalid.</p></td>
</tr>
<tr class="odd">
<td><p>E_WPRC_FAILED_TO_QUERY_PROFILES</p></td>
<td><p>The library failed to query the properties of the session and providers in all the profiles. Use [IControlErrorInfo](icontrolerrorinfo.md) to get detailed error information.</p></td>
</tr>
<tr class="even">
<td><p>E_WPRC_INVALID_PROFILES_RUNTIME_STATE</p></td>
<td><p>The list of profiles that are running on the system does not match those used to start the recording. See <strong>IControlErrorInfo</strong> for detailed error information.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[IControlManager](icontrolmanager.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Query%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





