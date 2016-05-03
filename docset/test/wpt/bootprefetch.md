---
title: bootprefetch
description: bootprefetch
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 482e724b-bf10-4181-a77f-40e5fdc8db7e
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# bootprefetch


This action collates and summarizes events that are relevant to boot when you use the **On/Off Trace Capture** tool.

``` syntax
bootprefetch [-summary | -events [-pattern [-type name]] [-range T1 T2] | disktime]
```

## Options


<a href="" id="-xml"></a>**-xml**  
Shows the output in XML format. This currently works only with **-summary**.

<a href="" id="-summary"></a>**-summary**  
Shows the summary of boot prefetching.

<a href="" id="-events"></a>**-events**  
Dumps ReadyBoot events with earliness information.

<a href="" id="-pattern"></a>**-pattern**  
Used only in conjunction with **-events**. When dumping events, also dumps overlapping events.

<a href="" id="-typename"></a>**-type***name*  
Used only in conjunction with **-pattern**. Dumps only the specified type of events when dumping events in pattern view. *name* is one of the following values: "hit", "prefetch", "miss", "pend", or "write".

<a href="" id="-ranget1-t2"></a>**-range***T1 T2*  
Used only in conjunction with **-events**. Process ReadyBoot events completed between times *T1* and *T2*.

<a href="" id="-disktime"></a>**-disktime**  
Shows the disk time breakdown during boot prefetching.

## Remarks


If no report type is selected, the default is to show the summary.

## Related topics


[Xperf Actions](xperf-actions.md)

[Time and Timestamp Formats](time-and-timestamp-formats.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20bootprefetch%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





