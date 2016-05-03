---
title: Save
description: Save
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: eedd3310-1f95-4e44-9be2-b33ed98dfa9a
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Save


Saves a recording that is logged to circular buffers in memory to the specified event trace log (ETL) file. The recording continues to run.

## Syntax


``` syntax
HRESULT Save
  ([in] BSTR bstrFileName,
  [in] IProfileCollection* pProfileCollection,
  [in] ITraceMergeProperties* pTraceMergeProperties)
;
```

## Parameters


<a href="" id="bstrfilename"></a>*bstrFileName*  
\[in\] The name of the file to which merged events from recordings of all the profiles are saved.

<a href="" id="pprofilecollection"></a>*pProfileCollection*  
\[in\] A pointer to the [IProfileCollection](iprofilecollection.md) object that contains a collection of profiles to save.

<a href="" id="ptracemergeproperties"></a>*pTraceMergeProperties*  
\[in\] A pointer to the [ITraceMergeProperties](itracemergeproperties.md) object that contains properties with which to merge recordings.

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
<td><p>The function successfully saved the recording.</p></td>
</tr>
<tr class="even">
<td><p>E_INVALIDARG</p></td>
<td><p>One or more arguments are invalid.</p></td>
</tr>
<tr class="odd">
<td><p>E_WPRC_FAILED_TO_SAVE_PROFILE</p></td>
<td><p>The library failed to save a profile in the profile collection. Use [IControlErrorInfo](icontrolerrorinfo.md) to obtain detailed error information.</p></td>
</tr>
<tr class="even">
<td><p>E_WPRC_TRACE_MERGE_LOST_EVENTS</p></td>
<td><p>The Event Tracing for Windows (ETW) session lost events, and merging the event trace log (ETL) files from the session may create an incomplete ETL file.</p></td>
</tr>
</tbody>
</table>

 

## Remarks


This function is used only for profiles that are logging to circular buffers. After the sessions are saved, the recording continues to run.

## Related topics


[IControlManager](icontrolmanager.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Save%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





