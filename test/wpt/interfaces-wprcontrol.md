---
title: Interfaces
description: Interfaces
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d986953c-cadf-4c6e-a204-12a29e0b672e
ms.mktglfcycl: operate
ms.sitesec: msdn
ms.author: eliotgra
ms.date: 05/05/2017
ms.topic: article


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
<td><p><a href="icontrolerrorinfo.md" data-raw-source="[IControlErrorInfo](icontrolerrorinfo.md)">IControlErrorInfo</a></p></td>
<td><p>Provides functions that obtain information about errors that occur when the control manager performs an operation.</p></td>
</tr>
<tr class="even">
<td><p><a href="icontrolmanager.md" data-raw-source="[IControlManager](icontrolmanager.md)">IControlManager</a></p></td>
<td><p>Represents the Windows Performance Recorder (WPR) manager, which controls ETW sessions.</p></td>
</tr>
<tr class="odd">
<td><p><a href="icontrolprogresshandler.md" data-raw-source="[IControlProgressHandler](icontrolprogresshandler.md)">IControlProgressHandler</a></p></td>
<td><p>Represents a client-side handler that receives updates when the library performs an operation.</p></td>
</tr>
<tr class="even">
<td><p><a href="ienumcontrolwarninginfo.md" data-raw-source="[IEnumControlWarningInfo](ienumcontrolwarninginfo.md)">IEnumControlWarningInfo</a></p></td>
<td><p>Provides a standard COM enumeration method for enumerating a collection of <a href="icontrolerrorinfo.md" data-raw-source="[IControlErrorInfo](icontrolerrorinfo.md)">IControlErrorInfo</a> interfaces.</p></td>
</tr>
<tr class="odd">
<td><p><a href="ienumprofile.md" data-raw-source="[IEnumProfile](ienumprofile.md)">IEnumProfile</a></p></td>
<td><p>Provides a standard COM enumeration method for enumerating a collection of <a href="iprofile.md" data-raw-source="[IProfile](iprofile.md)">IProfile</a> interfaces.</p></td>
</tr>
<tr class="even">
<td><p><a href="ionofftransitionmanager.md" data-raw-source="[IOnOffTransitionManager](ionofftransitionmanager.md)">IOnOffTransitionManager</a></p></td>
<td><p>Enables the client to store the profiles of the <a href="iprofilecollection.md" data-raw-source="[IProfileCollection](iprofilecollection.md)">IProfileCollection</a> to the registry for boot tracing.</p></td>
</tr>
<tr class="odd">
<td><p><a href="iparsingerrorinfo.md" data-raw-source="[IParsingErrorInfo](iparsingerrorinfo.md)">IParsingErrorInfo</a></p></td>
<td><p>Provides functions that get information about XML validation failures.</p></td>
</tr>
<tr class="even">
<td><p><a href="iprofile.md" data-raw-source="[IProfile](iprofile.md)">IProfile</a></p></td>
<td><p>Represents an individual profile that the client controls.</p></td>
</tr>
<tr class="odd">
<td><p><a href="iprofilecollection.md" data-raw-source="[IProfileCollection](iprofilecollection.md)">IProfileCollection</a></p></td>
<td><p>Represents a collection of profiles that the library runs as a unit.</p></td>
</tr>
<tr class="odd">
<td><p>[ISnapshotManager3](isnapshotmanager3.md)</p></td>
<td><p>Represents a snapshot object that the client controls to enable, disable, and take the snapshot. </p></td>
</tr>
<tr class="even">
<td><p><a href="itracemergeproperties.md" data-raw-source="[ITraceMergeProperties](itracemergeproperties.md)">ITraceMergeProperties</a></p></td>
<td><p>Enables the client to specify policies for merging multiple event trace log (ETL) files using XML.</p></td>
</tr>
<tr class="odd">
<td><p><a href="itracemergetexthandler.md" data-raw-source="[ITraceMergeTextHandler](itracemergetexthandler.md)">ITraceMergeTextHandler</a></p></td>
<td><p>Obtains the text and other metadata that was added by the user.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[WPRControl API Reference](wprcontrol-api-reference.md)

 

 







