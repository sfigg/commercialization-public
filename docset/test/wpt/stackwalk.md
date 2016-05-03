---
title: stackwalk
description: stackwalk
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 00864c2f-0a49-4d6f-a65d-a792245f2875
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# stackwalk


Displays stack-walking options. Stack-walking flags can be specified either directly on the command line or in a file.

``` syntax
xperf -on base -stackwalk ThreadCreate+ProcessCreate
```

- Or -

``` syntax
xperf -on base -stackwalk ThreadCreate -stackwalk ProcessCreate
```

- Or -

``` syntax
xperf -on base -stackwalk @stack.txt
```

- Or -

``` syntax
xperf -on base -stackwalk 0x0501
```

## Remarks


Custom stack walking flags can be specified in format: 0x*mmnn*, where *mm* is event group and *nn* is event type.

The file can contain empty lines or comments that are prefixed by an exclamation mark (!).

The following list shows the recognized stack-walking flags:

-   AlpcClosePort

-   AlpcConnectFail

-   AlpcConnectRequest

-   AlpcConnectSuccess

-   AlpcReceiveMessage

-   AlpcSendMessage

-   AlpcUnwait

-   AlpcWaitForNewMessage

-   AlpcWaitForReply

-   CcCanIWriteFail

-   CcFlushCache

-   CcFlushSection

-   CcLazyWriteScan

-   CcReadAhead

-   CcWorkitemComplete

-   CcWorkitemDequeue

-   CcWorkitemEnqueue

-   CcWriteBehind

-   ContiguousMemoryGeneration

-   CritSecCollision

-   CSwitch

-   DiskFlushInit

-   DiskReadInit

-   DiskWriteInit

-   ExecutiveResource

-   FileCleanup

-   FileClose

-   FileCreate

-   FileDelete

-   FileDirEnum

-   FileDirNotify

-   FileFlush

-   FileFSCTL

-   FileOpEnd

-   FileQueryInformation

-   FileRead

-   FileRename

-   FileSetInformation

-   FileWrite

-   HardFault

-   HeapAlloc

-   HeapCreate

-   HeapDestroy

-   HeapFree

-   HeapRangeCreate

-   HeapRangeDestroy

-   HeapRangeRelease

-   HeapRangeReserve

-   HeapRealloc

-   ImageLoad

-   ImageUnload

-   KernelQueueDequeue

-   KernelQueueEnqueue

-   KernelSignal

-   KernelSignalInit

-   KernelSync

-   KernelSyncAll

-   KernelWaitSync

-   KernelWaitSyncAll

-   MapFile

-   Mark

-   MiniFilterPostOpInit

-   MiniFilterPreOpInit

-   PagefaultAV

-   PagefaultCopyOnWrite

-   PagefaultDemandZero

-   PagefaultGuard

-   PagefaultHard

-   PagefaultTransition

-   PagefileBackedImageMapping

-   PageRangeAccess

-   PageRangeRelease

-   PoolAlloc

-   PoolAllocSession

-   PoolFree

-   PoolFreeSession

-   PowerDeviceNotify

-   PowerDeviceNotifyComplete

-   PowerIdleStateChange

-   PowerPerfStateChange

-   PowerPostSleep

-   PowerPreSleep

-   PowerSessionCallout

-   PowerSessionCalloutReturn

-   PowerSetDevicesState

-   PowerSetDevicesStateReturn

-   PowerSetPowerAction

-   PowerSetPowerActionReturn

-   PowerThermalConstraint

-   ProcessCreate

-   ProcessDelete

-   Profile

-   ProfileSetInterval

-   ReadyThread

-   RegCloseKey

-   RegCreateKey

-   RegDeleteKey

-   RegDeleteValue

-   RegEnumerateKey

-   RegEnumerateValueKey

-   RegFlush

-   RegKcbCreate

-   RegKcbDelete

-   RegOpenKey

-   RegQueryKey

-   RegQueryMultipleValue

-   RegQueryValue

-   RegSetInformation

-   RegSetValue

-   RegVirtualize

-   SplitIO

-   SyscallEnter

-   SyscallExit

-   ThreadCreate

-   ThreadDelete

-   ThreadPoolCallbackCancel

-   ThreadPoolCallbackDequeue

-   ThreadPoolCallbackEnqueue

-   ThreadPoolCallbackStart

-   ThreadPoolCallbackStop

-   ThreadPoolClose

-   ThreadPoolCreate

-   ThreadPoolSetMaxThreads

-   ThreadPoolSetMinThreads

-   ThreadSetBasePriority

-   ThreadSetPriority

-   TimerSetOneShot

-   TimerSetPeriodic

-   UnMapFile

-   VirtualAlloc

-   VirtualFree

## Example


The stack-walking flag file can contain any number of stack-walking flags per line, separated by spaces, plus signs (+), or on new lines, as shown in the following example.

``` syntax
ThreadCreate ProcessCreate
DiskReadInit+DiskWriteInit+DiskFlushInit
CSwitch
```

## Related topics


[Xperf Options](xperf-options.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20stackwalk%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





