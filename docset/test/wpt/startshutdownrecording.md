---
title: StartShutdownRecording
description: StartShutdownRecording
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 763c2f77-aeed-43af-9238-c0a041e02867
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# StartShutdownRecording


Starts shutdown recording.

## Syntax


``` syntax
HRESULT StartShutdownRecording
  ([in] IProfileCollection* pProfileCollection)
;
```

## Parameters


<a href="" id="pprofilecollection"></a>*pProfileCollection*  
\[in\] Indicates the **IProfileCollection** object.

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
<td><p>The function successfully started the shutdown recording.</p></td>
</tr>
<tr class="even">
<td><p>E_POINTER</p></td>
<td><p>At least one of function arguments is null.</p></td>
</tr>
<tr class="odd">
<td><p>E_WPRC_RUNTIME_STATE_PROFILES_RUNNING</p></td>
<td><p>Recording is already running (it should be stopped/canceled before call to this function).</p></td>
</tr>
<tr class="even">
<td><p>E_WPRC_RUNTIME_STATE_BOOT_RECORDING</p></td>
<td><p>Boot recording is already running (it should be stopped/canceled before call to this function).</p></td>
</tr>
<tr class="odd">
<td><p>E_WPRC_RUNTIME_STATE_EVENT_SESSION_RUNNING</p></td>
<td><p>One of event sessions that should be started is already running. It could be started earlier by some other application (or as a result of WPR state corruption, for example after WPR crash).</p></td>
</tr>
<tr class="even">
<td><p>E_WPRC_INVALID_STARTSHUTDOWN_OPERATION</p></td>
<td><p>Invalid profile for shutdown recording (for example, logging mode is memory, but only file supported for shutdown).</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[IOnOffTransitionManager](ionofftransitionmanager.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20StartShutdownRecording%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





