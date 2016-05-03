---
title: Interfaces
description: Interfaces
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d986953c-cadf-4c6e-a204-12a29e0b672e
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Interfaces


This section documents the interfaces that the WPRControl API provides.

## In This Section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[IControlErrorInfo](icontrolerrorinfo.md)</p></td>
<td><p>Provides functions that obtain information about errors that occur when the control manager performs an operation.</p></td>
</tr>
<tr class="even">
<td><p>[IControlManager](icontrolmanager.md)</p></td>
<td><p>Represents the Windows Performance Recorder (WPR) manager, which controls ETW sessions.</p></td>
</tr>
<tr class="odd">
<td><p>[IControlProgressHandler](icontrolprogresshandler.md)</p></td>
<td><p>Represents a client-side handler that receives updates when the library performs an operation.</p></td>
</tr>
<tr class="even">
<td><p>[IEnumControlWarningInfo](ienumcontrolwarninginfo.md)</p></td>
<td><p>Provides a standard COM enumeration method for enumerating a collection of [IControlErrorInfo](icontrolerrorinfo.md) interfaces.</p></td>
</tr>
<tr class="odd">
<td><p>[IEnumProfile](ienumprofile.md)</p></td>
<td><p>Provides a standard COM enumeration method for enumerating a collection of [IProfile](iprofile.md) interfaces.</p></td>
</tr>
<tr class="even">
<td><p>[IOnOffTransitionManager](ionofftransitionmanager.md)</p></td>
<td><p>Enables the client to store the profiles of the [IProfileCollection](iprofilecollection.md) to the registry for boot tracing.</p></td>
</tr>
<tr class="odd">
<td><p>[IParsingErrorInfo](iparsingerrorinfo.md)</p></td>
<td><p>Provides functions that get information about XML validation failures.</p></td>
</tr>
<tr class="even">
<td><p>[IProfile](iprofile.md)</p></td>
<td><p>Represents an individual profile that the client controls.</p></td>
</tr>
<tr class="odd">
<td><p>[IProfileCollection](iprofilecollection.md)</p></td>
<td><p>Represents a collection of profiles that the library runs as a unit.</p></td>
</tr>
<tr class="even">
<td><p>[ITraceMergeProperties](itracemergeproperties.md)</p></td>
<td><p>Enables the client to specify policies for merging multiple event trace log (ETL) files using XML.</p></td>
</tr>
<tr class="odd">
<td><p>[ITraceMergeTextHandler](itracemergetexthandler.md)</p></td>
<td><p>Obtains the text and other metadata that was added by the user.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[WPRControl API Reference](wprcontrol-api-reference.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Interfaces%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





