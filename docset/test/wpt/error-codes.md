---
title: Error Codes
description: Error Codes
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 08f519ec-ef59-4bbd-9155-dcbb9b803fca
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Error Codes


The following table describes WPRControl error codes.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Error Code</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>E_WPRC_DUPLICATE_INSTANCE_RUNNING</p></td>
<td><p>The library detected that another instance of the library is already running.</p></td>
</tr>
<tr class="even">
<td><p>E_WPRC_FAILED_TO_ADD_PROFILE</p></td>
<td><p>The library failed to add a profile to the collection.</p></td>
</tr>
<tr class="odd">
<td><p>E_WPRC_FAILED_TO_CANCEL_PROFILE</p></td>
<td><p>The library failed to cancel a profile in the profile collection.</p></td>
</tr>
<tr class="even">
<td><p>E_WPRC_FAILED_TO_CLEAR_PROFILE_COLLECTION</p></td>
<td><p>The library failed to remove all profiles from the collection.</p></td>
</tr>
<tr class="odd">
<td><p>E_WPRC_FAILED_TO_DISABLE_DEBUG_LOGGING</p></td>
<td><p>The library failed to disable debug logging.</p></td>
</tr>
<tr class="even">
<td><p>E_WPRC_FAILED_TO_DISABLE_PROFILES_FOR_BOOT_TRACING</p></td>
<td><p>The library failed to remove the profiles so that they do not start during boot.</p></td>
</tr>
<tr class="odd">
<td><p>E_WPRC_FAILED_TO_ENABLE_DEBUG_LOGGING</p></td>
<td><p>The library failed to enable debug logging.</p></td>
</tr>
<tr class="even">
<td><p>E_WPRC_FAILED_TO_ENABLE_PROFILES_FOR_BOOT_TRACING</p></td>
<td><p>The library failed to save the profiles to start during boot.</p></td>
</tr>
<tr class="odd">
<td><p>E_WPRC_FAILED_TO_QUERY_BUILTIN_PROFILES</p></td>
<td><p>The library failed to query the built-in profiles.</p></td>
</tr>
<tr class="even">
<td><p>E_WPRC_FAILED_TO_QUERY_PROFILES</p></td>
<td><p>The library failed to query the properties of the session and providers in all the profiles.</p></td>
</tr>
<tr class="odd">
<td><p>E_WPRC_FAILED_TO_REMOVE_PROFILE</p></td>
<td><p>The library failed to remove a profile from the collection.</p></td>
</tr>
<tr class="even">
<td><p>E_WPRC_FAILED_TO_SAVE_PROFILE</p></td>
<td><p>The library failed to save a profile in the profile collection.</p></td>
</tr>
<tr class="odd">
<td><p>E_WPRC_FAILED_TO_START_PROFILE</p></td>
<td><p>The library failed to start a profile in the profile collection.</p></td>
</tr>
<tr class="even">
<td><p>E_WPRC_FAILED_TO_STOP_PROFILE</p></td>
<td><p>The library failed to stop a profile in the profile collection.</p></td>
</tr>
<tr class="odd">
<td><p>E_WPRC_FAILED_TO_UPDATE_PROFILE</p></td>
<td><p>The library failed to update a profile in the profile collection.</p></td>
</tr>
<tr class="even">
<td><p>E_WPRC_FAILED_TO_VALIDATE_PROFILE</p></td>
<td><p>The library failed to validate the profile.</p></td>
</tr>
<tr class="odd">
<td><p>E_WPRC_FAILED_TO_VALIDATE_TRACEMERGE_PROPERTIES</p></td>
<td><p>The library failed to validate the trace merge properties.</p></td>
</tr>
<tr class="even">
<td><p>E_WPRC_INVALID_PROFILES_RUNTIME_STATE</p></td>
<td><p>The profiles running on the system are different from those used to start the recording.</p></td>
</tr>
<tr class="odd">
<td><p>E_WPRC_TRACE_MERGE_LOST_EVENTS</p></td>
<td><p>The Event Tracing for Windows (ETW) session lost events, and merging the event trace log (ETL) files from the session may create an incomplete ETL file.</p></td>
</tr>
<tr class="even">
<td><p>E_WPRC_WOW64_NOT_SUPPORTED</p></td>
<td><p>The profile library does not support Windows 32-bit On Windows 64-bit.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[WPRControl API Reference](wprcontrol-api-reference.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Error%20Codes%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





