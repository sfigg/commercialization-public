---
title: Built-in Recording Profiles
description: Built-in Recording Profiles
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: dd2ca0ee-4a15-4d25-8911-8a349e9c8cae
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Built-in Recording Profiles


Windows Performance Recorder (WPR) includes built-in profiles that you can use to specify the kind of recording that WPR makes. You can access the built-in profiles from the WPR user interface (UI) by using the **More Options** menu.

You can also add custom profiles to WPR. For more information, see [Authoring Recording Profiles](authoring-recording-profiles.md) and [Add or Remove a Custom Recording Profile](add-or-remove-a-custom-recording-profile.md).

## Resource Analysis Profiles


The following table describes the built-in profiles that record resource analysis.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Profile name</th>
<th>Recording</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>CPU usage</strong></p></td>
<td><p>CPU utilization for each CPU on the system</p></td>
</tr>
<tr class="even">
<td><p><strong>Disk I/O activity</strong></p></td>
<td><p>All disk I/O activity</p></td>
</tr>
<tr class="odd">
<td><p><strong>File I/O activity</strong></p></td>
<td><p>All file I/O activity</p></td>
</tr>
<tr class="even">
<td><p><strong>Registry I/O activity</strong></p></td>
<td><p>All changes to the registry</p></td>
</tr>
<tr class="odd">
<td><p><strong>Networking I/O activity</strong></p></td>
<td><p>All networking I/O activity</p></td>
</tr>
<tr class="even">
<td><p><strong>Heap usage</strong></p></td>
<td><p>All allocations and de-allocations from the heap for the specified process</p></td>
</tr>
<tr class="odd">
<td><p><strong>Pool usage</strong></p></td>
<td><p>Pool allocations and de-allocations</p></td>
</tr>
<tr class="even">
<td><p><strong>VirtualAlloc usage</strong></p></td>
<td><p>All virtual allocations</p></td>
</tr>
<tr class="odd">
<td><p><strong>Power usage</strong></p></td>
<td><p>Power utilization and idle and sleep states</p></td>
</tr>
<tr class="even">
<td><p><strong>GPU activity</strong></p></td>
<td><p>Graphics Processing Unit (GPU)-specific events, such as GPU utilization</p></td>
</tr>
<tr class="odd">
<td><p><strong>Handle usage</strong></p></td>
<td><p>Usage of handles</p></td>
</tr>
<tr class="even">
<td><p><strong>XAML activity</strong></p></td>
<td><p>Events from XAML-related providers</p></td>
</tr>
<tr class="odd">
<td><p><strong>HTML activity</strong></p></td>
<td><p>Events from HTML-related providers, such as Internet Explorer and JavaScript</p></td>
</tr>
<tr class="even">
<td><p><strong>Desktop composition activity</strong></p></td>
<td><p>All desktop composition activity</p></td>
</tr>
<tr class="odd">
<td><p><strong>Resident Set analysis</strong></p></td>
<td><p>All changes to the resident set</p></td>
</tr>
</tbody>
</table>

 

## Scenario Analysis Profiles


The following table describes the built-in profiles that record specific scenarios.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Profile</th>
<th>Recording</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Audio glitches</strong></p></td>
<td><p>All glitches that occur during streaming audio</p></td>
</tr>
<tr class="even">
<td><p><strong>Video glitches</strong></p></td>
<td><p>All glitches that occur during streaming video</p></td>
</tr>
<tr class="odd">
<td><p><strong>Internet Explorer</strong></p></td>
<td><p>Windows Internet Explorer performance</p></td>
</tr>
<tr class="even">
<td><p><strong>Minifilter I/O activity</strong></p></td>
<td><p>Minifilter I/O activity</p></td>
</tr>
<tr class="odd">
<td><p><strong>XAML application analysis</strong></p></td>
<td><p>XAML app-related activity</p></td>
</tr>
<tr class="even">
<td><p><strong>HTML application analysis</strong></p></td>
<td><p>HTML app-related activity</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Recording Profiles](recording-profiles.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Built-in%20Recording%20Profiles%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





