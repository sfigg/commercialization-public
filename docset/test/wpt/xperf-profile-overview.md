---
title: Xperf Profile Overview
description: Xperf Profile Overview
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2de4bf4a-eb88-4dd9-a91d-2b049ce9cd49
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Xperf Profile Overview


A trace profile is a collection of settings about a specific type of trace. These profiles are not compatible for recording with Windows Performance Recorder (WPR). You can gather and control these settings with a single command per operation. Most profiles are one of these two types: memory-based or file-based. Select the profile that matches the mechanism that you use for tracing: writing to a buffer in memory or writing to a file.

The following table describes the types of sessions.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Session Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>InSequentialFile sessions</p></td>
<td><p>These sessions are saved into a file sequentially, extending it until a preset maximum file size is reached. This behavior maps to the ETW sequential mode.</p></td>
</tr>
<tr class="even">
<td><p>InBuffer sessions</p></td>
<td><p>These sessions save data in memory, overwriting the oldest data with the most recent data when the buffer is full. These sessions must be saved to a snapshot file for analysis. This behavior maps to the ETW buffering mode.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
The file modes cannot be combined.

 

## Related topics


[Xperf Profiles](xperf-profiles.md)

[Sessions](sessions.md)

[Providers](providers.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Xperf%20Profile%20Overview%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





