---
title: ISnapshotManager3
description: ISnapshotManager3
ms.author: dawnwood
ms.date: 11/15/2018
ms.topic: article
---

# ISnapshotManager3

## Syntax

```
{
  typedef enum
{
    SnapshotType_Undefined = 0,
    SnapshotType_Heap,
}   SnapshotType;

    [id(1), helpstring("EnablePeriodicSnapshot")] HRESULT EnablePeriodicSnapshot([in] SnapshotType snapshotType, [in] ULONG interval, [in] ULONG* pids, [in] ULONG cPids);
    [id(2), helpstring("DisablePeriodicSnapshot")] HRESULT DisablePeriodicSnapshot([in] SnapshotType snapshotType);
    [id(3), helpstring("SnapshotOnDemand")] HRESULT SnapshotOnDemand([in] SnapshotType snapshotType, [in] ULONG* pids, [in] ULONG cPids);
    [id(4), helpstring("VerifySnapshotSupported")] HRESULT VerifySnapshotSupported([in] TRACEHANDLE traceHandle, [in, out] ULONG* frequencyInSeconds, [in, out] ULONG* cProviders);
    [id(5), helpstring("ConfigSnapshotByPID")] HRESULT ConfigSnapshotByPID([in] ULONG* pids, [in] ULONG cPids, [in] VARIANT_BOOL fEnable);
    [id(6), helpstring("ConfigSnapshotByProcess")] HRESULT ConfigSnapshotByProcess([in] BSTR bstrProcName, [in] VARIANT_BOOL fEnable);
    [id(7), helpstring("ConfigSnapshotByPIDEx")] HRESULT ConfigSnapshotByPIDEx([in] SnapshotType snapshotType, [in] ULONG* pids, [in, out] HRESULT* pResults, [in] ULONG cPids, [in] VARIANT_BOOL fEnable);
    [id(8), helpstring("ConfigSnapshotByProcessEx")] HRESULT ConfigSnapshotByProcessEx([in] SnapshotType snapshotType, [in] BSTR bstrProcName, [in] VARIANT_BOOL fEnable);
```

## Functions

The following table describes the functions that this interface provides.

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
<td><p>[ConfigSnapshotByPID](configsnapshotbypid.md)</p></td>
<td><p>Configures snapshot using the provided process id.</p></td>
</tr>
<tr class="odd">
<td><p>[ConfigSnapshotByPIDEx](configsnapshotbypidex.md)</p></td>
<td><p>Configures snapshot using the provided process id.</p></td>
</tr>
<tr class="even">
<td><p>[ConfigSnapshotByProcess](configsnapshotbyprocess.md)</p></td>
<td><p>Configures snapshot using the provided process name.</p></td>
</tr>
<tr class="even">
<td><p>[ConfigSnapshotByProcessEx](configsnapshotbyprocessex.md)</p></td>
<td><p>Configures snapshot using the provided process name.</p></td>
</tr>
<tr class="even">
<td><p>[DisablePeriodicSnapshot](disableperiodicsnapshot.md)</p></td>
<td><p>Disables periodic snapshot.</p></td>
</tr>
<tr class="odd">
<td><p>[EnablePeriodicSnapshot](enableperiodicsnapshot.md)</p></td>
<td><p>Enables periodic snapshot with the given interval.</p></td>
</tr>
<tr class="odd">
<td><p>[SnapshotOnDemand](snapshotondemand.md)</p></td>
<td><p>Takes snapshot of Snapshot type and exports to the trace buffers.</p></td>
</tr>
<tr class="even">
<td><p>[VerifySnapshotSupported](verifysnapshotsupported.md)</p></td>
<td><p>Queries periodic capture state limits.</p></td>
</tr>

</tbody>
</table>

## Remarks

Most functions require administrator privileges.

## Related topics

* [Interfaces](interfaces-wprcontrol.md)