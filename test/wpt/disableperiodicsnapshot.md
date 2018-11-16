---
title: DisablePeriodicSnapshot 
description: DisablePeriodicSnapshot
ms.author: dawnwood
ms.date: 11/15/2018
ms.topic: article
---

# DisablePeriodicSnapshot

Disables periodic snapshot of SnapshotType.

## Syntax

```
HRESULT DisablePeriodicSnapshot
([in] SnapshotType snapshotType);
Parameters
snapshotType
[in] SnapshotType. 
Note : Currently only available SnapshotType is SnapshotType_Heap
```

## Return Value

HRESULT

## Related Topics

* [ISnapshotManager3](isnapshotmanager3.md)
* [ConfigSnapshotByPID](configsnapshotbypid.md)
* [ConfigSnapshotByPIDEx](configsnapshotbypidex.md)
* [ConfigSnapshotByProcess](configsnapshotbyprocess.md)
* [ConfigSnapshotByProcessEx](configsnapshotbyprocessex.md)
* [EnablePeriodicSnapshot](enableperiodicsnapshot.md)
* [SnapshotOnDemand](snapshotondemand.md)
* [VerifySnapshotSupported](verifysnapshotsupported.md)