---
title: cpudisk
description: cpudisk
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2332140d-cc89-4896-b877-d0478af890a8
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# cpudisk


This action produces a text report that summarizes the various metrics regarding the CPU and disk.

``` syntax
-a cpudisk [-thread] [-exc_dpcisr] [-pids ...] [-exes ..] [-marks ..] [-times ..]
```

## Options


<a href="" id="-thread"></a>**-thread**  
Thread-level report.

<a href="" id="-exc-dpcisr"></a>**-exc\_dpcisr**  
Excludes DPC/ISR time from process/thread time if DPC/ISR events are present in the trace.

<a href="" id="-pids-pid-"></a>**-pids***&lt;pid&gt;*  
Process identifiers to include in the report.

<a href="" id="-exes-name-"></a>**-exes***&lt;name&gt;*  
Process names to include in the report.

<a href="" id="-marks-mark-"></a>**-marks***&lt;mark&gt;*  
Marks that determine the time intervals in the report.

<a href="" id="-timest1-t2"></a>**-times***T1 T2*  
Timestamps that determine the time intervals in the report.

## Remarks


If no **-pids** or **-exes** are specified, all processes are included in the report.

If no **-marks** or **-times** are specified, all marks in the traces, or the trace start and end time if fewer than two marks are present in the trace, are used to determine the report time intervals.

To disable marks in the trace, specify an empty **–marks** option.

## Related topics


[Xperf Actions](xperf-actions.md)

[Time and Timestamp Formats](time-and-timestamp-formats.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20cpudisk%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





