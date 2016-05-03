---
title: spinlock
description: spinlock
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5ca2ee5f-ad3f-42ec-91e4-a044ce982650
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# spinlock


This action produces a text file listing information related to spinlock activity.

``` syntax
-a spinlock [-summary] [-counts [n]]
```

## Options


<a href="" id="-summary"></a>**-summary**  
Summarizes spinlock event information in a tab-delimited format.

<a href="" id="-count-n-"></a>**-count***\[n\]*  
Maximum number of files to show.

## Remarks


Xperf spinlock analysis is available for 64-bit architectures. Spinlock instrumentation is supported beginning with Windows 7, Windows Server 2008 R2, and newer versions of the operating system. Xperf supports normal spin locks and queued spin locks. For more information about spin locks, see [Spin Locks](http://go.microsoft.com/fwlink/p/?linkid=213937). To reduce overhead, ETW spinlock instrumentation is sample-based. The sampling frequency can be tuned with `-setspinlocksample`. For more information about starting spinlock sampling, see [start](start.md).

To perform meaningful analysis, familiarity with WPA symbols is recommended. For information on symbols, see [Symbol Support](symbol-support.md).

If your test scenario is already running, it is not necessary to stop the scenario to collect spinlock events. You can start spinlock event collection while the code of interest is being actively exercised. Nor is it necessary to suspend your scenario when spinlock event data has been collected.

**Note**  
Large numbers of spinlock events may overload the trace buffers and cause events to be lost. A message will appear when merging and loading the trace if this happens. For more information about avoiding event loss, see [Avoid Lost Events](avoid-lost-events.md).

For more information about the **spinlock** action, see [Customizing Spinlock Parameters](customizing-spinlock-parameters.md).

 

## Example


The following command example shows how to start a trace with spinlock data.

``` syntax
xperf -on PROC_THREAD+LOADER+SPINLOCK
```

Spinlock event data can also be collected using only the "SPINLOCK" option, as shown in the following command example.

``` syntax
xperf -on SPINLOCK
```

However, if the "PROC\_THREAD+LOADER" options are omitted, symbol information is not available for decoding. For more information about symbols, see [Symbol Support](symbol-support.md).

After event data has been collected into an ETL file, process the ETL file as shown in the following command example.

``` syntax
xperf -i example.etl -symbols -o example.txt -a spinlock
```

This produces a spinlock report. For information about this report, see [Evaluating Spinlock Data](evaluating-spinlock-data.md).

## Related topics


[Xperf Actions](xperf-actions.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20spinlock%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





