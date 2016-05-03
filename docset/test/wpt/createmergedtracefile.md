---
title: CreateMergedTraceFile
description: CreateMergedTraceFile
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d641530d-2be1-4266-962b-97863cff2e57
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# CreateMergedTraceFile


This function merges multiple trace files into a single output file.

``` syntax
ULONG
WINAPI
CreateMergedTraceFile(
__in LPCWSTR wszMergedFileName,
__in LPCWSTR wszTraceFileNames[],
__in ULONG cTraceFileNames,
__in DWORD dwExtendedDataFlags
);
```

## Parameters


<a href="" id="wszmergedfilename--in-"></a>*wszMergedFileName* \[in\]  
Specifies the name of the output trace file.

<a href="" id="wsztracefilenames--in-"></a>*wszTraceFileNames* \[in\]  
Pointer to an array of trace files to be merged.

<a href="" id="ctracefilenames--in-"></a>*cTraceFileNames* \[in\]  
Count of the elements in the *wszTraceFileNames* array.

<a href="" id="dwextendeddataflags--in-"></a>*dwExtendedDataFlags* \[in\]  
These flags specify the system information to be injected into the merged trace file. For more information about valid flags, see [Custom Injection of System Information](custom-injection-of-system-information.md).

## Return Value


ERROR\_SUCCESS indicates success.

Possible error values are described in the following table.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Error Value</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>ERROR_INSUFFICIENT_BUFFER</p></td>
<td><p>Possibly indicates that the merged trace does not contain a complete set of events from each file.</p></td>
</tr>
<tr class="even">
<td><p>ERROR_REVISION_MISMATCH</p></td>
<td><p>Possibly indicates that the trace files being merged contain events with different versions that could not be merged.</p></td>
</tr>
</tbody>
</table>

 

If neither of these error values is returned, a system error code is returned.

## Remarks


You can merge two or more trace files from simultaneous sessions that were captured on the same computer into a single trace file. You can also merge trace files from other tracing sessions if those files have the same boot times. Optionally, the merge operation adds metadata concerning the traces.

This function can inject extended data into a single trace file. In this case the *wszMergedFileName* array contains only a single element, which is the name of the trace file.

**Note**  
An unmerged kernel trace cannot decode symbols correctly.

 

The API is implemented in Unicode only.

**Requirements**

**Versions:** Available beginning in Windows Vista. This structure is distributed with Windows Performance Analyzer.

**Headers:** Declared in KernelTraceControl.h. Include KernelTraceControl.h.

**Library:** Contained in KernelTraceControl.dll.

## Related topics


[Functions](functions-wpa.md)

[Custom Injection of System Information](custom-injection-of-system-information.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20CreateMergedTraceFile%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





