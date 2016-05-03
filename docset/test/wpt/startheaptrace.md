---
title: StartHeapTrace
description: StartHeapTrace
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2f3ecae0-532a-45ab-a5e3-a5ed4868decf
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# StartHeapTrace


\[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.\]

This function registers and starts a heap tracing session for a set of specified PIDs. You can also enable stack walking for certain heap events such as allocation or deletion using this function.

The process for which heap tracing is to be enabled must be created before calling this function. In order to capture heap events from the very start of the program, it is advisable that the process be started with the [CREATE\_SUSPENDED](https://msdn.microsoft.com/library/windows/desktop/ms682425.aspx) flag, then heap tracing enabled for its PID, then the process resumed.

Heap tracing is very verbose and can quickly generate a very large trace file. Events may be lost easily if the session’s buffers are too small or too few. It is recommended that the number of processes for which heap tracing is enabled be limited in order to not lose events. Enabling heap tracing may have a performance impact on the process being traced.

``` syntax
ULONG
WINAPI
StartHeapTrace(
    _Out_ PTRACEHANDLE TraceHandle,
    _Inout_ PEVENT_TRACE_PROPERTIES Properties,
    _In_z_ LPCWSTR wszSessionName,
    _In_reads_opt_(cPids) const ULONG Pids[],
    _In_  ULONG cPids,
    _In_reads_opt_(cStackTracingEventIds) const STACK_TRACING_EVENT_ID StackTracingEventIds[],
    _In_  ULONG cStackTracingEventIds
    );
```

## Parameters


<a href="" id="tracehandle--out-"></a>*TraceHandle* \[out\]  
Stores a handle to an event tracing session. This parameter is set to zero if the handle is not valid. This parameter should not be compared to INVALID\_HANDLE\_VALUE. Do not use this handle if the function fails.

<a href="" id="properties--in--out-"></a>*Properties* \[in, out\]  
Stores a pointer to an [EVENT\_TRACE\_PROPERTIES](https://msdn.microsoft.com/library/windows/desktop/aa363784.aspx) structure. EVENT\_TRACE\_PROPERTIES configures certain aspects of session behavior.

It is not necessary to set the Guid member because this function always uses the its own value. If you do specify a GUID it will not be used.

<a href="" id="wszsessionname--in-"></a>*wszSessionName* \[in\]  
SThe session name to pass to [StartTrace](https://msdn.microsoft.com/library/windows/desktop/aa364117.aspx).

<a href="" id="pids--in-"></a>*Pids* \[in\]  
An array of process IDs to enable heap tracing on.

<a href="" id="cpids--in-"></a>*cPids* \[in\]  
The size of the Pids array.

<a href="" id="cstacktracingeventids--in-"></a>*cStackTracingEventIds* \[in\]  
The size of the StackTracingEventIds array.

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
<td><p>ERROR_ALREADY_EXISTS</p></td>
<td><p>Only a single instance of the kernel logger runs on the system. If this function attempts to start after another component has started kernel logging, this error is possibly returned.</p></td>
</tr>
<tr class="even">
<td><p>ERROR_INVALID_FLAGS</p></td>
<td><p>Possibly indicates that there are invalid trace flags in <strong>Properties.EnableFlags</strong>.</p></td>
</tr>
<tr class="odd">
<td><p>ERROR_OUT_OF_MEMORY</p></td>
<td><p>Possibly indicates failure to allocate memory for EVENT_TRACE_PROPERTIES.</p></td>
</tr>
</tbody>
</table>

 

If the function fails for a reason other than those listed, a system error code is returned.

## Remarks


None

## Related topics


[Functions](functions-wpa.md)

[UpdateHeapTrace](updateheaptrace.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20StartHeapTrace%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





