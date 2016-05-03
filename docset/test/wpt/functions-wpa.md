---
title: Functions
description: Functions
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d449cc0e-82fd-484f-8ca6-56a430489e08
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Functions


This section covers the functions available in the Kernel Trace Control API.

## In This Section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[CreateMergedTraceFile](createmergedtracefile.md)</p></td>
<td><p>Merges multiple WPT/ETW trace files into a single output file.</p></td>
</tr>
<tr class="even">
<td><p>[StartHeapTrace](startheaptrace.md)</p></td>
<td><p>Registers and starts a heap tracing session for a set of specified PIDs. Enables stack walking for certain heap events such as allocation or deletion using this function.</p></td>
</tr>
<tr class="odd">
<td><p>[StartKernelTrace](startkerneltrace.md)</p></td>
<td><p>Registers and starts a kernel event tracing session.</p></td>
</tr>
<tr class="even">
<td><p>[UpdateHeapTrace](updateheaptrace.md)</p></td>
<td><p>Updates an existing heap tracing session with a new set of PIDs, stackwalking events, or other ETW session changes.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Kernel Trace Control API Reference](kernel-trace-control-api-reference.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Functions%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





