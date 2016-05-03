---
title: profile
description: profile
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b0b4c89c-70e7-4fe8-986d-e057b8074c9e
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# profile


This action produces a text file that summarizes metrics for profiles.

``` syntax
-a profile [-util [n]] [-detail] [-range T1 [T2]]
```

## Options


<a href="" id="-util-n-"></a>**-util***\[n\]*  
Shows CPU utilization for *n* second intervals. The default is 1 second.

<a href="" id="-detail"></a>**-detail**  
Shows CPU samples bucketed by process and module if symbol decoding is not enabled, and by process and function name if symbol decoding is enabled.

<a href="" id="-ranget1--t2-"></a>**-range***T1 \[T2\]*  
Shows data between times *T1* and *T2*, both in microseconds. If *T2* is not present, the end of the trace is used instead.

<a href="" id="-freq"></a>**-freq**  
Shows constant sampling frequency zones in the trace.

## Remarks


If none of `-util`, `-detail`, or `-freq` is specified, the default is to show the CPU utilization report.

## Related topics


[Xperf Actions](xperf-actions.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20profile%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





