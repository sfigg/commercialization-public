---
title: Xperf Built-in Profiles
description: Xperf Built-in Profiles
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5628e0c0-5882-4b83-b8c1-058e5a125c68
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Xperf Built-in Profiles


To display all the built-in Xperf profiles, run the following command.

``` syntax
xperf -profiles
```

The following table describes available profiles.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Profile</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>perf!FileIOProfiles.InSequentialFile</p></td>
<td><p>File I/O tracing profile in a sequential file.</p></td>
</tr>
<tr class="even">
<td><p>perf!FileIOProfiles.InBuffer</p></td>
<td><p>File I/O tracing profile in a buffer.</p></td>
</tr>
<tr class="odd">
<td><p>perf!GeneralProfiles.InSequentialFile</p></td>
<td><p>Common system metrics tracing profile in a sequential file.</p></td>
</tr>
<tr class="even">
<td><p>perf!GeneralProfiles.InBuffer</p></td>
<td><p>Common system metrics tracing profile in a buffer.</p></td>
</tr>
<tr class="odd">
<td><p>perf!PerfCoreProfiles.InSequentialFile</p></td>
<td><p>Basic system metrics tracing profile (included with all built-in profiles) in a sequential file.</p></td>
</tr>
<tr class="even">
<td><p>perf!PerfCoreProfiles.InBuffer</p></td>
<td><p>Basic system metrics tracing profile (included with all built-in profiles) in a buffer.</p></td>
</tr>
<tr class="odd">
<td><p>perf!RegistryProfiles.InSequentialFile</p></td>
<td><p>Registry tracing profile in a sequential file.</p></td>
</tr>
<tr class="even">
<td><p>perf!RegistryProfiles.InBuffer</p></td>
<td><p>Registry tracing profile in a buffer.</p></td>
</tr>
<tr class="odd">
<td><p>perf!StdProfile</p></td>
<td><p>Common definitions used in built-in profiles (not startable).</p></td>
</tr>
</tbody>
</table>

 

## Examples


The following examples turn on several ETW sessions and merge them into a single trace file as needed.

**Memory-based trace profile**

For an in-memory repeated snapshots trace profile, run the following command.

``` syntax
xperf -start perf!GeneralProfiles.InBuffer
```

Run some scenario, and then run the following command.

``` syntax
xperf -save perf!GeneralProfiles.InBuffer snapshot1.etl
```

You can optionally continue saving additional snapshots, and then stop the trace capturing by running the following command.

``` syntax
xperf -cancel perf!GeneralProfiles.InBuffer
```

**File-based trace profile**

To start a file-based trace profile, run following command.

``` syntax
xperf -start perf!RegistryProfiles.InSequentialFile
```

Run some scenario, and then run the following command to stop trace capturing.

``` syntax
xperf -stop perf!RegistryProfiles.InSequentialFile trace.etl
```

**Extending profile definitions**

Profile definitions can be extended and composed using the command line. For example, to add **ReadyThread** stacks to the **perf!FileIOProfiles.InSequentialFile** profile, run the following command.

``` syntax
xperf -start perf!FileIOProfiles.InSequentialFile -stackwalk ReadyThread
```

## Related topics


[Xperf Profiles](xperf-profiles.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Xperf%20Built-in%20Profiles%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





