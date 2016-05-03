---
title: IOnOffTransitionManager
description: IOnOffTransitionManager
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9d719b05-f720-4464-be7a-c991a1d7639e
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# IOnOffTransitionManager


Enables the client to store the profiles in the [IProfileCollection](iprofilecollection.md) to the registry for boot tracing, but does not run the profiles. This behavior contrasts with that of[IControlManager](icontrolmanager.md), which runs the profile immediately. When the system boots, Event Tracing for Windows (ETW) reads the registry keys and enables providers for boot tracing accordingly. The library enables collection of PCW data by starting a task scheduler job configured to run on boot.

## Syntax


``` syntax
{
  [id(1), helpstring("EnableBootRecording")] HRESULT EnableBootRecording
    ([in] IProfileCollection* pProfileCollection);
  [id(2), helpstring("DisableBootRecording")] HRESULT DisableBootRecording
    ([in] IProfileCollection* pProfileCollection);
  [id(3), helpstring("StartShutdownRecording")] HRESULT StartShutdownRecording
    ([in] IProfileCollection* pProfileCollection);
  [id(4), helpstring("UpdateShutdownRecording")] HRESULT UpdateShutdownRecording
    ([in] IProfileCollection* pProfileCollection);
  [id(5), helpstring("MergeShutdownRecording")] HRESULT MergeShutdownRecording
    ([in] BSTR bstrFileName,
    [in] IProfileCollection* pProfileCollection,
    [in] ITraceMergeProperties* pTraceMergeProperties)
  ;
};
```

## Functions


This interface provides the functions described in the following table.

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
<td><p>[EnableBootRecording](enablebootrecording.md)</p></td>
<td><p>Enables boot recording for the specified profile collection.</p></td>
</tr>
<tr class="even">
<td><p>[DisableBootRecording](disablebootrecording.md)</p></td>
<td><p>Disables boot recording for the specified profile collection.</p></td>
</tr>
<tr class="odd">
<td><p>[StartShutdownRecording](startshutdownrecording.md)</p></td>
<td><p>Starts shutdown recording.</p></td>
</tr>
<tr class="even">
<td><p>[UpdateShutdownRecording](updateshutdownrecording.md)</p></td>
<td><p>Updates shutdown recording.</p></td>
</tr>
<tr class="odd">
<td><p>[MergeShutdownRecording](mergeshutdownrecording.md)</p></td>
<td><p>Merges shutdown recordings.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Interfaces](interfaces-wprcontrol.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20IOnOffTransitionManager%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





