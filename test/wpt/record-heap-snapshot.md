---
title: Record a Heap Snapshot
description: Windows Performance Recorder (WPR) enables snapshot of heap for specific processes on the system.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 217ECDF0-1B6D-4995-85DE-22708D608D5E
ms.mktglfcycl: operate
ms.sitesec: msdn
ms.author: dawn.wood
ms.date: 11/19/2018
ms.topic: article
---

# Record a Heap Snapshot

Windows Performance Recorder (WPR) enables snapshot of heap for specific processes on the system.

This heap snapshot is different from the [heap analysis recording](https://docs.microsoft.com/en-us/windows-hardware/test/wpt/recording-for-heap-analysis), as it takes snapshot view of heap. For example, a Heap Snapshot saves all heap allocation information in the database. When the SingleSnapshot command is executed, it exports the allocation information to the trace buffer. The snapshot contains allocation information including all stacks that are created after the snapshot was enabled. 

## To capture a heap snapshot trace

1. Enable the heap snapshot trace
There two ways of enabling a heap snapshot trace, by process name and by process ID. 

The following example uses image name: 
```
 wpr -snapshotconfig heap -name heaptest.exe           //query snapshot config
 wpr -snapshotconfig heap -name heaptest.exe enable    //enable snapshot config
 Example using PID: 
 wpr -snapshotconfig heap -pid 8048 enable                //enable snapshot config
 ```

2.	Start tracing using wpr or wprui
```
using wpr :
wpr -start heapsnapshot -filemode                          
```

If -name option was used to enable heap snapshot, you need to launch the process after the configuration is enabled.

3.	Take the heap snapshot

Each time a snapshot is triggered, the allocation stack database is exported to the trace buffers. A single snapshot (can be used multiple times), for example:
```
 wpr -singlesnapshot heap <pid for foo.exe>
	Periodic snapshot:
 wpr -enableperiodicsnapshot heap <frequency in seconds> <pid for foo.exe>
 ```

4.	Stop the trace
* save the trace 
* execute this command:

```
wpr -stop heapsnapshot.etl
```

5.	Disable the heap snapshot
You can disable the heap using the PID or Name. Here are examples of both. 

Using PID: 
```
 wpr -snapshotconfig heap -pid %_PID% disable
 ```
Using Name:
```
wpr -snapshotconfig heap -name Win32Project1.exe disable
```

**Note:**
If the -name option is used to enable heap snapshot, it sets IFEO registry internally and will apply to all new instances of the process. Disable it by using the SnapshotConfig option when testing is finished to avoid unnecessary heap collection.
Also, if the cpu architecture of process and OS is not matching (running win32 app on 64bit OS), use the name option (IFEO).


## Related topics
Snapshotconfig
